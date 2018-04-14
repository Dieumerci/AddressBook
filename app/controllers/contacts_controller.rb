class ContactsController < ApplicationController

    before_action :find_contact, only: [:show, :edit, :update, :destroy]

    def index
        @contacts = Contact.all.order("created_at DESC")  
    end

    def show 
       
    end

    def new
        @contact = Contact.new  
    end

    def create   
        @contact = Contact.new(contact_params)

            if @contact.save
                redirect_to root_path
            else
                render 'new'
            end
    end

    def edit
       
    end

    def update
        if @contact.update(contact_params)
          flash[:success] = "Contact was successfully updated"
          redirect_to contact_path(@contact)
        else
          flash[:error] = "Something went wrong"
          render 'edit'
        end
    end

    def destroy
        
        if @contact.destroy
            flash[:success] = 'Contact was successfully deleted.'
            redirect_to root_path
        else
            flash[:error] = 'Something went wrong'
            redirect_to objects_url
        end
    end
    
    
    

    private 
        def contact_params
             params.require(:contact).permit(:name, :email, :cell, :date)
        end

        def find_contact
            @contact = Contact.find(params[:id])
        end
end