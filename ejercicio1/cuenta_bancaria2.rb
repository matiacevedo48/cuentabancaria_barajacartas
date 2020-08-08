class CuentaBancaria
    attr_accessor :banco, :n_cuenta, :saldo
    def initialize(banco, n_cuenta, saldo = 0)
        @banco = banco
        @n_cuenta = n_cuenta
        @saldo = saldo
    end
    def transferir(monto, cuenta_externa)
        @saldo = @saldo - monto
        cuenta_externa.saldo = cuenta_externa.saldo + monto
    end
end
class Usuario
    attr_accessor :nombre, :cuentas
    def initialize(nombre, cuentas)
        @nombre = nombre
        @cuentas = cuentas
    end
    def saldo_total
        total = 0
        @cuentas.each do |cuenta|
            total += cuenta.saldo
        end
        total
    end
end

cuenta1 = CuentaBancaria.new('BCI', '12345678', 5000)
cuenta2 = CuentaBancaria.new('Banco Estado', '87654321', 5000)
cuenta3 = CuentaBancaria.new('Banco de Chile', '18341431', 10000)
cuenta4 = CuentaBancaria.new('BCI', '12341234', 8000)

usuario1 = Usuario.new('Matias', [cuenta3, cuenta4])
usuario2 = Usuario.new('Rodrigo', [cuenta1, cuenta2])

cuenta1.transferir(5000, cuenta2)

#primera clase
print cuenta1.inspect
print cuenta2.inspect

#segunda clase
print usuario2.saldo_total