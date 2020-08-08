require_relative 'carta'
require_relative 'barajas'
prueba = Baraja.new
puts prueba.inspect
puts "\n"
puts prueba.barajar.inspect
puts "\n"
puts prueba.sacar.inspect
puts "\n"
puts prueba.repartir_mano.inspect