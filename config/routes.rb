Rails.application.routes.draw do



  root 'families#index'


  resources :kids

  resources :families do
      member do
        get :newchild
      end
    end
  
 resources :school_rides, only: [:new, :create]
    

end
