class AddGenreColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :genre, :string
  end
end
