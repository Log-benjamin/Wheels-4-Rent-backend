require 'swagger_helper'

describe 'Cars API' do
  path '/api/v1/cars' do
    get 'Renders All The Cars Available In The DB' do
      tags 'Cars'
      produces 'application/json'

      response '200', 'oK' do
        schema type: :object,
               properties: {
                 name: { type: :string },
                 model: { type: :string },
                 description: { type: :string },
                 image: { type: :string },
                 price_per_day: { type: :integer },
                 seating_capacity: { type: :integer }
               },
               required: %w[name model description image price_per_day seating_capacity]
        run_test!
      end
    end
  end

  path '/api/v1/cars/{id}' do
    get 'Retrieves Detail Information Of A Specific Car' do
      tags 'Cars'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer

      response '200', :ok do
        schema type: :object,
               properties: {
                 id: { type: :integer },
                 name: { type: :string },
                 model: { type: :string },
                 description: { type: :string },
                 image: { type: :string },
                 price_per_day: { type: :integer },
                 seating_capacity: { type: :integer }
               },
               required: %w[id name model description image price_per_day seating_capacity]

        run_test!
      end

      response '404', 'Not Found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end

  path '/api/v1/cars' do
    post 'Add Car To DB' do
      tags 'Cars'
      consumes 'application/json'
      parameter name: :car, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          model: { type: :string },
          description: { type: :string },
          image: { type: :string },
          price_per_day: { type: :integer },
          seating_capacity: { type: :integer }
        },
        required: %w[name model description image price_per_day seating_capacity]
      }
      response '200', 'car added' do
        let(:user) { admin }
        run_test!
      end
      response '422', 'Unprocessable Content' do
        run_test!
      end
    end
  end

  path '/api/v1/cars/{id}' do
    delete 'Remove Car From DB' do
      tags 'Cars'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer

      response '200', :ok do
        schema type: :object,
               properties: {
                 id: { type: :integer },
                 name: { type: :string },
                 model: { type: :string },
                 description: { type: :string },
                 image: { type: :string },
                 price_per_day: { type: :integer },
                 seating_capacity: { type: :integer }
               },
               required: %w[id name model description image price_per_day seating_capacity]

        run_test!
      end

      response '404', 'Not Found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end
