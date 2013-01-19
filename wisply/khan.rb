require 'mechanize'

require 'rubygems'
require 'mechanize'

a = Mechanize.new { |agent|
  agent.user_agent_alias = 'Mac Safari'
}

a.get('http://kahnacademy.org/math/arithmetic') do |page|

  # search_result = page.form_with(:name => 'f') do |search|
  #   search.q = 'Hello world'
  # end.submit

  page.links.each do |link|
    puts link
  end

  # search_result.links.each do |link|
  #   puts link.text
  # end
end