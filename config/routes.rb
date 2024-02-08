Rails.application.routes.draw do
  root to: 'resume#index'
  get 'resume/template_pdf', to: 'resume#template_pdf'

  get "up" => "rails/health#show", as: :rails_health_check
end
