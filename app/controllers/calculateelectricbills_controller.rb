# module Calculateelectricbill
 require 'current_predictor'
class CalculateelectricbillsController < ApplicationController 
   # class Base
    def basedonroom
      
    end
    def cost
        #raise 'Must Implement'
    end
     def show
        
     end
   #  end 
    class Current < Calculateelectricbills
     def cost 
      @cost = 2 
    end
    def show 
     @number = params[:rooms].to_i
        # report = Current.new
        @value = CurrentPredictor::Calculation.monthlyconsumption(1400,@number,cost)
        @year = CurrentPredictor::Calculation.yearlyconsumption_onrooms(1400,@number,cost)
    end
   end
end

#end


