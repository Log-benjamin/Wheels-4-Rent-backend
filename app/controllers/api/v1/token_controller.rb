class Api::V1::TokenController < ApplicationController
  def create
    user = User.find_by(name: params[:name])
    if user&.authenticate(params[:password])
      render json: {
        jwt: encode_token({ id: user.id, name: user.name, email: user.email, isAdmin: user.is_admin })
      }
    else
      head :not_found
    end
  end

  private

  def encode_token(payload = {})
    exp = 24.hours.from_now
    payload[:exp] = exp.to_i
    JWT.encode(payload, Rails.application.secrets.secret_key_base)
  end
end
