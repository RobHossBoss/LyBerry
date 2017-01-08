class SiteController < ApplicationController
  def index
    if logged_in?
      redirect_to "/my-library"
    else
      render "index"
    end
  end
  def library
    if logged_in?
      @shelves = Shelf.where("user_id = ?", current_user.id)
      @items = Item.where("user_id = ?", current_user.id)
      @notes = Note.where("user_id = ?", current_user.id)

      render 'library'
    else
      redirect_to 'index'
    end
  end
end
