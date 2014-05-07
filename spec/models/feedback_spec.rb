require 'spec_helper'
describe Feedback do

	before :each do
		@feedback1 = Feedback.create(name: 'Improve buttons', description: 'The button colors do not contrast enough with the background and confuses end-users', weight: 3, date: Time.new(2013, 5, 6), media_link: "http://youtube.com")
		@feedback2 = Feedback.create(name: 'Improve lists', description: 'The list generated does not resize well on tablets and often times users do not know/see the data', weight: 4, date: Time.new(2013, 5, 6), media_link: "http://youtube.com")
	end

	describe "#name" do
		it "should return the name" do
			@feedback1.name.should eq("Improve buttons")
			@feedback2.name.should eq("Improve lists")
		end
	end 

	describe "#description" do
		it "should return the description" do
			@feedback1.description.should eq('The button colors do not contrast enough with the background and confuses end-users')
			@feedback2.description.should eq('The list generated does not resize well on tablets and often times users do not know/see the data')
		end
	end 

	describe "#weight" do
		it "should return the weight" do
			@feedback1.weight.should eq(3)
			@feedback2.weight.should eq(4)
		end
	end 

	describe "#date" do
		it "should return the date" do
			@feedback1.date.should eq(Time.new(2013, 5, 6))
			@feedback2.date.should eq(Time.new(2013, 5, 6))
		end
	end

	describe "#media_link" do
		it "should return the media_link" do
			@feedback1.media_link.should eq("http://youtube.com")
			@feedback2.media_link.should eq("http://youtube.com")
		end
	end 	 	 
end