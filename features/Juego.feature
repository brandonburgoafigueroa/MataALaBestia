Feature:    Como    jugador
            Quiero  salir del juego
            Para    dejar de jugar

Scenario:
            Given   Visito la pagina del juego
            Then    deberia mostrar el boton "Salir del juego"
Scenario:
            Given   Visito la pagina del juego
            When    presiono el boton "Salir del juego"
            Then    Deberia mostrarme la pagina del juego

Scenario:
            Given   Visito la pagina del juego
            Then    deberia mostrar el mensaje "Estas en la cueva Nº 1"