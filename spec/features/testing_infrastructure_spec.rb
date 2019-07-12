feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Welcome to Battle. Your death awaits'
  end
end

feature 'play button' do
  scenario 'play button re-directs you to player naming page' do
    visit('/')
    click_button 'Play!'
    expect(page).to have_content 'Enter Player Names'
  end
end

feature 'Entering players' do
  scenario 'allows to enter names and be greeted on the following page' do
    sign_in_and_play
    expect(page).to have_content 'Richie vs. Charlie'
  end

  feature 'See Player 2 hit points' do
    scenario 'it allows Player 1 to see Player 2`s hit points' do
      sign_in_and_play
      expect(page).to have_content 'Charlie HP 100'
    end
  end

  feature 'Attack Player 2' do
    scenario 'it allows me to attack Player 2 and get conformation' do
      sign_in_and_play
      click_button 'Karate Chopskies'
      expect(page).to have_content "You Karate Chopskied Charlie"
    end
  end

  feature 'switching turns' do
    scenario 'give the possibility to switch turns between players' do
      sign_in_and_play
      click_button 'Karate Chopskies'
      click_button 'Karate Chopskies'
      expect(page).to have_content "You Karate Chopskied Richie"
    end
  end

  feature "Showing HP's of both players" do
    scenario 'check above' do
      sign_in_and_play
      click_button 'Karate Chopskies'
      expect(page).to have_content "Player 1: Richie: HP: 100"
    end
  end
end
