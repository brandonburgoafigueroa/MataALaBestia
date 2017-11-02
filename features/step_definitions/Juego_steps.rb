Given("Visito la pagina del juego") do
    visit '/Juego'
  end
  
  Then("Deberia mostrar el boton {string}") do |string|
    last_response.body.should =~ /#{string}/m
  end
  