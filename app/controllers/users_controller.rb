class UsersController < ApplicationController
  
  def show
    @user = current_user
    @books = @user.books.reserved
    @purchased = @user.books.purchased
  end

end
