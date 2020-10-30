class DashboardController < ApplicationController
  def index
    @book = current_user.books.includes(:comments)
    @exchange = Exchange.all
    @comment = Comment.where(user_id:current_user.id)
    @comment_req = Comment.where(book_id: @book.each {|book| book.id}, status: false)
  end
end
