ActiveAdmin.register Resource do
  filter :common_core, :collection => proc { CommonCore.all }, :as => :select

end
