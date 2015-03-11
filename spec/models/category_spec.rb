require 'rails_helper'

RSpec.describe Category, type: :model do
  describe "Valid" do
  	it { expect(Category.new(name: "Ruby on Rails")).to be_valid }
  end

  describe "Invalid" do
  	it { expect(Category.new(name: "Love")).not_to be_valid }
  	it { expect(Category.new(name: "a"*51)).not_to be_valid }
    it { expect(Category.new(name: "")).not_to be_valid }
    it { expect(Category.new(name: "@Ruby on Rails 12")).not_to be_valid}
    it { expect(Category.new(name: "12Ruby on Rails 12")).not_to be_valid}
  end
end
