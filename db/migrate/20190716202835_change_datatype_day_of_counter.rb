class ChangeDatatypeDayOfCounter < ActiveRecord::Migration[5.2]
  def change
  end

  def up 
    change_column :counters, :day, :date
  end

  def down
    change_column :counters, :day, :datetime
  end
end
