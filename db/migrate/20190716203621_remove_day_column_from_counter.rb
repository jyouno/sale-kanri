class RemoveDayColumnFromCounter < ActiveRecord::Migration[5.2]
  def change
    remove_column :counters, :day, :string
  end
end
