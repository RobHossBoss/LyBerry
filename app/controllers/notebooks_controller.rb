class NotebooksController < ApplicationController
  before_action :set_notebook, only: [:show, :edit, :update, :destroy]

  # GET /notebooks
  # GET /notebooks.json
  def index
    @notebooks = Notebook.all
  end

  # GET /notebooks/1
  # GET /notebooks/1.json
  def show
    @notes = Note.where("notebook_id = ?", @notebook.id )
  end

  # GET /notebooks/new
  def new
    @notebook = Notebook.new
    @shelf_options = []
    Shelf.where("user_id = ?", current_user.id).each do |shelf|
      @shelf_options.push([shelf.title, shelf.id])
    end
  end

  # GET /notebooks/1/edit
  def edit
  end

  # POST /notebooks
  # POST /notebooks.json
  def create
    @notebook = Notebook.new(notebook_params)
    @notebook.user_id = current_user.id
    #@notebook.cover =
    respond_to do |format|
      if @notebook.save
        format.html { redirect_to "/my-library", notice: 'Notebook was successfully created.' }
        format.json { render :show, status: :created, location: @notebook }
      else
        format.html { render :new }
        format.json { render json: @notebook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notebooks/1
  # PATCH/PUT /notebooks/1.json
  def update
    respond_to do |format|
      if @notebook.update(notebook_params)
        format.html { redirect_to @notebook, notice: 'Notebook was successfully updated.' }
        format.json { render :show, status: :ok, location: @notebook }
      else
        format.html { render :edit }
        format.json { render json: @notebook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notebooks/1
  # DELETE /notebooks/1.json
  def destroy
    @notebook.destroy
    respond_to do |format|
      format.html { redirect_to notebooks_url, notice: 'Notebook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notebook
      @notebook = Notebook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notebook_params
      params.require(:notebook).permit(:title, :shelf_id)
    end
end
