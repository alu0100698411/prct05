# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
  def test_suma
    assert_equal("60/14", Racional.new(8,2).sum(Racional.new(2,7)).to_s)
  end
  
  def test_resta
    assert_equal("5/12", Racional.new(3,4).rest(Racional.new(1,3)).to_s)
  end
  
  def test_mult
    assert_equal("45/16", Racional.new(9,2).mult(Racional.new(5,8)).to_s)
  end  
  
  def test_div
    assert_equal("350/112", Racional.new(10,4).div(Racional.new(28,35)).to_s)
  end  
  def test_simp
    assert_equal("8/25", Racional.new(112,350).simplificar.to_s)
  end
end
