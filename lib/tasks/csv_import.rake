#rake csv:import_stuff

namespace :csv do

  desc "Import CSV Data"
  task :import_common_core => :environment do

    require 'csv'

    csv_file_path = 'db/CC_math_standards.csv'

    CSV.foreach(csv_file_path) do |row|
      #ID,Category,Sub Category,State Standard
      row = CommonCore.create!({
        :core_id        => row[0],
        :category       => row[1],
        :sub_category   => row[2],
        :state_standard => row[3]
      })
    end
  end
end