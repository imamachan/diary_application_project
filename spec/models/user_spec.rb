require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it 'is valid with valid attributes' do
      user = User.new(email: 'test@example.com', password: 'password', password_confirmation: 'password', name: 'Test User')
      expect(user).to be_valid
    end

    it 'is not valid without an email' do
      user = User.new(password: 'password', password_confirmation: 'password', name: 'Test User')
      expect(user).to_not be_valid
    end

    it 'is not valid without a password' do
      user = User.new(email: 'test@example.com', password_confirmation: 'password', name: 'Test User')
      expect(user).to_not be_valid
    end

    it 'is not valid without a password_confirmation' do
      user = User.new(email: 'test@example.com', password: 'password', name: 'Test User')
      expect(user).to_not be_valid
    end

    it 'is not valid without a name' do
      user = User.new(email: 'test@example.com', password: 'password', password_confirmation: 'password')
      expect(user).to_not be_valid
    end
  end
end
