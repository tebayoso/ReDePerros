class CreateAdvertises < ActiveRecord::Migration
  def change
    create_table :advertises do |t|
      t.string :name
      t.string :comments
      t.string :status
      t.string :color1
      t.string :color2
      t.string :race
      t.string :street1
      t.string :street2
      t.string :size
      t.datetime :when
      t.string :gender
      t.integer :age

      t.timestamps
    end
  end
end
