class UsersController < ApplicationController
  def create
    user = User.new(params.permit(:name, :email, :password))
    if user.save
      :ok
    else
      :bad_request
    end
  end
end
