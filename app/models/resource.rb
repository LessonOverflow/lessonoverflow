class Resource < ActiveRecord::Base

  scope :tagged?, -> { where("common_core IS NOT NULL")  }

  # http://www.lrmi.net/the-specification
  attr_accessible :author, :common_core, :description, :educational_use, :in_language, :intended_end_use_role, :interactivity_type, :is_based_on_url, :learning_resource_type, :location, :publisher_id, :time_required, :title, :typical_age_range, :use_rights_url
  has_many :common_cores, :through => :tagged_resources

end
