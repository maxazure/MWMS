class AdminController < ApplicationController
  def login
    if request.post?
      user= User.authenticate(params[:name], params[:password])
      if user
        session[:user_id] = user.id
        redirect_to(:controller=>"admin/subjects",:action=>"index")
        flash[:notic] = "登录成功!"
      else
        flash.now[:notice] = "Invalid user/password combination"
      end
    end  
  end

  def logout
    session[:user_id] = nil
    flash[:notic] = "已经logout"
    redirect_to(:controller=>"admin",:action=>"login")
  end

  def index
    redirect_to(:controller=>"admin/subjects",:action=>"index")
  end

end
