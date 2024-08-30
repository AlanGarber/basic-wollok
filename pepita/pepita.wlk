object pepita {
    var energia = 100

    method estaCansada() = energia < 20

    method volar(metros) {
        energia = energia - metros * 10
    }

    method comer (comida) {
        energia += comida.energia()
    }	
}

object alpiste {
    method energia() = 5
}

object manzana {
	var madurez = 0
    var llegoAMadurezMax = false
    var manzanaPodrida = false

	method energia() {
        if (manzanaPodrida) {
            return 0
        }
		return 50 + madurez / 2	
	}
	
	method madurar() {
		if (llegoAMadurezMax) {
        madurez += 10
            if (madurez == 100) {
                llegoAMadurezMax = true
            }
        }else{
            madurez -= 40
            if (madurez == 0) {
                manzanaPodrida = true
            }
        }
	}    
}
