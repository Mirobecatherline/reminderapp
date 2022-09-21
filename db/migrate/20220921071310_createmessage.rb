class Createmessage < ActiveRecord::Migration[6.1]
  def change
    create_table :messages, if_not_exists: true do |t|
      t.integer :short_code
      t.integer :phone_no
      t.string      :message
      t.string      :message_type
      t.datetime  :message_time
    end
  end
end
