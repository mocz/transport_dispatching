class ChartsController < ApplicationController
    def new_dispatches 
        render json: Dispatch.group_by_day_of_week(:created_at, format: "%a").count
    end

    def new_receiving 
        render json: Dispatch.group_by_day_of_week(:time_arrived, format: "%a").count
    end

    def new_plantation
        render json: Area.group(:town).count
    end
end