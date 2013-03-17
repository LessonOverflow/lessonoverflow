require 'spec_helper'

describe 'resources backbone page' do
  it 'shows that the page is loading on get of /main' do
    visit '/main'
    page.should have_content('Loading...')
  end
end
