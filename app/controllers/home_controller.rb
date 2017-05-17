class HomeController < ApplicationController
  def index
    @user = current_user
    @my = @user
    @requests = Request.all
     
     
  end

 
end
