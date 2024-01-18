Rails.application.routes.draw do
  root to: 'home#index'
  get 'home/template_pdf', to: 'home#template_pdf'

  get "up" => "rails/health#show", as: :rails_health_check
end
