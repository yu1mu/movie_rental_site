class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :movie_name
      t.text :movie_description
      t.string :movie_type
      t.decimal :rating
      t.string :number_of_copies

      t.timestamps
    end
  end
end
