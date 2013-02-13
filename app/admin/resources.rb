ActiveAdmin.register Resource do
  filter :common_core, :collection => proc { CommmonCore.all }, :as => :select

end
