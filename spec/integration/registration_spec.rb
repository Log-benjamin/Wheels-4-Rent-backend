require 'swagger_helper'

describe 'Registration API' do
  path '/api/v1/registration' do
    post 'Creates A New User' do
      tags 'Registration'
      consumes 'application/json'
      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          email: { type: :string },
          password: { type: :string }
        },
        required: %w[name email password]
      }
      response '200', 'user created' do
        let(:user) { { name: 'Binyam', email: 'Binyam2023@gmail.com', password: 'zxcvbnm' } }
        run_test!
      end
      response '422', 'Unprocessable Content' do
        let(:user) { { name: 'jack' } }
        run_test!
      end
    end
  end
end
