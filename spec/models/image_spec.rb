require 'spec_helper'

describe Image do
	before :each do
		@image1 = Image.create(data: 'bla.jpg')
	end

	describe '#data' do
		it 'should return the data' do
			@image1.data.should eq('bla.jpg')
		end
	end

end