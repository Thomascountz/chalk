require 'rails_helper'

describe 'Site layout', type: :feature do
  describe 'homepage' do
    it 'has several links' do
      visit root_path
      expect(page).to have_link(nil, href: root_path, count: 2)
      expect(page).to have_link(nil, href: about_path, count: 2)
      expect(page).to have_link(nil, href: "#", count: 2)
    end
  end
end