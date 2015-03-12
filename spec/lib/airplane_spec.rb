require 'spec_helper'
require_relative "../../lib/airplane"

describe Airplane do
  describe "#initialization" do
    my_plane = Airplane.new('blackbird', 460, 160000)
    it "returns the correct model" do
      expect(my_plane.model).to eq 'blackbird'
    end
    it "returns the correct wing load" do
      expect(my_plane.wing_load).to eq 460
    end
    it "returns the correct horsepower" do
      expect(my_plane.hp).to eq 160000
    end
  end
  describe '#start' do
    my_plane = Airplane.new('blackbird', 460, 160000)
      it 'will change @running if 0 and will return string' do
        expect(my_plane.start).to eq 'airplane started'
      end
      it 'will maintain @running at 1 if already started and return string' do
        my_plane.start
        expect(my_plane.start).to eq "airplane already started"
      end
    end
  describe '#takeoff' do
    my_plane = Airplane.new('blackbird', 460, 160000)
      it 'will change flying to true if @running is 1' do
        my_plane.start
        expect(my_plane.takeoff).to eq "airplane launched"
      end
      it 'will return string for plane in flight' do
        my_plane.start
        my_plane.takeoff
        expect(my_plane.takeoff).to eq "airplane in flight"
      end
    end
    describe '#takeoff' do
      my_plane = Airplane.new('blackbird', 460, 160000)
        it 'will change flying to true if @running is 1' do
          my_plane.start
          expect(my_plane.takeoff).to eq "airplane launched"
        end
      end
    describe '#land' do
      my_plane = Airplane.new('blackbird', 460, 160000)
      it 'will return string for plane not running' do
        expect(my_plane.land).to eq "airplane not started, please start"
    end
    it 'will return string for plane already on the ground' do
      my_plane.start
      expect(my_plane.land).to eq "airplane already on the ground"
    end
    it 'will return string for plane landing' do
      my_plane.start
      my_plane.takeoff
      expect(my_plane.land).to eq "airplane landed"
    end
  end
  describe '#fuel_gauge' do
    my_plane = Airplane.new('blackbird', 460, 160000)
    it 'will return bingo if fuel = 30' do
      expect(my_plane.fuel_gauge).to eq "bingo"
    end
    my_plane = Airplane.new('blackbird', 460, 160000)
    it 'will return tank if out of fuel' do
      my_plane.start
      my_plane.takeoff
      my_plane.land
      expect(my_plane.fuel_gauge).to eq "tank"
    end
  end
end
