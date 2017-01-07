class SiteController < ApplicationController
  def index
    render 'index'
  end
  def library
    if logged_in?
      @shelves = Shelf.where("user_id = ?", current_user.id)
      @items = Item.where("user_id = ?", current_user.id)
      @notes = Note.where("user_id = ?", current_user.id)

      render 'library'
    else
      redirect_to 'login'
    end
  end
end
