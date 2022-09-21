class Createusers < ActiveRecord::Migration[6.1]
  def change
    create_table :users, if_not_exists: true do |t|
      t.string      :name
      t.integer :phone_no
      t.timestamps 
    end
  end
end
