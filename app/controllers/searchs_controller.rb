class SearchsController < ApplicationController
  
  def index
    @range = params[:range]
    search = params[:search]
    word = params[:word]
    

    if @range == '1'
      @user = User.search(search,word)
      @word = word
    else
      @book = Book.search(search,word)
      @word = word
    end
  end
end
