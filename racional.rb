#!/usr/bin/ruby

# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
  #ACCESO ATRIBUTOS
  attr_reader :n, :d 	  

  #CONSTRUCTOR			
  def initialize(n, d)
    if d == 0
	@n = n
	puts "INTRODUZCA UN DENOMINADOR DISTINTO DE 0"
	@d = gets.chomp	 #suprime /n
    else
      @n, @d = n, d 
    end	
  end
  
  #TO_STRING
  def to_s		
    return "#{n}/#{d}"
  end
  
end

