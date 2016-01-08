class ChangeMediaColumnNameTypeToMediatype < ActiveRecord::Migration
  def change
   	rename_column :media, :type, :mediatype
  end
end

