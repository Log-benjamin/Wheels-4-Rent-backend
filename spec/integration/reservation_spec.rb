require 'swagger_helper'

describe 'Reservation API' do
  path '/api/v1/reservation' do
    get 'Renders All The Reservation Available In The DB' do
      tags 'Reservation'
      produces 'application/json'
      response '200', 'OK' do
        schema type: :object,
               properties: {
                 start_date: { type: :date },
                 end_date: { type: :date },
                 city: { type: :string },
                 days: { type: :integer },
                 user_id: { type: :bigint },
                 car_id: { type: :bigint }
               },
               required: %w[start_date end_date city days user_id car_id]
        run_test!
      end
    end
  end

  path '/api/v1/reservation' do
    post 'Create New Reservation' do
      tags 'Reservation'
      consumes 'application/json'
      parameter name: :reservation, in: :body, schema: {
        type: :object,
        properties: {
          start_date: { type: :date },
          end_date: { type: :date },
          city: { type: :string },
          days: { type: :integer },
          user_id: { type: :bigint },
          car_id: { type: :bigint }
        },
        required: %w[start_date end_date city days user_id car_id]
      }
      response '201', 'Reservation Confirmed' do
        run_test!
      end
      response '422', 'Unprocessable Content' do
        run_test!
      end
    end
  end

  path '/api/v1/reservation/{id}' do
    delete 'Cancel Reservation' do
      tags 'Reservation'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer

      response '200', :ok do
        schema type: :object,
               properties: {
                 id: { type: :integer },
                 start_date: { type: :date },
                 end_date: { type: :date },
                 city: { type: :string },
                 days: { type: :integer },
                 user_id: { type: :bigint },
                 car_id: { type: :bigint }
               },
               required: %w[id start_date end_date city days user_id car_id]
        run_test!
      end

      response '404', 'Not Found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end
