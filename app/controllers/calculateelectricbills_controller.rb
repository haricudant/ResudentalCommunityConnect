 require 'current_predictor'
class CalculateelectricbillsController < ApplicationController
    def basedonroom
    
    end
    
    def basedonammenities
       cost = 0.1968   
       appliances = Hash.new()
       find = {"Light"=>100,"Washing_machiene"=>600,"Cooker"=>660,"Computer"=>166}
       appliances = {"Light"=>10,"Washing_machiene"=>4,"Cooker"=>3,"Computer"=>3}
       @value = CurrentPredictor::Calculation.consumption(find,appliances,cost)
       puts @value
    end
    def show
        cost = 2    
        @number = params[:rooms].to_i
        @value = CurrentPredictor::Calculation.monthlyconsumption(1400,@number,cost)
        @year = CurrentPredictor::Calculation.yearlyconsumption_onrooms(1400,@number,cost)
  
    end
end
