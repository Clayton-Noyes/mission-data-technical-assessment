require 'rails_helper'

RSpec.describe Journal, type: :model do
  describe 'associations' do
    it 'should have many entries' do
      expect(Journal.reflect_on_association(:entries).macro).to eq(:has_many)
    end
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:subtitle) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:first_publishing_date) }
    it { is_expected.to validate_presence_of(:publisher) }
  end
  
end

