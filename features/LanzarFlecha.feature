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
Scenario:
        Given   Visito la pagina del juego
        When    presiono el boton "Ir Al Sud"
        And     presiono el boton "Lanzar Flecha Al Sud"
        Then    deberia mostrar el mensaje "Mataste al monstruo"