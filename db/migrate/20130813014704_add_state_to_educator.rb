class AddStateToEducator < ActiveRecord::Migration
  def change
    add_column :educators, :state, :string
  end
end
