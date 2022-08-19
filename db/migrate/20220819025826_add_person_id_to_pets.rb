class AddPersonIdToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :person_id, :integer
  end
end
