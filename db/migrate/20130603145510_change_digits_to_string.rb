class ChangeDigitsToString < ActiveRecord::Migration
  def change
    change_column :numbers, :digits, :string, null: false
  end
end
