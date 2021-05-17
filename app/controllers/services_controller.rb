class ServicesController < ApplicationController
    before_action :set_post, only:[:show, :edit, :update, :destroy]


def index
    @services = Service.all
end

def new
    @service = Service.new
end

def show
    @service = Service.find(params[:id])
end

def create
    @service = Service.new(post_params)

    if @service.save
        redirect_to services_new_path, notice: "You created successfully"
    else
        render 'new'
    end
end

def update
    if @service.update(post_params)
        redirect_to @service, notice:"Successfully updated"
    else
        render :edit, alert:"Your post wasn't updated"
    end
end

def destroy
    @service.destroy
    redirect_to @service, notice: "Your post was deleted"
end

def set_post
    @service = Service.find(params[:id])
end

    private
    def post_params
        params.require(:service).permit(:title, :body, :service_icon)
       end
end


