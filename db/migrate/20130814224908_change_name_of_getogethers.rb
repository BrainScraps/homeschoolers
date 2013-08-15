class ChangeNameOfGetogethers < ActiveRecord::Migration
  def up

    rename_column :educators_gettogethers, :getogether_id, :gettogether_id
  end

  def down
  end
end
