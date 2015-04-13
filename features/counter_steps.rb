Given /^I logged in as "(\w+)" with "(\w+)" "(\w+)" times$/ do |name, pwd, cnt|
	user = User.new({username: name, password: pwd, counter: cnt.to_i})
	user.save
end

Then /^I see my counter at "(\w+)"$/ do |cnt|
	assert page.has_content?("You've logged in #{cnt} time(s)!")
end

Given /^I login as "(\w+)" with "(\w+)"$/ do |name, pwd|
	fill_in('username_input', :with => name)
	fill_in('password_input', :with => pwd)
	click_button('login_btn')
end
