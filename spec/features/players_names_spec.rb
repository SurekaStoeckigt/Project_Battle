require "capybara/rspec"
# require_relative "../app"

feature "players fill name in form" do
  scenario "submit names as 'player1' and 'player2' " do
    visit("/")
    fill_in :player_1, with: "player1"
    fill_in :player_2, with: "player2"
    click_button "Submit"
    expect(page).to have_content "player1 vs. player2"
  end
end
