class RenameTypeColumnToRequest < ActiveRecord::Migration
  def change
    rename_column :requests, :type, :kind
  end
end
