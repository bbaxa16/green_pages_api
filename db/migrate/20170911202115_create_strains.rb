class CreateStrains < ActiveRecord::Migration[5.1]
  def change
    create_table :strains do |t|
      t.string :name
      t.string :type
      t.string :img
      t.integer :fav

      t.timestamps
    end
  end
end
