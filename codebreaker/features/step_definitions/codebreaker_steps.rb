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

Given (/^I am not yet playing$/) do
end

When /^I start a new game$/ do 
  game = Codebreaker::Game.new(output1)
  game.start
end

Then(/^I should see "(.*?)"$/) do |message|
  expect(output1.messages).to include(message)
end