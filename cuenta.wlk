class Cuenta {

    var property saldo

    method transferir(unMonto, otraCuenta) {
        self.debitar(unMonto)
        otraCuenta.depositar(unMonto)
    }

    method debitar(unMonto) {
        if (saldo < unMonto)  {
            self.error("saldo insuficiente para debitar")
        }  
        saldo -= unMonto
    }

    method depositar(unMonto) {
        saldo += unMonto
    }
}