class TaggedResource < ActiveRecord::Base
  belongs_to :resource
  belongs_to :common_core
  # attr_accessible :title, :body
end
