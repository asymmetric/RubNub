Then(/^I should see the welcome message$/) do
  expect(page).to have_content("Welcome to RubNub!")
end

Then(/^I should be able to add a command$/) do
  click_link 'Add a command'

  fill_command_form

  click_button 'Save'

  expect(page).to have_content("Command was successfully created.")
end

Then(/^I should be able to see all commands$/) do
  click_link 'List all commands'

  expect(current_path).to eq(commands_path)
end
