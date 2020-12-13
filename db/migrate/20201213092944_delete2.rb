class Delete2 < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :rating
  end
end
