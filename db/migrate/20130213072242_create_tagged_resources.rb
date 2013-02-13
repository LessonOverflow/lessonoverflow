class CreateTaggedResources < ActiveRecord::Migration
  def change
    create_table :tagged_resources do |t|
      t.references :resource
      t.references :common_core

      t.timestamps
    end
    add_index :tagged_resources, :resource_id
    add_index :tagged_resources, :common_core_id
  end
end
