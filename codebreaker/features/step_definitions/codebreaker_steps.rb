class Output
  def messages
    @messages ||= []
  end
  def puts(message)
    messages << message
  end
end

def output1
  @output1 ||= Output.new
end

Given (/^I am not yet playing$/) do
end

When /^I start a new game$/ do
  @messenger = StringIO.new
  game = Codebreaker::Game.new(@messenger)
  game.start
end

Then(/^I should see "(.*?)"$/) do |message|
  expect(output1.messages).to include(message)
end