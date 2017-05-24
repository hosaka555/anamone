class CreateDbtests < ActiveRecord::Migration
  def change
    create_table :dbtests do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
