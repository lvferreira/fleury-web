Before do
    @busca_page = BuscaPage.new
end

#Aqui é criada uma condição para anexar o print(screenshot),seguindo o padrão do Allure, após a execução do cenário.
After do |scenario|
    folder = 'logs/screenshots'
    nome   = scenario.name #.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/, '')
    temp_shot   = page.save_screenshot("#{folder}/#{nome}.png")
    #log shot
  
    Allure.add_attachment(
      name: "Screenshot",
      type: Allure::ContentType::PNG,
      source: File.open(temp_shot),
    )
  end
