import nave.*

object luke {
    var poder = 5
    var salud = 75
    var estaUsandoElSableVerde = true

    method cambiarDeSable() {
        estaUsandoElSableVerde = !estaUsandoElSableVerde
    }

    method poder() = poder

    method salud() = salud

    method entrenar() {
        salud += 25
        if (estaUsandoElSableVerde)
            poder += 15
        else
            poder += 25

    }

    method esCampeon() = poder >= 30
}

object yoda {
    var poder = 50
    var salud = 30
    var estaUsandoLaFuerza = false

    method cambiarEstadoDeFuerza() {
        estaUsandoLaFuerza = !estaUsandoLaFuerza
    }

    method poder() = poder

    method salud() = salud

    method entrenar() {
        if (estaUsandoLaFuerza)
            poder = poder * 2
        else
            salud += 25

    }

    method esCampeon() = true
}

object arturito {
    // Separar la constante de la cuenta cantReparaciones * 2, sino nunca va a funcionar.
    const poder = 80
    var salud = 50
    var cantReparaciones = 0

    method entrenar() {
        salud += 10
        cantReparaciones += 1
    }

    method poder() = poder - (cantReparaciones * 2)

    method salud() = salud

    method esCampeon() = cantReparaciones % 2 == 0
}

object c3P0 {
    const poder = 30
    const salud = 80
    var capacidadDeReparacion = 3

    method entrenar() {
        capacidadDeReparacion += 1
    }

    method poder() = poder

    method salud() = salud

    method esCampeon() = capacidadDeReparacion > poder * 0.1

    method repararHalconMilenario() {
        // Poner corchetes en el if y en el else si hay mas de 2 modifiicaciones en el else
        if (self.esCampeon()) {
            halconMilenario.mejorarVelocidad(100 * capacidadDeReparacion)
            halconMilenario.mejorarBlindaje(100 * capacidadDeReparacion)
        }
        else {
            halconMilenario.mejorarVelocidad(200)
            halconMilenario.mejorarBlindaje(200)
        }
    }
}