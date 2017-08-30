require 'rails_helper'

RSpec.feature "As a user" do
  scenario "when i visit the root and search 80203 and click locate" do

    visit '/'

    fill_in 'zip', with: '80203'

    click_on 'Find Nearest Stations'

    expect(current_path).to eq(search_path)
    expect(page).to have_content("80203")
    expect(page).to have_content("These are the closest stations within 10 miles of your selected zip")
    expect(page).to have_content(station["name"])
    expect(page).to have_content(station["address"])
    expect(page).to have_content(station["city"])
    expect(page).to have_content(station["state"])
    expect(page).to have_content(station["zip"])
    expect(page).to have_content(station["fuel_type"])
    expect(page).to have_content(station["distance"])
    expect(page).to have_content(station["access_days_times"])

  end
end
