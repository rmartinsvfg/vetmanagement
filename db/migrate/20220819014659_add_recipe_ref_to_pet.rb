class AddRecipeRefToPet < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :recipe, :reference
  end
end
