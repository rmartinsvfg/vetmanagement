class AddPetRefToPerson < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :pet, :reference
  end
end
