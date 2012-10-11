# File:  calradio.rb
 
class Radio
 
  def initialize( numero )
    raise ArgumentError, 'Argumento no numerico' unless numero.is_a? Numeric
    raise ArgumentError, 'Argumento no es numero positivo' unless (numero > 0)
    @x = numero
  end
 
  def calradio(  )
    ((@x)/(2*(3.14)))
  end

end
