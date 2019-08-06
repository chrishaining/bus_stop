require('minitest/autorun')
require('minitest/pride')
require_relative("../bus")

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new("22", "Ocean Terminal")
  end
