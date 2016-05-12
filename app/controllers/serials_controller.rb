class SerialsController < ApplicationController
    before_action :find_serial, only: [:show, :edit, :update, :destroy]
    
    def index
        @serial = Serial.all.order("created_at DESC")
    end
    
    def show
       
    end
    
    
    def new
        @serial = Serial.new
    end
    
    def create
        @serial = Serial.new(serial_params)
        
        if @serial.save
            redirect_to root_path
        else
            render 'new'
        end
    end
    
    def edit
    end
    
    def update
        if @serial.update(serial_params)
            redirect_to serial_path(@serial)
        else
            render 'edit'
        end
            
    end
    
    def destroy
        @serial.destroy
        redirect_to root_path
    end
    
    private
        def serial_params
            params.require(:serial).permit(:tytul, :rezyser, :opis, :pochodznie)
        end
        
        def find_serial
            @serial = Serial.find(params[:id])
        end
end
