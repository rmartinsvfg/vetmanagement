require 'rails_helper'

RSpec.describe Recipe, type: :model do
  context 'validations' do
    it "ensures the presence of subject and indications" do
      recipe = Recipe.new({subject: "", indications: ""}).save
      expect(recipe).to eq(false)
    end

   
  end
end
