# module Calculateelectricbill
 require 'current_predictor'
class CalculateelectricbillsController < ApplicationController 
   # class Base
    def basedonroom
      
    end
   
    def show 
     @number = params[:rooms].to_i
        # report = Current.new
        puts @number
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
      puts appliance
       @appliance = appliance
     puts @appliance
    end
    
    
     def showbasedonammenities
      cost = 0.1989
      @final = Hash.new()
      @watt = Hash.new()
      @appliance = Appliance.all
     @appliance.each do |p| 
        key = p.Appliance_name
        value = p.Appliance_watt
      puts "kksfbskbf #{key} and the value is #{value}"
         params.each do |b,a|
       if key == b
        a = a.to_i
           @final.store(key,a)
           @watt.store(key,value)
       end
       end
       end
     @final.each do |a,b|
      puts "THE KEY IS #{a} and the value is #{b}"
     end
     @watt.each do |a,b|
      puts "THE KEY IS #{a} and the value is #{b}"
     end
    @value = CurrentPredictor::Calculation.consumption(@watt,@final,cost)
end
  
  def basedonmeter
   @provider =[]
     @currentprovider = Currentprovider.all
     @currentprovider.each do |a|
         a = a.providername
         @provider << a
        end
         puts @provider
  end
  def showbasedonmeter
   @currentprovider = Currentprovider.all
     @currentprovider.each do |a|
      @a = params[:electricprovider]
      puts a.providername
   puts "dskbdkbdfsd #{@a}" 
   if @a == a.providername 
      puts "fucker"
      @cost = a.cost
      @standardcharge = a.standingcharge
      @pslv = a.pslvcharge
   end
  end
  previousreading = params[:previousbill]
  currentreading = params[:currentbill]
  
 @value = CurrentPredictor::Calculation.basedonmeter(@cost, @standardcharge,@pslv,previousreading,currentreading)
 puts "hbjhbjhjhvv #{@value[0]}andddd #{@value[1]}"

  puts "THE COST IS #{@cost} and its standard charge is #{@standardcharge} and pslv charge is #{@pslv}"
  end

end

