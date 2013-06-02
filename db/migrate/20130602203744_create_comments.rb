class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text
      t.integer :vote
      t.integer :number_id

      t.timestamps
    end
  end
end
