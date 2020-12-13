class ChangeRatingToBeDecimalInRatings < ActiveRecord::Migration[6.0]
  def change 
    change_column :ratings, :rating, :decimal
  end
end
