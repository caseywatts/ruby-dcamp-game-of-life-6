require 'spec_helper'
require './game.rb'

describe 'lol' do
  it 'lol' do
    expect(true).to eq(true)
  end
end

describe "EvaluateRules" do
  describe "living cell" do
    it "survives or not according to number of neighbors" do
      expect(EvaluateRules.new(0, true ).alive?).to eq(false)
      expect(EvaluateRules.new(1, true ).alive?).to eq(false)
      expect(EvaluateRules.new(2, true ).alive?).to eq(true)
      expect(EvaluateRules.new(3, true ).alive?).to eq(true)
      expect(EvaluateRules.new(4, true ).alive?).to eq(false)
      expect(EvaluateRules.new(5, true ).alive?).to eq(false)
      expect(EvaluateRules.new(6, true ).alive?).to eq(false)
      expect(EvaluateRules.new(7, true ).alive?).to eq(false)
      expect(EvaluateRules.new(8, true ).alive?).to eq(false)
    end
  end
  describe "non-living cell" do
    it "resurrect or not according to number of neighbors" do
      expect(EvaluateRules.new(0, false ).alive?).to eq(false)
      expect(EvaluateRules.new(1, false ).alive?).to eq(false)
      expect(EvaluateRules.new(2, false ).alive?).to eq(false)
      expect(EvaluateRules.new(3, false ).alive?).to eq(true)
      expect(EvaluateRules.new(4, false ).alive?).to eq(false)
      expect(EvaluateRules.new(5, false ).alive?).to eq(false)
      expect(EvaluateRules.new(6, false ).alive?).to eq(false)
      expect(EvaluateRules.new(7, false ).alive?).to eq(false)
      expect(EvaluateRules.new(8, false ).alive?).to eq(false)
    end
  end
end

describe "Neighborhood" do
  it "is a grid made of an array within an array" do
    a_starter_grid = [
      [0,0,0],
      [0,1,0],
      [0,0,0]
    ]
    expect(Neighborhood.new(a_starter_grid).grid).to eq(a_starter_grid)
  end
end
