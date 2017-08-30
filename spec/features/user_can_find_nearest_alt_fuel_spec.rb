require 'rails_helper'

RSpec.feature "As a user" do
  scenario "when i visit the root and search 80203 and click locate" do

    visit '/'

    fill_in 'zip', with: '80203'

    click_on 'Find Nearest Stations'

    expect(current_path).to eq(search_path)
    expect(page).to have_content("These are the 10 closest")
    expect(page).to have_content("Seventeenth Street Plaza")
    expect(page).to have_content("1225 17th St")
    expect(page).to have_content("CO")
    expect(page).to have_content("Denver")
    expect(page).to have_content("80204")
    expect(page).to have_content("ELEC")
    expect(page).to have_content(0.31422)
    expect(page).to have_content("access_days_times")

  end
end
