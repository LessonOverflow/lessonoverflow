class CreateCommonCores < ActiveRecord::Migration
  def change
    create_table :common_cores do |t|
      t.string :category
      t.string :core_id
      t.string :state_standard
      t.string :sub_category

      t.timestamps
    end
  end
end
