class VouchersController < ApplicationController
  before_action :set_voucher, only: [:show, :edit, :update, :destroy]

  # GET /vouchers
  # GET /vouchers.json
  def index
    @vouchers = Voucher.all
  end

  # GET /vouchers/1
  # GET /vouchers/1.json
  def show
  end

  # GET /vouchers/new
  def new
    @voucher = Voucher.new
  end

  # GET /vouchers/1/edit
  def edit
  end

  # POST /vouchers
  # POST /vouchers.json
  def create
    # makeitbeabletofind
    restaurant = Restaurant.find_by(name: params["voucher"][:restaurant])
    restaurant = create_restaurant(params["voucher"][:restaurant]) if restaurant.nil?
    # lalalal
    @voucher = Voucher.new(voucher_params)
    @voucher[:restaurant] = Restaurant.last
    # @voucher = Voucher.new(
    #   cost: voucher_params[:cost],
    #   notes: voucher_params[:notes],
    #   restaurant: restaurant
    # )

    #     @post = Post.new(
    #   photo: params["post"][:photo],
    #   note: params["post"][:note],
    #   place: place,
    #   user: current_user
    # )

    respond_to do |format|
      if @voucher.save
        format.html { redirect_to @voucher, notice: 'Voucher was successfully created.' }
        format.json { render :show, status: :created, location: @voucher }
      else
        format.html { render :new }
        format.json { render json: @voucher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vouchers/1
  # PATCH/PUT /vouchers/1.json
  def update
    respond_to do |format|
      if @voucher.update(voucher_params)
        format.html { redirect_to @voucher, notice: 'Voucher was successfully updated.' }
        format.json { render :show, status: :ok, location: @voucher }
      else
        format.html { render :edit }
        format.json { render json: @voucher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vouchers/1
  # DELETE /vouchers/1.json
  def destroy
    @voucher.destroy
    respond_to do |format|
      format.html { redirect_to vouchers_url, notice: 'Voucher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def create_restaurant(params)
    restaurant = Restaurant.new(name: params)
    restaurant.save
    return restaurant
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voucher
      @voucher = Voucher.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def voucher_params
      params.require(:voucher).permit(:cost, :notes)
    end
end
