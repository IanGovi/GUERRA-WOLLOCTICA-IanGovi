import guerreros.*


object alianza {
    const property guerreros = #{}

    method reclutarGuerrero(unGuerrero) {
        if (unGuerrero.salud() > 50 and unGuerrero.poder() >= 25)
            guerreros.add(unGuerrero)
    }

    method entrenarguerrero(unGuerrero) {
        unGuerrero.entrenar()
    }

    method entrenarGuerreros() {
        guerreros.forEach({guerrero => guerrero.entrenar()})
    }

    method nroDeGuerrerosEnEjercito() = guerreros.size()

    // Asumo que hay almenos 1 guerrero en la lista
    method poderTotal() = guerreros.sum({guerrero => guerrero.poder() + 25})
    
    method esEjercitoPoderoso() = guerreros.all({guerrero => guerrero.poder() > 50})

    method algunoEsCampeon() = guerreros.any({guerrero => guerrero.esCampeon()})
    // Asumo que hay almenos 1 guerrero en la lista
    method esInvencible() = self.esEjercitoPoderoso() or self.algunoEsCampeon()

    method guerrerosDebiles(nroDeEnergia) = guerreros.filter({guerrero => guerrero.salud() <= nroDeEnergia})

    method ganarBatalla(poderParaGanar) = self.poderTotal() > poderParaGanar

    // Asumo que hay almenos 1 guerrero en la lista
    method pocaSaludYMuchoPoder() = guerreros.min({guerrero => guerrero.salud()}).poder() > guerreros.max({guerrero => guerrero.salud()}).poder()

    // Asumo que hay almenos 1 guerrero en la lista
    method listaDeCampeones() = guerreros.filter({guerrero => guerrero.esCampeon()})

}