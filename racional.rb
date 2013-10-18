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
 
  #MULTIPLICAR
  def mult(other)
    return Racional.new(@n*other.n, @d*other.d))		 			
  end 
  
  #DIVIDIR
  def div(other)
    return Racional.new(@n*other.d, @d*other.n))		 			
  end 
  
  #SUMA
  def sum(other)			
    aux=[@d, other.d]
    return Racional.new(((mcm(aux.max, aux.min)/@d)*@n)+((mcm(aux.max, aux.min)/other.d)*other.n),mcm(aux.max, aux.min))
  end

  #RESTA
  def rest(other)
    aux=[@d, other.d]
    return Racional.new(((mcm(aux.max, aux.min)/@d)*@n)-((mcm(aux.max, aux.min)/other.d)*other.n),mcm(aux.max, aux.min))
  end
end

