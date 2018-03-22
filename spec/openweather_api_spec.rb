require 'spec_helper'

describe Openweather_API do

  before(:all) do
    @test_call = Openweather_API.new.coord_service
    p @test_call
  end

  it "should return longitude as a float" do
    expect(@test_call.get_latitude).to be_instance_of Float
  end

  it "should return latitude as a float" do

  end

  it "should verify/validate it's London by checking its longitude and latitude vs set coordinates" do

  end
end
