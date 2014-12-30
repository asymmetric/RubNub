When(/^I visit the ([a-z]+) page$/) do |page|
  visit path_to(page)
end

Then(/^I should be brought back to the (\w+) page$/) do |page|
  expect(current_path).to eq(path_to(page))
end

Then(/^I should see a \"([\w\s]+)\" error$/) do |error_msg|
  expect(page).to have_content(error_msg)
end
