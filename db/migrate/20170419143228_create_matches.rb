class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :user_id #BさんのIDを保存
      t.integer :request_id #どの案件を申し込んだのか

      t.timestamps null: false
      remove_timestamps
    end
  end
end
