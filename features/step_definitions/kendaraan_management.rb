When /^I click New Kendaraan$/ do
  click_link "New Kendaraan"
end

Then /^I should see Kendaraan page$/ do
  page.should have_content "Kendaraan"
end

Then /^I fill Kode with (\d+)$/ do |arg1|
  fill_in "Kode", :with => "01"
end

Then /^I fill Keterangan with motor$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I press Submit button$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see notification Your Kendaraan Has Been Save On Database$/ do
  pending # express the regexp above with the code you wish you had
end