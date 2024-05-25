# features/step_definitions/scrolling_steps.rb

Dado('que o usuario queira rolar a pagina')do
  visit ''
  sleep 5
end

Quando("eu rolar para baixo") do
  page.execute_script("window.scrollBy(0, 500)")
end

E("eu rolar para cima") do
  page.execute_script("window.scrollBy(0, -500)")
end

Entao('sera verificado que o scroll esta OK')do
end
