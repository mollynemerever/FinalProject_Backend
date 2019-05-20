class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :userfollowerrelationships, :follower_id, :following_id
  end
end
