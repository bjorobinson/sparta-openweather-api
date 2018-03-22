require 'spec_helper'

describe Openweather_API do
  context 'Coordinate services' do
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

  context 'Weather Services' do
    before(:all) do
      @test_call = Openweather_API.new.weather_service
    end
    # This test is predicated on the idea that id doesnt change?
    it "should verify by returning an id of 804" do
      expect(@test_call.get_id).to eq 804
    end

    it "should have a main that summarises the weather with a String" do
      expect(@test_call.get_main).to be_instance_of String
    end

    it "should have a description of the weather with a String" do
      expect(@test_call.get_description).to be_instance_of String
    end
  end
end
