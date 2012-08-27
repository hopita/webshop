class SessionsController < ApplicationController
  before_filter :login_required, :only => [:logout]

  def new

  end

  def create

    @user = User.find_by_mail(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to products_path
    else
      flash.now.alert ='Email y contrasena erroneos'
       render :new
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logout"

  end
end
