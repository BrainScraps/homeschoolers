class AddForumsToEducator < ActiveRecord::Migration
  def change

    add_column :educators, :forums, :string
  end
end
