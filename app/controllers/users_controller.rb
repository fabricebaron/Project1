class UsersController < ApplicationController

  def index
    if @current_user.try(:role) != "admin"
      flash[:error] = "Accès interdit"
      return redirect_to request.referrer || "/"
    end
    @users = User.all
  end

  def home
  	if session[:user_id]
      @current_user = User.find(session[:user_id])
 	end
 	set_current_user
  end

  def login
  		 
  end
	
  def logout
    session[:user_id] = nil
    flash[:info] = "Vous êtes maintenant déconnecté."
    redirect_to "/"
  end

  def check
    @current_user = User.where(name: params[:name], password: params[:password]).first
    if @current_user
      session[:user_id] = @current_user.id
      flash[:info] = "Vous êtes maintenant connecté"
      redirect_to "/"
    else
      session[:user_id] = nil
      flash[:info] = "Échec de la connexion"
      redirect_to "login"
    end
  end
end