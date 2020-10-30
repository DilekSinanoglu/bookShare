class WelcomeController < ApplicationController
  def index
    if current_user.present?
        redirect_to books_url
    else
        @books = Book.where(shareable: true)
    end
  end
end
