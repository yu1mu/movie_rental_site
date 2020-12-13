class CreateActors < ActiveRecord::Migration[6.0]
  def change
    create_table :actors do |t|
      t.string :actor_name
      t.string :actor_gender
      t.integer :age

      t.timestamps
    end
  end
end
