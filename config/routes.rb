Rails.application.routes.draw do



  root 'families#index'


  resources :kids do
    member do
      get :check_in_one_kid
      get :check_out_one_kid
    end
    collection do
      get :check_in_index
      get :check_out_index
     end
  end

  resources :families do
      member do
        get :newchild
      end
    end
  
 resources :school_rides, only: [:new, :create]
 resources :home_rides, only: [:new, :create]
    

end
