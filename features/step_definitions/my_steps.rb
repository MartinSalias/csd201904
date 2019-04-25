Given(/^voy a la home$/) do
	visit '/'
end

Then(/^veo "(.*?)"$/) do |text|
	last_response.body.should =~ /#{text}/m
end


When(/^ingreso en "(.*?)" con "(.*?)"$/) do |field, value|
  fill_in(field, :with => value)
  click_button("Enviar")
end

When(/^en input "(.*?)" es igual a "(.*?)"$/) do |field, value|
  fill_in(field, :with => value)
  last_response.body.should =~ /#{text}/m
end

