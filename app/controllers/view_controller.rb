class ViewController < ApplicationController
  def index
    #request = Request.find(params[:id])
    @request = Request.find(params[:id])
    @request.flag = 0
    @request.save
    #match = Match.new(:user_id => current_user.id, :request_id => request.id)
    #match = Match.find_by(request_id: 1)
    @match = Match.where(:request_id => 1).last
    @match.user_id = 0
    @match.save
    #redirect_to "view#show"　
   redirect_to view_url(request.id)
  end

  def show
    @request = Request.find(params[:id])
    #@request.flag = params[:request][:flag]
   
    #@match = Match.find(request_id: request.id)
    
    if (@request.flag == 1)
    
       @match = Match.where(:request_id => @request.id).last
      @user = User.find(@match.user_id)
    end
  end


  def update
  request = Request.find(params[:id])
  request.flag = 1
  request.save
  match = Match.new(:user_id => current_user.id, :request_id => request.id)
  match.save
  #redirect_to "view#show"　
  redirect_to view_url(request.id)
  end

  def cancel
    @request = Request.find(params[:id])
    @request.flag = 0
    @request.save
    #match = Match.new(:user_id => current_user.id, :request_id => request.id)
    #match = Match.find_by(request_id: 1)
    @match = Match.where(:request_id => 1).last
    @match.user_id = 0
    @match.save
    #redirect_to "view#show"　
   redirect_to view_url(@request.id)
  end

end
