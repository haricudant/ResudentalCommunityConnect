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
    appliance = []
       cost = 0.1968   
      @service = Appliance.all
      @service.each do |p|
          appliance << p.Appliance_name
      end
       @appliance = appliance
     
    end
   end


#end


