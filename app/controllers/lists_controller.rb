class ListsController < ApplicationController
  def new
    #Viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成する。
    @list = List.new
  end


def create
  # 1.&2. データを受け取り新規登録するためのインスタンスを作成
  list = List.new(list_parames)
  #3.データをデータベースに保存するためのsaveメソッド実行
  list.save
  #4,トップ画面へリダイレクト
  redirect_to '/top'
end

  def index
  end

  def show
  end

  def edit
  end

  private

  #ストロングパラメータ
  def list_parames
    params.require(:list).permit(:title, :body)
  end
end
