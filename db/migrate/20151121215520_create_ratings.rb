class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.references :rating, index: true

      t.references: :rateable, polymorphic: true, index: true
      t.timestamps null: false
    end
    add_foreign_key :ratings
  end
end
