class AddPedigreeToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :pedigree, :string
  end
end
