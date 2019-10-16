class CouponsController < ApplicationController
    before_action :current_coupon, only: [:show, :edit, :update]

    def index
        @coupons = Coupon.all
    end
    
    def new
        @coupon = Coupon.new
    end
    
    def create
        @coupon = Coupon.create(coupon_params)
        redirect_to coupons_path
    end
    
    def edit
    
    end
    
    def update
    
    end
    
    def show
    
    end
    
    def destroy
    
    end

    private

    def coupon_params
        params.require(:coupon).permit(:coupon_code, :store)
    end

    def current_coupon
        @coupon = Coupon.find(params[:id])
    end
end
