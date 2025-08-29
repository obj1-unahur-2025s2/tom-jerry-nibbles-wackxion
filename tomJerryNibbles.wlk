

object tom {
    var energia = 50
    var ratonesComido = 0

    method puedeCazar(distancia) { 
        return energia > (distancia / 2)
    }

    method energia() {
        return energia
    }

    method cazar(raton, distancia) { 
        if (self.puedeCazar(distancia)){ 
            self.corre(distancia); 
            self.come(raton)
            }
    }

    method corre(metros) { 
        energia -= (metros / 2)
    }

    method come(raton) {
        if(not raton.puedeGraznar()){
            energia += 12 + raton.peso(); 
            ratonesComido = raton;
            raton.graznar()}
        return raton.graznar()

    }

    method velocidadMaxima() = (5 + energia/10).max(0)

   
}


object jerry {
  var edad = 2

    method cumpleAnios() { edad += 1}
    method peso() {return edad * 20}
    method edad() {return edad}
    method puedeGraznar() = false
    
    method graznar() {
        return "..."}
}

object nibbles {
    var peso = 35

    method peso() {return peso}
    method puedeGraznar() = false

    method graznar() {
        return "..."
        }
}
// Inventar otro ratón

object pato {

  var edad = 5
 
    method cumpleAnios() { edad += 1}
    method peso() {return edad * 10}
    method edad() {return edad}
    method puedeGraznar() = true
    method graznar() {return " soy un pato no me comas Quack Quack"}
}