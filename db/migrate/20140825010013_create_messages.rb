class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.string :text
      t.boolean :readed, default: false

      t.timestamps
    end
  end
end
