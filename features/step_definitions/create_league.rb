Given(/^there are no leagues$/) do
  League.destroy_all
  expect(League.count).to eq(0)
end

Given /^I am registered$/ do
  User.create!(
    email: 'test@example.com',
    password: 'password',
    password_confirmation: 'password',
  )
end

Given(/^I am signed in$/) do
  visit '/users/sign_in'
  fill_in "Email", with: "test@example.com"
  fill_in "Password",  with: 'password'
  click_on 'Sign in'
  # omniauth is turned off via cucumber tags.
end

When(/^I create a (public|private) league named "(.*?)"$/) do |visibility, name|
  # visit the new league form
  visit '/leagues/new/'
  
  # fill in the name with <name>
  fill_in 'League Name', with: name
  
  # set visibilty
  if visibility == 'private'
      check ''
  end 
  
  # upload photo... (later)
  

  # submit the form
  click_on 'Create League'
end

Then(/^I should see "(.*?)" in my dashboard$/) do |name|
    
  save_and_open_page
  
  expect(League.count).to eq(1)
  expect(page.body).to have_content(name) 
end

Then(/^I should be the commissioner of "(.*?)"$/) do |name|
  the_league = League.find_by_name(name)
  expect(the_league.commissioner_id).to eq(User.last.id)
end



