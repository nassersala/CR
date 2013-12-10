Given(/^there are no coderetreats running today$/) do
end

When(/^I go to the running coderetreats display page$/) do
  visit running_today_coderetreats_url
end

Then(/^I should see there are no coderetreats running$/) do
  page.should have_content("There are no coderetreats running today")
end

Coderetreat = Struct.new :status, :location
Given(/^ther are some coderetreats running today$/) do
  @coderetreats = [
    Coderetreat.new("not_started", "Chicago"),
    Coderetreat.new("not_started", "Seatle"),
    Coderetreat.new("in_session", "Berlin")
  ]
end

Then(/^I should see the running coderetreats grouped by status$/) do
  @coderetreats.each do |coderetreat|
    within(".#{coderetreat.status}") do 
      page.should have_css(".coderetreat", text: coderetreat.location)
    end
  end
end
