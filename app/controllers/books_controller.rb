class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
    # インスタンス変数bookを作成.newをつけることでこの画面で空のモデルを作成→インスタンス変数に代入し→viewで扱えるようになる
    # つまりこのコントローラ＋アクションに紐付いているviewで使用するだけのパーツなのでindexアクションに色々追加しても大丈夫なはず
    #（投稿機能を追加しようとしている）
  end

  def create
    @books = Book.all
    @book = Book.new(book_params)
    # 1. データをデータベースに保存するためのsaveメソッド実行
   if @book.save
     flash[:notice] = "Book was successfully created."
     redirect_to book_show_path(@book.id)
   else
     render:index
   end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    flash[:notice] = "Book was successfully destroyed.."
   redirect_to book_index_path
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
        redirect_to book_show_path(@book.id)#showのインスタンス変数を呼び出してる？
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
