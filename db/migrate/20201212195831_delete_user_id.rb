class DeleteUserId < ActiveRecord::Migration[6.0]
  def change
    remove_column :ratings, :user_id
  end
end
