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
        return mensajero.puedeEntregar()
    }
}

object puenteBrooklyn{ 
    method puedeEntregar(mensajero){
        return (mensajero.peso() <= 1000)
    }
}

object laMatrix {
    method puedeEntregar(mensajero){

    }
}

object jeanGray {
    method peso(){
        return 65
    }
}

object neo {
    method peso(){
        return 0
    }
}

object saraConnor {
    var peso = 0
    var vehiculo = moto
    method peso(){
        return peso + vehiculo.pesa()
    }
    method peso(_peso){
        peso = _peso
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