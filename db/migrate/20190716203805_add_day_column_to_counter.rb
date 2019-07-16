class AddDayColumnToCounter < ActiveRecord::Migration[5.2]
  def change
    add_column :counters, :day, :date, null: false 
  end
end
