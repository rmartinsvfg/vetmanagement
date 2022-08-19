class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :subject
      t.string :indications

      t.timestamps
    end
  end
end
