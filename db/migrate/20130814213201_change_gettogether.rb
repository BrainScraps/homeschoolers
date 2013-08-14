class ChangeGettogether < ActiveRecord::Migration
  def up

    add_column :gettogethers, :address, :string
    add_column :gettogethers, :city, :string
    add_column :gettogethers, :state, :string
    rename_column :gettogethers, :lat, :latitude
    rename_column :gettogethers, :long, :longitude

    

  end

  def down
  end
end
