require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
    user = FactoryGirl.create(:user)
    expect(user).to be_valid
  end

  it 'is valid with all required fields' do
    user = FactoryGirl.create(:user)
    expect(user).to be_valid
  end

  it "is invalid without email" do
    user = FactoryGirl.create(:user)
    user.email = nil
    expect(user).to_not be_valid
  end

  it 'is invalid without a provider' do
    user = FactoryGirl.create(:user)
    user.provider = nil
    expect(user).to_not be_valid
  end

  it 'is invalid without a uid' do
    user = FactoryGirl.create(:user)
    user.uid = nil
    expect(user).to_not be_valid
  end

  it 'is invalid without a pasword' do
    user = FactoryGirl.create(:user)
    user.password = nil
    expect(user).to_not be_valid
    end
end
