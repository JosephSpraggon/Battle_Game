def sign_in_and_play
  visit("/")
  fill_in :player_1_name, with: "Bob"
  fill_in :player_2_name, with: "Bill"
  click_button "Create Players"
end