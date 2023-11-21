require 'rails_helper'

RSpec.describe Car, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:model) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:image) }
    it { should validate_presence_of(:seating_capacity) }
    it { should validate_numericality_of(:seating_capacity).is_greater_than(0) }
    it { should validate_presence_of(:price_per_day) }
    it { should validate_numericality_of(:price_per_day).is_greater_than(0) }
  end

  describe 'associations' do
    it { should have_many(:reservations).dependent(:destroy) }
  end
end
