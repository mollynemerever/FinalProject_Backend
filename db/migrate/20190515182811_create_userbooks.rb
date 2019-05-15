class CreateUserbooks < ActiveRecord::Migration[5.2]
  def change
    create_table :userbooks do |t|
      t.integer :user_id
      t.integer :book_id
      t.boolean :read_status
      t.timestamps
    end
  end
end
