#Desafío Carta1

#Ejercio1
puts "Ejercicio1"

class Carta

    attr_accessor :numero,
                  :pinta
    
    def initialize(numero, pinta)
        @numero = numero
        @pinta = pinta
    end
    
    def to_s
    puts "numero:#{numero} | pinta:#{pinta} " 
    
    end
    
    end

    cartas=[]
    
    5.times do |i|
      numero = rand (1..13)
      pinta = ['C', 'D', 'E', 'T'].sample
      cartas << Carta.new(numero, pinta)
    end
    
    puts cartas 

#Ejercicio2

puts "EJercicio2"

class CuentaBancaria
    attr_accessor :nombre_de_usuario, :numero_de_cuenta_rut, :vip

    def initialize(nombre_de_usuario, numero_de_cuenta_rut, vip = 0)
        @nombre_de_usuario = nombre_de_usuario
        @numero_de_cuenta_rut = numero_de_cuenta_rut
        @vip = vip

        if numero_de_cuenta_rut.digits.count != 8 
            raise RangeError, "La cantidad de dígitos es distinta a 8"
        end
    end

    def to_s
        puts "nombre de usuario: #{nombre_de_usuario}|cuenta: #{numero_de_cuenta_rut}|vip: #{vip}"
    end

    def numero_de_cuenta
        if vip != 0
            puts "-1#{numero_de_cuenta_rut}"
        else
            puts "0-#{numero_de_cuenta_rut}"
        end
    end
end

#Instancias
#cuenta no vip
cuenta1 = CuentaBancaria.new("María Paz",12345678)
puts cuenta1
cuenta1.numero_de_cuenta

#cuenta vip
cuenta2 = CuentaBancaria.new("Carolina",11111111,1)
puts cuenta2
cuenta2.numero_de_cuenta