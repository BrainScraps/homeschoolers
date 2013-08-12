class CreateEducatorsGettogethersTable < ActiveRecord::Migration
    def up
      create_table :educators_gettogethers, :id => false do |t|
        t.integer :educator_id
        t.integer :getogether_id
      end
    end

    def down
      drop_table :educators_gettogethers
    end
end