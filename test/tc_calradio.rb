# File:  tc_calradio.rb
 
require "./bin/calradio"
require "test/unit"
 
class TestRadio < Test::Unit::TestCase
 
  def test_simple
    assert_in_delta(0.796178344, Radio.new(5).calradio(),0.00001,"Son iguales")
    assert_in_delta(0.955414013, Radio.new(6).calradio(),0.00001,"Son iguales")
  end
  
  def test_typecheck
    assert_raise( RuntimeError ) { Radio.new(-1) }
  end
  
  def test_failure
    assert_in_delta(0.159235669, Radio.new(7).calradio(),0.00001,"No son Iguales")
  end
end

