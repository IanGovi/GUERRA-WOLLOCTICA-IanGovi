object halconMilenario {
    var velocidad = 500
    var blindaje = 1000

    method velocidad() = velocidad
    method blindaje() = blindaje
    method mejorarVelocidad(cantidad) {
        velocidad += cantidad 
    }
    method mejorarBlindaje(cantidad) {
        blindaje += cantidad 
    }
}