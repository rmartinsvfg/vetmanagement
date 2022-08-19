class AddPetIdToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :pet_id, :integer
  end
end
