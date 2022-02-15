class BooksController < ApplicationController



  def create
    book = Book.new(book_params)

    book.save

    # redirect_to '/books/index'
  end

  def index
    @books = Book.all#Bookのtitle,bodyが
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])#ここの構成復習！！！！！！
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end
  
  def destroy
    book = Book.find(params[:id])#ルーティング→コントローラ→ビュー
    book.destroy
    redirect_to books_path#移動先のルーティングPrefixを参照。urlも
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end

