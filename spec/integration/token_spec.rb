require 'swagger_helper'

describe 'Session API' do
  path '/api/v1/token' do
    post 'Loges the Registred user to the main page' do
      tags 'Session'
      consumes 'application/json'
      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          password: { type: :string }
        },
        required: %w[name password]
      }

      response '200', 'Ok' do
        let(:user) { { name: 'Binyam', password: 'zxcvbnm' } }
        run_test!
      end

      response '404', 'Not Found' do
        let(:user) { { name: 'Bihksdfnyam', password: 'zxcvdfjlasbnm' } }
        run_test!
      end
    end
  end
end
