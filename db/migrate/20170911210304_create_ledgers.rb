class CreateLedgers < ActiveRecord::Migration[5.1]
  def change
    create_table :ledgers do |t|
      t.references :user, foreign_key: true
      t.references :strain, foreign_key: true
      t.integer :qty

      t.timestamps
    end
  end
end
