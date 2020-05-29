import Rodados.*
import Trafic.*

class Dependencia {
	const flota = []
	var property cantEmpleados
	
	method agregarAFlota(rodado){
		flota.add(rodado)
	}
	
	method quitarDeFlota(rodado){
		flota.remove(rodado)
	}
	
	method pesoTotalFlota(){
		const pesos = {rodado => rodado.peso()}
		return flota.sum(pesos)
	}
	
	method estaBienEquipada(){
		const velocidadMax = {rodado => rodado.velMaxima() >= 100}
		return 	flota.size() >= 3
				&&
				flota.all(velocidadMax)
	}
	
	method capacidadTotalEnColor(color){
		const esColor = {rodado => rodado.color() == color}
		const capacidades = {rodado => rodado.capacidad()}
		return flota.filter(esColor).sum(capacidades)
	}
	
	method colorDelRodadoMasRapido(){
		const elMasRapido = {rodado => rodado.velMaxima()}
		return flota.max(elMasRapido).color()
	}
	
	method capacidadFaltante(){
		const capacidades = {rodado => rodado.capacidad()}
		return (self.cantEmpleados() - flota.sum(capacidades)).max(0)
	}
	
	method esGrande(){
		return 	self.cantEmpleados() >= 40
				&&
				flota.size() >= 5
	}
}
