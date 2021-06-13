class BooksController < ApplicationController
  def index
    @book = Book.new
    # インスタンス変数bookを作成　Bookモデルに.newをつけることで　空のモデルを作成し→インスタンス変数に代入し→viewで扱えるようになる
  end

  def create
    # １. データを新規登録するためのインスタンス作成
    book = Book.new(book_params)
    # ２. データをデータベースに保存するためのsaveメソッド実行
    book.save
    # ３. トップ画面へリダイレクト
    redirect_to '/books'
  end

  def show
  end

  def new
  end

  def edit
  end

  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
