require 'rails_helper'

RSpec.describe Entry, type: :model do
  describe 'associations' do
    it 'should belong to a journal' do
      expect(Entry.reflect_on_association(:journal).macro).to eq(:belongs_to)
    end
  end

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:content) }
    it { should validate_presence_of(:published_at) }
  end

end
