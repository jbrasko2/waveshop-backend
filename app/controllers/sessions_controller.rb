class SessionsController < ApplicationController

  def login
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      token = encode_token(user.id)
      render json: {user: UserSerializer.new(user), token: token}
    else
      render json: {error: "Username and password combination invalid"}
    end
  end

  def autologin
    render json: {user: UserSerializer.new(logged_in_user)}
  end

end
