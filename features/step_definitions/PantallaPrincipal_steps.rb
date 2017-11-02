Given("Visito la pagina de inicio") do
        visit '/'
  end
  
  Then("deberia mostrar el boton {string}")do |string|
    last_response.body.should =~ /#{string}/m
  end