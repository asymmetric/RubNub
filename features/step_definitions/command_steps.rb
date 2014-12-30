When(/^I want to ([a-z]+) a ([a-z]+)$/) do |action, resource|
  visit action_on_resource(action, resource)
end

When(/^I fill in the form completely$/) do
  fill_command_form
  click_button 'Save'
end

Then(/^I should( not)? succeed in creating a command$/) do |boolean|
  if !boolean
    expect(page).to have_content("Command was successfully created.")
  else
    expect(page).to have_css("#error_explanation")
  end
end

When(/^I don't fill in the (\w+) field$/) do |field|
  fill_all_except(field)

  click_button 'Save'
end

When(/^I enter a \"([\w\s]+)\" command$/) do |query|
  command_name = query.split.first
  case command_name
  when "man"
    FactoryGirl.create(:man_command)
  else
    FactoryGirl.create(:command, name: command_name)
  end

  homepage_submit query
end

Then(/^I should be brought to the command's ([a-z]+) page$/) do |command|
  expect(page).to have_content("Man page for ")
end

When(/^I visit the man page for ([a-z]+)$/) do |command|
  FactoryGirl.create(:command, name: 'man')

  visit kernel_man_path(name: command)
end

Then(/^I should see the man page for ([a-z]+)$/) do |command|
  expect(page).to have_content("Man page for #{command}")
end

When(/^I try to get the man for a non-existing command$/) do
  homepage_submit "man foobar"
end

When(/^I enter a \"(\w+)\" command without any argument$/) do |command|
  FactoryGirl.create :man_command

  homepage_submit "#{command}"
end
