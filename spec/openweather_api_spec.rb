require 'spec_helper'

describe Openweather_API do

  before(:all) do
    @test_call = Openweather_API.new.coord_service
  end

  it "should return longitude as a float" do
    expect(@test_call.get_latitude).to be_instance_of Float
  end

  it "should return latitude as a float" do
    expect(@test_call.get_longitude).to be_instance_of Float
  end

  it "should verify/validate it's London by checking its longitude and latitude vs set coordinates" do
    expect(@test_call.get_latitude).to eq 51.51
    expect(@test_call.get_longitude).to eq -0.13
  end
end
