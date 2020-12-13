class Delete < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :number_of_copies
  end
end
