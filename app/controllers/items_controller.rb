class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    @items = Item.all
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
    @shelf_options = []
    Shelf.where("user_id = ?", current_user.id).each do |shelf|
      @shelf_options.push([shelf.title, shelf.id])
    end
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    require 'fileutils'
    @item = Item.new(item_params)
    uploaded_io = params[:item][:file]
    
    FileUtils::mkdir_p current_user.folder_path
  
    @item.download = File.join(current_user.folder_download,uploaded_io.original_filename)
    @item.file = File.join(current_user.folder_path, uploaded_io.original_filename)
    @item.title = uploaded_io.original_filename
    @item.user_id = current_user.id
    @item.format = uploaded_io.content_type
    @item.shelf_id = params[:item][:shelf_id]
    @item.preview = File.join(current_user.folder_download, "previews", File.basename(@item.title)+".jpg")
    @item.preview_path = File.join(current_user.folder_path, "previews", File.basename(@item.title)+".jpg")
    File.open(@item.file, 'wb') do |file|
      file.write(uploaded_io.read)
    end
    @item.get_preview(200)
    
    respond_to do |format|
      if @item.save
        format.html { redirect_to "/my-library", notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to "/my-library", notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to "/my-library", notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:file, :shelf_id)
    end
end
