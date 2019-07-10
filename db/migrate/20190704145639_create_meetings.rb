class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.string :name, null: false
      t.datetime :start_time, null: false
      t.datetime :end_time

      t.timestamps
    end
  end
end
