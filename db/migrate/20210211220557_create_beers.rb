class CreateBeers < ActiveRecord::Migration[6.0]
  def change
    create_table :beers do |t|
      t.string :name
      t.integer :brewery_id
      t.integer :user_id
      t.integer :abv
      t.string :style
      t.string :image
      t.string :comment

      t.timestamps
    end
  end
end
