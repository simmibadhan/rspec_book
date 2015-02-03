class RspecGreeter
	def greet
		"Hello Rspec!"
	end
end

describe "Rspec Greeter"  do	#Example
	it "should say 'Hello Rspec!' when it receives the greet() message" do #Example
		greeter = RspecGreeter.new #Given
		greeting = greeter.greet #When
		expect(greeting).to eq("Hello Rspec!") #Then
		# greeting.should == "Hello Rspec!" 
	end
end
