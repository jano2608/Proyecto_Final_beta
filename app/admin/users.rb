ActiveAdmin.register User do

  index do  
    column :id  
    column :name
    column :email  
    column :created_at
    column :sign_in_count 
    actions
  end
  form do|f|  
    inputs 'Agregar un nuevo usuario' do  
      input :name  
      input :email    
      input :password
    end  
    actions
  end
  controller do 
    def update 
      if (params[:user][:password].blank?&& params[:user]  [:password_confirmation].blank?)       
        params[:user].delete("password")       
        params[:user].delete("password_confirmation")
        end
        super
        end
      end

  permit_params :email, :password ,:name


  
end
