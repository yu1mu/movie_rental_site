class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.references :movie, null: false, foreign_key: true
      t.string :rating

      t.timestamps
    end
  end
end
