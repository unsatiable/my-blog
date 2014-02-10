class SessionsController < ApplicationController

  def new
    
  end

  def create
    user = User.find_by_email(params[:email])
    if user

      if user.authenticate(params[:password])
        session [:user_id] = user.id
        redirect_to root_path, notice: "Welcome back #{user.first_name}."
      else
        flash.now.alert = "Listen dumb dumb... wrong Email/Password!"
        rendor :new
      end
    else
      flash.now.alert = "Listen dumb dumb... wrong Email/Password!"
      render :new
    end
  end
end
