# module Calculateelectricbill
 require 'current_predictor'
class CalculateelectricbillsController < ApplicationController 
   # class Base
    def basedonroom
      
    end
   
    def show 
     @number = params[:rooms].to_i
        # report = Current.new
        cost = 0.1586
        @value = CurrentPredictor::Calculation.monthlyconsumption(1400,@number,cost)
        @year = CurrentPredictor::Calculation.yearlyconsumption_onrooms(1400,@number,cost)
    end
    def basedonammenities
     @appliance = Appliance.all
    end
   end


#end


