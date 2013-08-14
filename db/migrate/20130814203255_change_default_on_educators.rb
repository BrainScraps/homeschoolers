class ChangeDefaultOnEducators < ActiveRecord::Migration
  def up
    change_column_default :educators, :forem_admin, true
  end

  def down
  end
end
