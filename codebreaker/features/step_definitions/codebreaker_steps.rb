class Output1
  def messages
    @messages ||= []
  end
  def puts(message)
    messages << message
  end
end

def output1
  @output1 ||= Output1.new
end

# Codebreaker starts Game
Given (/^I am not yet playing$/) do
end

When /^I start a new game$/ do 
  game = Codebreaker::Game.new(output1)
  game.start('1234')
end

Then(/^I should see "(.*?)"$/) do |message|
  expect(output1.messages).to include(message)
end

# Codebreaker submits guess
Given(/^the secret code is "(.*?)"$/) do |secret|
  @game = Codebreaker::Game.new(output1)
  @game.start(secret)
end

When(/^I guess "(.*?)"$/) do |guess|
  @game.guess(guess)
end

Then(/^the mark should be "(.*?)"$/) do |mark|
  expect(output1.messages).to include(mark)
end