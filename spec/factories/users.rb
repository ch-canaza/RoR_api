FactoryBot.define do
  factory :user do
    sequence(:login) { |n| "MyUser #{n}" }
    name { "MyUser" }
    url { "http://example.com" }
    avatar_url { "http://example.com/avatar" }
    provider { "github" }
  end
end
