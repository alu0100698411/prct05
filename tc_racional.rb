# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
  def test_suma
    assert_equal("60/14", Racional.new(8,2).sum(Racional.new(2,7)).to_s)
  end
  
end
