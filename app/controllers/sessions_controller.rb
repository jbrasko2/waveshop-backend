class SessionsController < ApplicationController

  def login
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      render json: {user: UserSerializer.new(user), token: "test-token"}
    else
      render json: {error: "Username and password combination invalid"}
    end
  end

  def autologin
  end

end
