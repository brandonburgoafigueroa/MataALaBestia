Feature:    Como    jugador
            Quiero  Comenzar a jugar
            Para    jugar

Scenario:
            Given   Visito la pagina de inicio
            Then    deberia mostrar el boton "Comenzar a jugar"
Scenario:
            Given   Visito la pagina de inicio
            When    presiono el boton "Comenzar a jugar"
            Then    Deberia mostrarme la pagina del juego