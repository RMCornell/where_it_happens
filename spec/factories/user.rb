FactoryGirl.define do
  factory :user do |f|
    f.email "bob@something.com"
    f.provider "twitter"
    f.uid "1234"
    f.password "6789"
  end
end