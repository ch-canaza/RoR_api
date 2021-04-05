require 'rails_helper'

RSpec.describe Article, type: :model do
  describe '#alidations' do
    let(:article) { build(:article) }

    it 'test taht factory is valid' do
      expect(article).to be_valid
    end

    it 'has an invalid title' do
      article.title = ''
      expect(article).not_to be_valid
      expect(article.errors[:title]).to include('can not be blank')
    end
  end
end
