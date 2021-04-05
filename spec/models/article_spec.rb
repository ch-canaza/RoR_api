require 'rails_helper'

RSpec.describe Article, type: :model do
  it 'test taht factory is valid' do
    article = build(:article)
    expect(article).to be_valid
  end
end
