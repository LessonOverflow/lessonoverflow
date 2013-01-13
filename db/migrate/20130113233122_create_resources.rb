class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :author
      t.string :common_core
      t.text :description
      t.string :educational_use
      t.string :in_language
      t.string :intended_end_use_role
      t.string :interactivity_type
      t.string :is_based_on_url
      t.string :learning_resource_type
      t.string :location
      t.string :publisher_id
      t.string :time_required
      t.string :title
      t.string :typical_age_range
      t.string :use_rights_url

      t.timestamps
    end
  end
end
