# File:  tc_calradio.rb
 
require "./bin/calradio"
require "test/unit"
 
class TestRadio < Test::Unit::TestCase
 
  def test_simple
    assert_in_delta(0.318471338, Radio.new(2).calradio(),0.00001,"Son iguales")
    assert_in_delta(0.477707006, Radio.new(3).calradio(),0.00001,"Son iguales")
  end
  
  def test_typecheck
    assert_raise( RuntimeError ) { Radio.new(-1) }
  end
  
  def test_failure
    assert_in_delta(0.318471338, Radio.new(3).calradio(),0.00001,"No son Iguales")
  end
end
