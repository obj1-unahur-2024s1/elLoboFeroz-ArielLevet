object feroz {
	
	const pesoInicial = 10
	var peso = pesoInicial
	
	method comer(personaje){
		peso += personaje.peso() * 0.1
	}
	
	method correr(){
		peso += -1
	}
	
	method saludable() {
		return peso >= 20 && peso < 150
	}
	
	method sufrirCrisis(){
		peso = pesoInicial
	}
	
	method soplar(casa){
		peso += -casa.resistencia()
	}
}

object caperucita {
	
	const peso = 60
	var manzanas = 6
	
	method variarManzanas(cant){
		manzanas += cant
	}
	
	method peso(){
		return peso + manzanas * 0.2
	}
}

object abuelita {
	
	const peso = 50
	
	method peso(){
		return peso
	}
}

object cazador {
	
	const peso = 70
	
	method peso(){
		return peso
	}
	
	method llegar(){
		feroz.sufrirCrisis()
	}
}

object chanchito {
	
	const peso = 65
	
	method peso(){
		return peso
	}
}

object casaDePaja {
	
	const resistenciaInicial = 0
	var ocupantes = 1
	
	method variarOcupantes(cant){
		ocupantes += cant
	}
	method resistencia(){
		return resistenciaInicial + chanchito.peso() * ocupantes
	}
}

object casaDeMadera {
	
	const resistenciaInicial = 5
	var ocupantes = 1
	
	method variarOcupantes(cant){
		ocupantes += cant
	}
	method resistencia(){
		return resistenciaInicial + chanchito.peso() * ocupantes
	}
}

object casaDeLadrillos {
	
	var cantidadDeLadrillos = 100
	var ocupantes = 1
	
	method variarLadrillos(cant){
		cantidadDeLadrillos += cant
	}
	
	method variarOcupantes(cant){
		ocupantes += cant
	}
	
	method resistencia(){
		return cantidadDeLadrillos * 2 + chanchito.peso() * ocupantes
	}
}