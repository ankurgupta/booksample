Given(/^the following books records$/) do |table|
  table.hashes.each do |hash|
    Book.create! :title => hash["title"], :author => hash["author"]
  end
end

Given(/^I have books titled Book(\d+), Book(\d+)$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

When(/^I go to the list of books$/) do
  visit books_path # express the regexp above with the code you wish you had
end


Then(/^I should see the books in this order:$/) do |table|
  expected_order = table.raw
  actual_order = page.all('a').collect(&:text)
  actual_order.should == expected_order.flatten
end

Then(/^I should see "(.*?)"$/) do |text|
  page.should have_content text
end