def sign_in_and_play
  visit('/players')
  fill_in :player_1, with: 'Richie'
  fill_in :player_2, with: 'Charlie'
  click_button 'Submit'
end

def karate_chop
  sign_in_and_play
  click_button 'Karate Chopskies'
end
