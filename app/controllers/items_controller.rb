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
    dir = Rails.root.join('public', 'uploads', current_user.name)
    FileUtils::mkdir_p dir
  
    @item.download = File.join("uploads",current_user.name,uploaded_io.original_filename)
    @item.file = dir.join(uploaded_io.original_filename)
    @item.title = uploaded_io.original_filename
    @item.user_id = current_user.id
    @item.format = uploaded_io.content_type
    @item.preview = File.join("uploads", current_user.name, "previews", File.basename(@item.title)+".jpg")
    @item.preview_path = File.join(dir, "previews", File.basename(@item.title)+".jpg")
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
      params.require(:item).permit(:file)
    end
end
