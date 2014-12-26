When(/^I want to ([a-z]+) a ([a-z]+)$/) do |action, resource|
  visit action_on_resource(action, resource)
end

When(/^I fill in the form completely$/) do
  fill_command_form
end

Then(/^I should( not)? succeed in creating a command$/) do |boolean|
  click_button 'Save'

  if !boolean
    expect(page).to have_content("Command was successfully created.")
  else
    expect(page).to have_css("#error_explanation")
  end
end

When(/^I don't fill in the (\w+) field$/) do |field|
  fill_all_except(field)
end

When(/^I enter a ([a-z]+) command$/) do |command|
  path = case command
        when "man"
          kernel_path(args: 'man')
        end

  visit path
end
