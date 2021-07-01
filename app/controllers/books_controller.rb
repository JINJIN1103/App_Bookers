class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all

  end

  def create
    @books = Book.all
    @book = Book.new(book_params)
    # 1. データをデータベースに保存するためのsaveメソッド実行
   if @book.save
     flash[:notice] = "Book was successfully created."
     redirect_to book_path(@book.id)
   else
     render:index
   end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    flash[:notice] = "Book was successfully destroyed."
   redirect_to books_path
  end

  #詳細画面
  def show
    @book = Book.find(params[:id])
  end

  def new
  end

  #編集画面
  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
        flash[:notice] = "Book was successfully updated."
        redirect_to book_path(@book.id)
    else
        render:edit
    end
  end

  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
