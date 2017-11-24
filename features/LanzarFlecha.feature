Feature:    Como    jugador
            Quiero  Lanzar flecha
            Para    Matar al monstruo
Scenario:
        Given   Visito la pagina del juego
        Then    deberia mostrar el boton "Lanzar Flecha Al Oeste"
Scenario:
        Given   Visito la pagina del juego
        Then    deberia mostrar el boton "Lanzar Flecha Al Este"
Scenario:
        Given   Visito la pagina del juego
        Then    deberia mostrar el boton "Lanzar Flecha Al Norte"
Scenario:
        Given   Visito la pagina del juego
        Then    deberia mostrar el boton "Lanzar Flecha Al Sud"        
Scenario:
        Given   Visito la pagina del juego
        Then    deberia mostrar el boton "Lanzar Spray Al Sud"   
Scenario:
        Given   Visito la pagina del juego
        Then    deberia mostrar el boton "Lanzar Spray Al Norte"
Scenario:
        Given   Visito la pagina del juego
        Then    deberia mostrar el boton "Lanzar Spray Al Este"
Scenario:
        Given   Visito la pagina del juego
        Then    deberia mostrar el boton "Lanzar Spray Al Oeste"     

        Given   Visito la pagina del juego
        When    presiono el boton "Salir del juego"
        And     presiono el boton "Comenzar a jugar"
        And     presiono el boton "Ir al sud"
        And     presiono el boton "Lanzar Flecha Al Sud"
        Then    deberia mostrar el mensaje "La flecha choco contra la pared"

Scenario:
        Given   Visito la pagina del juego
        When    presiono el boton "Salir del juego"
        And     presiono el boton "Comenzar a jugar"
        And     presiono el boton "Ir al sud"
        And     presiono el boton "Lanzar Spray Al Sud"
        Then    deberia mostrar el mensaje "El murcielago esta dormido"
