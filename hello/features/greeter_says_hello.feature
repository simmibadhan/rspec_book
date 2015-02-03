Feature: greeter says hello
	In order to start learning RSpec and Cucumber
	As a Reader of RSpec book
	I want a greeter to say Hello

	Scenario: greeter says hello
		Given a greeter
		When I send it a greet message
		Then I should see "Hello Cucumber!"