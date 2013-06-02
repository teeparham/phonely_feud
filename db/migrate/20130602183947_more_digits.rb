class MoreDigits < ActiveRecord::Migration
  def up
    change_column :numbers, :digits, :bigint, null: false
  end

  def down
    change_column :numbers, :digits, :integer
  end
end
