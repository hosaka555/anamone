class RequestController < ApplicationController
  


    
  def create
    @user = current_user
    
    @request = Request.new #新しくDBの中の  requestにデータを入れますよ
    @request.user_id  = @user.id
    
    #@request = @user.requests.build
    @request.kind = params[:request][:kind]
    
    #DBにデータを送る
    @request.title = params[:request][:title]
    @request.content = params[:request][:content]
    
    @request.money = params[:request][:money]
    @request.image = params[:request][:image]
    
    @request.flag = 0
    #DBに保存する
    #ここでエラーが出るのはテーブルにPrimary Keyを指定していない可能性が高い
    @request.save
    redirect_to "/home/index"
  end
end
