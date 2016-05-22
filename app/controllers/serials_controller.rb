class SerialsController < ApplicationController
    before_action :find_serial, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, only:[:new, :edit]
    
      def index
        if params[:category].blank?
        @serials = Serial.all.order("created_at DESC")
        else
        @category_id = Category.find_by(nazwa: params[:category]).id
        @serials = Serial.where(:category_id => @category_id).order("created_at DESC")
        end
          if params[:search]
				@serials = Serial.search(params[:search]).paginate(:page => params[:page], :per_page => 8)
				else
  @serials = Serial.paginate(:page => params[:page], :per_page => 8)
  end
    end

    
    def show
       if @serial.reviews.blank?
           @average_review = 0
       else
           @average_review = @serial.reviews.average(:rating).round(2)
       end
    end
    
    
    def new
        @serial = current_user.serials.build
        @categories = Category.all.map{ |c| [c.nazwa, c.id] }
    end
    
    def create
        @serial = current_user.serials.build(serial_params)
        @serial.category_id = params[:category_id]
        
        if @serial.save
            redirect_to root_path
        else
            render 'new'
        end
    end
    
    def edit
           @categories = Category.all.map{ |c| [c.nazwa, c.id] }
    end
    
    def update
          @serial.category_id = params[:category_id]
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
            params.require(:serial).permit(:tytul, :rezyser, :opis, :pochodznie, :category_id, :serial_img)
        end
        
        def find_serial
            @serial = Serial.find(params[:id])
        end

end
