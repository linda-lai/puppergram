require "rails_helper"

# # 1st Test
RSpec.describe Pupper, type: :model do
  it "has a name" do
    skip
  end
end

# # 2nd Test
RSpec.describe Pupper, type: :model do
    it "has a name" do # yep, you can totally use 'it'
      pupper = Pupper.create!(name: "My Awesome Pupper Name") # creating a new pupper 'instance'
      expect(pupper.name).to eq("My Awesome Pupper Name") # this is our expectation
    end
end

# 3rd Test
RSpec.describe Pupper, type: :model do
  it "has a name" do # yep, you can totally use 'it'
    pupper = Pupper.create!(name: "My Awesome Pupper Name") # creating a new pupper 'instance'
    second_pupper = pupper.create!(name: "My Second Pupper Name") # creating another new pupper 'instance'
    expect(second_pupper.name).to eq("My Second Pupper Name") # this is our expectation
  end
end