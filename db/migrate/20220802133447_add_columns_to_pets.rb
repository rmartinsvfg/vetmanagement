class AddColumnsToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :age, :integer  
    add_column :pets, :adress, :string  
  end
end
