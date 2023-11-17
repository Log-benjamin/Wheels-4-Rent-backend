class Api::V1::ReservationController < ApplicationController
  # POST /reservations
  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      render json: { reservation: @reservation, status: 200 }, status: :created
    else
      render json: { status: 404, errorMessage: @reservation.errors.full_messages.to_sentence }
    end
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :city, :car_id, :user_id)
  end
end
