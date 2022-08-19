require 'rails_helper'

RSpec.describe Pet, type: :model do
  context 'validations' do
    it "ensures the presence of name" do
      pet = Pet.new({name: "", age: 2, adress: "", person_id: ""}).save
      expect(pet).to eq(false)
    end

    it "ensures that name has three or more characters" do
      pet = Pet.new({name: "j"}).save
      expect(pet).to eq(false)
    end
    
    it "ensures that valid name will be saved" do
      pet = Pet.new({name: "Stella", age: 5, adress: "bv. artigas, 555"})
      expect(pet).to be_valid
    end

    it "ensures that the age will be more than 1 month" do
      pet = Pet.new({name: "Bob", age: 0, adress: "bv. artigas, 444"})
      expect(pet).not_to be_valid
    end
    
  end
end
