Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:create]
  end
end

# 1) Criar um novo projeto rails -> rails new
# 2) Criamos um modelo e migramos (rails g model -> rails db:migrate)
# 3) Criamos nossa seeds
# 4) Geramos no controller (rails g controller)
# 5) Entramos no ritual routes -> controller -> view
# 6) Preciso de um novo model? Crio outro model (rails g model)
# 7) Esqueci um campo /
#      preciso atualizar meu model -> crio uma migration (rails g migration)
#      executo a migration -> rails db:migrate
