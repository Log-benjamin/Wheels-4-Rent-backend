require 'rails_helper'

RSpec.describe 'Api::V1::TokenControllers', type: :request do
  describe 'POST #create' do
    let(:user) { create(:user, name: 'test_user', password: 'password') }

    context 'with valid credentials' do
      it 'returns a JWT token' do
        post '/api/v1/token', params: { name: user.name, password: 'password' }
        expect(response).to have_http_status(200) # Assuming success status
        expect(JSON.parse(response.body)).to have_key('jwt')
      end
    end

    context 'with invalid credentials' do
      it 'returns a 404 status' do
        post '/api/v1/token', params: { name: user.name, password: 'wrong_password' }
        expect(response).to have_http_status(404)
      end
    end
  end
end
