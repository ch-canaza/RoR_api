require 'rails_helper'

RSpec.describe Article, type: :model do
  describe '#validations' do
    let(:article) { build(:article) }

    it 'test that factory is valid' do
      expect(article).to be_valid
    end

    it 'has an invalid title' do
      article.title = ''
      expect(article).not_to be_valid
    end

    it 'has an invalid content' do
      article.content = ''
      expect(article).not_to be_valid
    end

    it 'has an invalid slug' do
      article.slug = ''
      expect(article).not_to be_valid
    end

    it 'has a duplicated slug' do
      article1 = create(:article)
      expect(article1).to be_valid
      article2 = build(:article, slug: article1.slug)
      expect(article2).not_to be_valid
    end
  end
end
