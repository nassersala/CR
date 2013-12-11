Given(/^there are no coderetreats running today$/) do
  Coderetreat.destroy_all
end

When(/^I go to the running coderetreats display page$/) do
  visit running_today_coderetreats_url
end

Then(/^I should see there are no coderetreats running$/) do
  page.should have_content("There are no coderetreats running today")
end

Given(/^ther are some coderetreats running today$/) do
  @coderetreats = [
    Coderetreat.create!(status: "not_started", location: "Chicago"),
    Coderetreat.create!(status: "not_started", location: "Seatle"),
    Coderetreat.create!(status: "in_session",  location: "Berlin")
  ]
end

Then(/^I should see the running coderetreats grouped by status$/) do
  @coderetreats.each do |coderetreat|
    within(".#{coderetreat.status}") do 
      page.should have_css(".coderetreat", text: coderetreat.location)
    end
  end
end
