class UsersController < ApplicationController

    def create
        user = User.create(user_params)
        render json: {user: UserSerializer.new(user), token: "test-token"}
    end

    private

    def user_params
        params.permit(:username, :password)
    end

end
