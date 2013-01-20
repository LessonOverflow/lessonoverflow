# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




learning_resource_type = "video"
source_url = "https://www.khanacademy.org/math/arithmetic"
resources = [
  {:url => "https://www.youtube.com/watch?feature=player_embedded&v=AuX7nPBqDts",:title => "addition and subtration"},
  {:url => "https://www.youtube.com/watch?feature=player_embedded&v=xO_1bYgoQvA",:title => "multiplication and division"},
  {:url => "https://www.youtube.com/watch?feature=player_embedded&v=3XOt1fjWKi8", :title => "numerator and denominator of a fraction"},
  {:url => "http://www.youtube.com/watch?v=tj9oLZYA-AQ", :title => "subtracting mixed numbers word problem"}
]

resources.each do |resource|
  Resource.new ({
      :location => resource[:url],
      :learning_resource_type => learning_resource_type,
      :title => resource[:title],
      :is_based_on_url => source_url
    })
end

resources = [

{
  :url => "http://admin.brightcove.com/viewer/us20130114.1629/BrightcoveBootloader.swf?playerID=1262030798001&playerKey=AQ~~%2CAAABJMwIIBk~%2CRDHV1F-BfRWDKMQ6uxnp4h4AYwpvkX4_&secureConnections=false&purl=http%3A%2F%2Fwisply.heroku.com%2F&%40videoPlayer=1804707302001&aspect_ratio=1.5&autoStart=&bgcolor=%23FFFFFF&debuggerID=&dynamicStreaming=true&flashID=bc-1804707302001&height=420&htmlFallback=true&includeAPI=true&isUI=true&isVid=true&startTime=1354683824609&templateErrorHandler=BC.onPlayerError&templateLoadHandler=BC.onPlayerLoaded_1804707302001&width=630&wmode=opaque",
  :title => "divide a whole number by a fraction",
  :difficulty => "easy",
  :time_required => "P4M48S" # this is how they want time? http://en.wikipedia.org/wiki/ISO_8601#Durations
},
{
  :url => "http://admin.brightcove.com/viewer/us20130114.1629/BrightcoveBootloader.swf?playerID=1262030798001&playerKey=AQ%7E%7E%2CAAABJMwIIBk%7E%2CRDHV1F-BfRWDKMQ6uxnp4h4AYwpvkX4_&secureConnections=false&%40videoPlayer=1804707302001&aspect_ratio=1.5&autoStart=&bgcolor=%23FFFFFF&debuggerID=&dynamicStreaming=true&flashID=bc-1804707302001&height=420&htmlFallback=true&includeAPI=true&isUI=true&isVid=true&startTime=1354683824609&templateErrorHandler=BC.onPlayerError&templateLoadHandler=BC.onPlayerLoaded_1804707302001&width=630&wmode=opaque",
  :title => "Subtracting mixed numbers (easy) ",
  :time_required => "4:48",
  :difficulty => "easy"
},
{
  :url => "http://admin.brightcove.com/viewer/us20130114.1629/BrightcoveBootloader.swf?playerID=1262030798001&playerKey=AQ~~%2CAAABJMwIIBk~%2CRDHV1F-BfRWDKMQ6uxnp4h4AYwpvkX4_&secureConnections=false&purl=http%3A%2F%2Fwisply.heroku.com%2F&%40videoPlayer=1804707302001&aspect_ratio=1.5&autoStart=&bgcolor=%23FFFFFF&debuggerID=&dynamicStreaming=true&flashID=bc-1804707302001&height=420&htmlFallback=true&includeAPI=true&isUI=true&isVid=true&startTime=1354683824609&templateErrorHandler=BC.onPlayerError&templateLoadHandler=BC.onPlayerLoaded_1804707302001&width=630&wmode=opaque",
  :title => "divide mixed numbers (easy)"
},
{
  :url => "http://admin.brightcove.com/viewer/us20121203.0945/BrightcoveBootloader.swf?playerID=1262030798001&playerKey=AQ~~%2CAAABJMwIIBk~%2CRDHV1F-BfRWDKMQ6uxnp4h4AYwpvkX4_&secureConnections=false&%40videoPlayer=1804346217001&aspect_ratio=1.5&autoStart=&bgcolor=%23FFFFFF&debuggerID=&dynamicStreaming=true&flashID=bc-1804346217001&height=420&htmlFallback=true&includeAPI=true&isUI=true&isVid=true&startTime=1354683078930&templateErrorHandler=BC.onPlayerError&templateLoadHandler=BC.onPlayerLoaded_1804346217001&width=630&wmode=opaque",
  :title => "adding mixed numbers (easy)"
}
]

resources.each do |resource|
  Resource.new ({
        :location => resource[:url],
        :learning_resource_type => learning_resource_type,
        :title => resource[:title],
        :is_based_on_url => "http://www.betterlesson.com"
      })
end

## The following resources are 50 addition worksheets without rerouping and 50 addition with regrouping.
learning_resource_type = "handout"
resources = [
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg64_001.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg64_002.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg64_003.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg64_004.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg64_005.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg64_006.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg64_007.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg64_008.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg64_009.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg64_010.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg64_011.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg64_012.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg64_013.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg64_014.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg64_015.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg64_016.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg64_017.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg64_018.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg64_019.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg64_020.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg64_021.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg64_022.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg64_023.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg64_024.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg64_025.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg64_026.pdf"
]

resources.each do |resource_url|
  Resource.create({
    :common_core => "K.OA.2",
    :location => resource_url,
    :author => "http://www.math-drills.com/",
    :title => "arithmetic",
    :description => "Add one digit with no regrouping. PDF worksheet with 64 questions and answers",
    :typical_age_range => "6-8 years"
    })
end

resources = [
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg_001.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg_002.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg_003.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg_004.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg_005.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg_006.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg_007.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg_008.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg_009.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg_010.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg_011.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg_012.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg_013.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg_014.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg_015.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg_016.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg_017.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg_018.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg_019.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg_020.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg_021.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg_022.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg_023.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg_024.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg_025.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01nrg_026.pdf"
]

resources.each do |resource_url|
  Resource.create({:educational_use => "assignment", :common_core => "K.OA.2", :location => resource_url, :author => "http://www.math-drills.com/", :title => "arithmetic", :time_required => "P20M", :description => "Add one digit with no regrouping. PDF worksheet with 100 questions and answers", :typical_age_range => "6-8 years"})
end


resources = [
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01srg12_001.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01srg12_002.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01srg12_003.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01srg12_004.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01srg12_005.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01srg12_006.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01srg12_007.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01srg12_008.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01srg12_009.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01srg12_010.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01srg12_011.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01srg12_012.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01srg12_013.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01srg12_014.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01srg12_015.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01srg12_016.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01srg12_017.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01srg12_018.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01srg12_019.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01srg12_020.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01srg12_021.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01srg12_022.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01srg12_023.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01srg12_024.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01srg12_025.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01srg12_026.pdf"
]

resources.each do |resource_url|
  Resource.create({:educational_use => "assignment", :location => resource_url, :author => "http://www.math-drills.com/", :title => "arithmetic", :description => "Add one digit with no regrouping. PDF worksheet with 12 questions and answers", :typical_age_range => "6-8 years", :time_required => "8 minutes"})
end

Resource.create({:educational_use => "assignment", :location => "https://s3.amazonaws.com/lessonOverFlow/arithmetic/add01srg12_all.pdf", :author => "http://www.math-drills.com/", :title => "arithmetic", :description => "Add one digit with no regrouping. 20 unique PDF worksheets with 12 questions and answers for each worksheet", :typical_age_range => "6-8 years"})

description = "One-Digit Addition with Regrouping"
base_name = "add01srg64"

resources = [
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/#{base_name}_001.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/#{base_name}_002.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/#{base_name}_003.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/#{base_name}_004.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/#{base_name}_005.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/#{base_name}_006.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/#{base_name}_007.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/#{base_name}_008.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/#{base_name}_009.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/#{base_name}_010.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/#{base_name}_011.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/#{base_name}_012.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/#{base_name}_013.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/#{base_name}_014.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/#{base_name}_015.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/#{base_name}_016.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/#{base_name}_017.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/#{base_name}_018.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/#{base_name}_019.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/#{base_name}_020.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/#{base_name}_021.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/#{base_name}_022.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/#{base_name}_023.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/#{base_name}_024.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/#{base_name}_025.pdf",
  "https://s3.amazonaws.com/lessonOverFlow/arithmetic/#{base_name}_026.pdf"
]


resources.each do |resource_url|
  Resource.create({:educational_use => "assignment", :location => resource_url, :author => "http://www.math-drills.com/", :title => "arithmetic", :description => "#{description}. PDF worksheet with 64 questions and answers", :typical_age_range => "6-8 years"})
end


CommonCore.create(
  :category => "Operations And Algebraic Thinking",
  :state_standard => "Use place value understanding and properties of operations to add and subtract.",
  :sub_category => "Understand Addition As Putting Together And Adding To, And Under- Stand Subtraction As Taking Apart And Taking From.",
  :core_id => "K.OA.2"
)

# "Solve addition and subtraction word problems, and add and subtract within 10, e.g., by using objects or drawings to represent the problem."



# garys first code
resource_url = "https://s3.amazonaws.com/lessonOverFlow/division/division_divisibility_020510_2_001.pdf"


Resource.create({
  :educational_use => "assignment", :location => resource_url, 
  :author => "http://www.math-drills.com/", :title => "Division and Divisiblity",
  :description => "PDF worksheet divisibility of 2's, 5's, and 10's with 120 questions", :typical_age_range => "11-12",
  :time_required => "P45M" # this is how they want time? http://en.wikipedia.org/wiki/ISO_8601#Durations
})
