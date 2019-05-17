class AddGoogleIdToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :googleId, :string
  end
end
