feature "attack" do
  
  scenario "get confirmation after attacking player 2" do
    sign_in_and_play
    click_button("Attack!")
    expect(page).to have_content("Bill has been attacked by Bob!")
  end

  scenario "reduce player 2 HP by 10" do
    sign_in_and_play
    click_button("Attack")
    expect(page).not_to have_content "Bill - Hit Points: 100"
    expect(page).to have_content "Bill - Hit Points: 90"
  end

end