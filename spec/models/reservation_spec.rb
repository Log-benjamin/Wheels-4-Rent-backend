require 'rails_helper'

RSpec.describe Reservation, type: :model do
  describe 'Reservation validations' do
    it { should validate_presence_of(:start_date) }
    it { should validate_presence_of(:end_date) }
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:days) }
    it { should validate_presence_of(:car_id) }
  end
end
