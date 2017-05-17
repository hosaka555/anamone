class MypageController < ApplicationController
  def page
    # @user = User.find(params[:current_user])
     @user = current_user
     @requests = Request.all
  end

  def new
  end
end
