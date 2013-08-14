class DropCompletionsTable < ActiveRecord::Migration
  def up
    drop_table :completions
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
