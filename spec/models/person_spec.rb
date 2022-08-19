require 'rails_helper'

RSpec.describe Person, type: :model do
  context 'validations' do
    it "ensures the presence of name" do
      person = Person.new({name: "", doc: "63794155", age: 18}).save
      expect(person).to eq(false)
    end

    it "ensures that name has three or more characters" do
      person = Person.new({name: "", doc: "63794155", age: 19}).save
      expect(person).to eq(false)
    end
    
    it "ensures that valid name will be saved" do
      person = Person.new({name: "Stella", doc: "63794155", age: 22})
      expect(person).to be_valid
    end

    it "ensures that the age will be more than 18 years" do
      person = Person.new({name: "Julie", doc: "63794155", age: 15}).save
      expect(person).to eq(false)
    end
    
  end
end