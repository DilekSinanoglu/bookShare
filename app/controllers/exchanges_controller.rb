class ExchangesController < ApplicationController
  def new 
    @book = Book.find(params[:book_id])
    @user = User.find_by_id(@book.user_id)
    @books = current_user.books.where(tradeable: true)
  end

  def create
    @book = Book.find(params[:book_id])
    @exchange = @book.exchanges.build(exchange_params)
    if @exchange.save
      redirect_to dashboard_index_url
    else
      render 'new'
    end
  end

  def edit
    @exchange = Exchange.find(params[:id])
    @user = User.find(@exchange.user_id)
    @book = Book.find(@exchange.offer_book_id)

  end

  def approve
    @exchange = Exchange.find(params[:id])
    @exchange.update_attributes(:trade_status => 1)
    redirect_to dashboard_index_path
  end

  def deny
    @exchange = Exchange.find(params[:id])
    @exchange.update_attributes(:trade_status => -1)
    redirect_to dashboard_index_path
  end

  private
  def exchange_params
    params.require(:exchange).merge(user_id: current_user.id).permit(:user_id, :offer_book_id)
  end

end
