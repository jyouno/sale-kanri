class CreateCounters < ActiveRecord::Migration[5.2]
  def change
    create_table :counters do |t|
      t.string :title, null: false
      t.datetime :day, null: false

      t.timestamps
    end
  end
end
