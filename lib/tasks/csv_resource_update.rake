#rake csv:import_stuff

namespace :csv do

  desc "Import CSV Data"
  task :update_common_core => :environment do

    require 'csv'

    csv_file_path = 'db/gary_s3_lessonOverFlow_geometry.csv'
    i = 0
    headers =  [:id, :author, :typical_age_range, :common_core, :description, :educational_use, :in_language, :intended_end_use_role, :interactivity_type, :is_based_on_url, :learning_resource_type, :location, :publisher_id, :time_required, :title, :use_rights_url]
    sample_row = []

    CSV.foreach(csv_file_path) do |row|
      if i == 0
        # headers = row
      else
        sample_row = row
        # puts row
        new_row = Hash[headers.zip row]
        puts new_row
        # new_row.delete(:updated_at)
        # new_row.delete(:created_at)
        id = new_row[:id].to_i
        if Resource.exists? id
          resource = Resource.find id
          new_row.delete(:id)
          resource.update_attributes new_row
          puts "updated #{id} with #{new_row}"
        else
          new_row.delete(:id)
          r = Resource.create new_row
          puts "couldnt find row #{id} ... creating #{r.inspect}"
        end
      end
      i +=1
      #ID,Category,Sub Category,State Standard
      # row = CommonCore.update!({
      #   :core_id        => row[0],
      #   :category       => row[1],
      #   :sub_category   => row[2],
      #   :state_standard => row[3]
      # })
    end
  end
end