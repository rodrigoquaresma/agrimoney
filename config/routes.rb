Agrimoney::Application.routes.draw do

root 'site#index', :as => :agrimoney_home, :defaults => { :content => "home" }

get "/o-evento", :to => "site#index", :as => :agrimoney_evento, :defaults => { :content => "evento" }
get "/programacao", :to => "site#index", :as => :agrimoney_programacao, :defaults => { :content => "programacao" }
get "/palestrantes", :to => "site#index", :as => :agrimoney_palestrantes, :defaults => { :content => "palestrantes" }
get "/local", :to => "site#index", :as => :agrimoney_local, :defaults => { :content => "local" }
get "/inscricoes", :to => "site#index", :as => :agrimoney_inscricoes, :defaults => { :content => "inscricoes" }
get "/contato", :to => "site#index", :as => :agrimoney_contato, :defaults => { :content => "contato" }

end
