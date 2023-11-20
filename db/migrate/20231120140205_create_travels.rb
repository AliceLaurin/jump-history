class CreateTravels < ActiveRecord::Migration[7.1]
  def change
    create_table :travels do |t|
      t.string :name
      t.string :picture
      t.string :address
      t.string :period
      t.string :perilousness
      t.string :description
      t.integer :price
      t.integer :duration
      t.integer :number_of_travelers
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
