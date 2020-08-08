require_relative 'carta'
class Baraja
    attr_accessor :cartas
    def initialize(cartas= [])
        pintas = ['C', 'D', 'E', 'T']
        @cartas = cartas
        pintas.each do |pinta|
            13.times do |numero|
                @cartas.push Carta.new(numero + 1, pinta)
            end
        end
    end
    def barajar
        @cartas = @cartas.shuffle
    end
    def sacar
        @cartas.pop
    end
    def repartir_mano
        mano = []
        5.times do |una_carta|
            mano.push @cartas.pop
        end
        mano
    end
end
