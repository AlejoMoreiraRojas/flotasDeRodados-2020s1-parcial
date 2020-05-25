object trafic {
	
	method capacidad(){
		return interior.capacidad()
	}
	
	method velMaxima(){
		return motor.velMaxima()
	}
	
	method peso(){
		return motor.peso() + interior.peso() + 4000
	}
	
	method color(){
		return "blanco"
	}
}


object interior {
	var esComodo = true
	
	method interiorComodo(){
		esComodo = true
	}
	
	method interiorPopular(){
		esComodo = false
	}
		
	method capacidad(){
		return if(esComodo){5} else{12}
	}
	
	method peso(){
		return if(esComodo){700} else{1000}
	}
}


object motor {
	var esPulenta = true
	
	method motorPulenta(){
		esPulenta = true
	}
	
	method motorBataton(){
		esPulenta = false
	}
	
	method velMaxima(){
		return if(esPulenta){130} else{80}
	}
	
	method peso(){
		return if(esPulenta){800} else{500}
	}
}