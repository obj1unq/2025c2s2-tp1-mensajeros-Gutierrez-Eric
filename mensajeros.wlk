object paquete {
    var pago = false
    var destino = puenteBrooklyn
    var mensajero = jeanGray
    method pago(){
        return pago
    }
    method pago(_pago){
        pago = _pago
    }
    method destino (){
        return destino
    }
    method destino(_destino){
        destino = _destino
    }
    method mensajero (){
        return mensajero
    }
    method mensajero (_mensajero){
        mensajero = _mensajero
    }
    method entrega(){
        return self.pago() and destino.puedeEntregar(mensajero)
    }
}

object puenteBrooklyn{ 
    method puedeEntregar(mensajero){
        return (mensajero.peso() <= 1000)
    }
}

object laMatrix {
    method puedeEntregar(mensajero){
        return mensajero.comunicacion()
    }
}

object jeanGray {
    const comunicacion = true
    method peso(){
        return 65
    }
    method comunicacion (){
        return comunicacion
    }
}

object neo {
    var tieneCredito = true
    method peso(){
        return 0
    }
    method credito(){
        return tieneCredito
    }
    method credito(_credito){
        tieneCredito = _credito
    }
    method comunicacion(){
        return tieneCredito
    }
}

object saraConnor {
    const comunicacion = false
    var pesoPropio = 0
    var vehiculo = moto
    method peso(){
        return pesoPropio + vehiculo.pesa()
    }

    method pesoPropio(_peso){
        pesoPropio = _peso
    }
    method comunicacion (){
        return comunicacion
    }
    method vehiculo(){
        return vehiculo
    }
    method vehiculo(_vehiculo){
        vehiculo = _vehiculo
    }
}

object moto {
    method pesa(){
        return 100
    }
}

object camion {
    var acoplados = 0
    method pesa (){
        return 500 + (acoplados * 500)
    }
    method acoplados(_acoplados){
        acoplados = _acoplados
    }
    method acoplados(){
        return acoplados
    }
}