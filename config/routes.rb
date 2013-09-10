Agrimoney::Application.routes.draw do

get "/", :to => "agrimoney#index", :as => :agrimoney_index, :defaults => { :content => "home" }
get "/o-evento", :to => "agrimoney#index", :as => :agrimoney_evento, :defaults => { :content => "evento" }
get "/programacao", :to => "agrimoney#index", :as => :agrimoney_programacao, :defaults => { :content => "programacao" }
get "/palestrantes", :to => "agrimoney#index", :as => :agrimoney_palestrantes, :defaults => { :content => "palestrantes" }
get "/local", :to => "agrimoney#index", :as => :agrimoney_local, :defaults => { :content => "local" }
get "/inscricoes", :to => "agrimoney#index", :as => :agrimoney_inscricoes, :defaults => { :content => "inscricoes" }
get "/contato", :to => "agrimoney#index", :as => :agrimoney_contato, :defaults => { :content => "contato" }
  
end
