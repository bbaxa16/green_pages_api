class RemovingFavoritesColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :favorites
  end
end
