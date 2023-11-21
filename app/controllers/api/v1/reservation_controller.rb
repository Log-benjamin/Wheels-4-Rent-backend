class Api::V1::ReservationController < ApplicationController
  before_action :set_reservation, only: %i[destroy]

  # GET /reservation
  def index
    @reservations = Reservation.all.includes(:car, :user)
    data = @reservations.map do |reservation|
      {
        id: reservation.id,
        start_date: reservation.start_date,
        end_date: reservation.end_date,
        city: reservation.city,
        user: reservation.user.name,
        user_id: reservation.user.id,
        car: reservation.car.name,
        model: reservation.car.model,
        price: reservation.car.price_per_day,
        total_price: reservation.car.price_per_day * reservation.days,
        image: reservation.car.image
      }
    end

    render json: data
  end

  # POST /reservation
  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      render json: { reservation: @reservation, status: 200 }, status: :created
    else
      render json: { status: 404, errorMessage: @reservation.errors.full_messages.to_sentence }
    end
  end

  # DELETE /reservation/1
  def destroy
    return unless @reservation.destroy

    render json: { id: @reservation.id }
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :city, :car_id, :user_id, :days)
  end
end
