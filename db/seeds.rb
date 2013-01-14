# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
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
  Resource.create({:location => resource_url})
end
