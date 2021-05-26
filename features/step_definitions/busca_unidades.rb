Dado('que acesso o site do Fleury') do
    @busca_page.load    
  end
  
  Quando('clico na opcao de Unidades') do
    @busca_page.click_unidades      
  end
  
  Quando('informo as facilidades para busca') do
    @busca_page.sel_facilidades
    @busca_page.click_detalhes
  end
  
  Então('o sistema retorna a Unidade mais adequada') do             
    find(:css, 'div[class*="hVKKCN"]').should be_visible #aqui foi necessário aguardar esse componente ficar visível, senão o JS atualiza a página sem a Unidade selecionada
    @busca_page.colect_unid      
   expect($unidetalhe).to eql($unidade_obtida) #aqui é comparado o resultado das unidades mediante ao resultado da busca após a aplicação dos filtros e o nome da unidade do detalhe       
  end