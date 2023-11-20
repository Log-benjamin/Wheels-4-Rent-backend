class Api::V1::RegistrationController < ApplicationController
  # POST /api/v1/registration
  def create
    user = User.new(params.permit(:name, :email, :password))
    if user.save
      render json: {
        status: :created,
        user:
      }
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end
end
