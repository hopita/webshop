class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :sumary
      t.text :description
      t.integer :rating

      t.timestamps
    end
  end
end
