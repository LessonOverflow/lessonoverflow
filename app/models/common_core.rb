class CommonCore < ActiveRecord::Base
  attr_accessible :category, :core_id, :state_standard, :sub_category
   # :author, :common_core, :description, :educational_use, :in_language, :intended_end_use_role, :interactivity_type, :is_based_on_url, :learning_resource_type, :location, :time_required, :title, :typical_age_range, :use_rights_url
end
