class ChevroletCorsa {
	var property color
	
	method capacidad(){
		return 4
	}
	
	method velMaxima(){
		return 150
	}
	
	method peso(){
		return 1300
	}
}

class RenaultKwid {
	var tieneTanqueAdicional = true
	
	method sacarTanque(){tieneTanqueAdicional = false}
	method ponerTanque(){tieneTanqueAdicional = true}
	
	method capacidad(){
		return if(tieneTanqueAdicional){3} else{4}
	}
	
	method velMaxima(){
		return if(tieneTanqueAdicional){120} else{110}
	}
	
	method peso(){
		return if(tieneTanqueAdicional){1350} else{1200}
	}
	
	method color(){
		return "azul"
	}
}

class AutoEspecial {
	var property capacidad = 0
	var property velMaxima = 0
	var property peso = 0
	var property color
} 













