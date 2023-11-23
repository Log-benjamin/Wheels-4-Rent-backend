require 'rails_helper'

RSpec.describe 'Api::V1::RegistrationController', type: :request do
  describe 'POST #create' do
    let(:user) { create(:user, name: 'benopia', email: 'ben@microverse.com', password: 'zxcvbnm') }

    it 'returns status 200' do
      post '/api/v1/token', params: { name: user.name, email: user.email, password: user.password }
      expect(response).to have_http_status(200) # Assuming success status
    end

    it 'creates a new user' do
      expect do
        post '/api/v1/registration', params: { name: user.name, email: user.email, password: user.password }
      end.to change(User, :count).by(1)
    end
  end
end
