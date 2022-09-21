class Createevent < ActiveRecord::Migration[6.1]
  def change
    create_table :events, if_not_exists: true do |t|
      t.datetime      :reminder_time
      t.string      :task_or_meeting
      t.integer :phone_no
      t.timestamps 
    end
  end
end
