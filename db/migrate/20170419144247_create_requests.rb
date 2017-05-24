class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.integer :type
      t.string :title
      t.string :content
      t.integer :money
      t.string :image
      t.integer :flag

      t.timestamps null: false
    end
  end
end
