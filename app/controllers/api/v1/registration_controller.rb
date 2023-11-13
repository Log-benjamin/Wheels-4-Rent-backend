class Api::V1::RegistrationController < ApplicationController
  def create
    user = User.new(params.permit(:name, :email, :password))
    if user.save
      render json: {
        status: :created,
        user:
      }
    else
      :bad_request
    end
  end
end
