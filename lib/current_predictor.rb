module CurrentPredictor
    class Calculation
      def self.yearlyconsumption_onrooms(matter,room,cost)
        consumption = matter
        cost = cost
        puts "Enter the number of rooms : "
        a = room
        b = consumption*a
        c = b*cost
        puts "Yearly consumption of a #{a} BHK rooms in terms of power consumption is #{b} KWH"
        return a,b,c
      end
 
      def self.monthlyconsumption(matter,room,cost)
         consumption = matter
         cost = cost
         puts "Enter the number of rooms : "
         a = room
         b = (consumption*a)/12
         c = b*cost
        puts "Monthly consumption of a #{a} BHK rooms in terms of power consumption is #{b} KWH and the cost is #{c}"

        return a,b,c
      end
  def self.consumption(appliances,regular,cost)
     appconsumed = appliances
        reg = regular
     cost = cost
     sum = 0
        reg.each do |ammenties,watt|
          appconsumed.each do |key,value|
                if (key == ammenties)
                     washing = value * watt
                 sum = washing+sum
                end
                if (key == ammenties)
                    light = value * watt
                    sum = light+sum
                end
                if (key == ammenties)
                     cooker = value * watt
                 sum = cooker+sum
                end
                if (key == ammenties)
                    computer = value * watt
                    sum = computer+sum
                    puts "THE SUM OUTSTIDE IS #{sum}"
                end
            end
      end
                    puts "THE SUM OUTSTIDE IS #{sum}"
  
                sum = sum/1000
                puts "THE SUM OUTSTIDE IS #{sum}"
                amount = sum * cost
               puts "Complete consumption per day for you is #{sum} KWH and its cost is #{amount}"
               month = sum * 30
               value = cost * month
               puts "Complete consumption per month for you is #{month} KWH and its cost is #{value} "
               return sum,month,value
  end
            def self.basedonmeter(cost, standardcharge,pslv,previousreading,currentreading)
                cost = cost
                 puts cost
                standardcharge = standardcharge
                puts standardcharge
                standardcharge = (standardcharge/12).to_i
                puts standardcharge
                pslv = pslv
                puts pslv
                pslv = (pslv/12).to_i
                puts pslv
                previousreading = previousreading.to_i
                currentreading = currentreading.to_i
                puts previousreading
                puts currentreading
                meterreading = (currentreading-previousreading)
                finalcost = ((meterreading*cost)+standardcharge+pslv)
                puts finalcost
                return meterreading,finalcost
                
            end
    end
end


