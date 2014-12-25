When(/^I visit the ([a-z]+) page$/) do |page|
  visit path_to(page)
end
