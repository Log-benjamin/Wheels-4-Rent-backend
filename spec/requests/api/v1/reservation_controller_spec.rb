require 'rails_helper'

RSpec.describe 'Api::V1::ReservationController', type: :request do
  describe 'GET /index' do
    it 'returns a success response' do
      get '/api/v1/cars'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      let(:valid_attributes) { { reservation: attributes_for(:reservation) } }

      it 'creates a new reservation' do
        expect do
          post '/api/v1/reservation', params: valid_attributes
        end.to change(Reservation, :count).by(1)
      end

      it 'returns a success response' do
        post '/api/v1/reservation', params: valid_attributes
        expect(response).to have_http_status(:success)
      end
    end
  end

  describe 'DELETE /destroy' do
    let!(:reservation) { create(:reservation) }

    it 'destroys the requested car' do
      expect do
        delete "/api/v1/reservation/#{reservation.id}"
      end.to change(Reservation, :count).by(-1)
    end

    it 'returns a success response' do
      delete "/api/v1/reservation/#{reservation.id}"
      expect(response).to have_http_status(:success)
    end
  end
end
