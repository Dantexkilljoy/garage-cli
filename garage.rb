require_relative "car"

class Garage
  def initialize
    @cars = []
  end

  def open
    puts "Welcome to the garage!"

    loop do 
      if @cars.empty? 
        puts 'Garage is empty. Want to type "store" to start filling it up or type exit to leave?'
      else
        puts 'Type "store", "retrieve", or "list" to use the garage or type exit to leave.'
      end

      job = gets.chomp

      case job 
      
      when "store"
          log()
          drive_in(@make, @model, @year, @color)
          

      when "retrieve"
          log()
          drive_out(@make, @model, @year, @color)

      when "list"
        options()

      when "exit"
        puts "See you around."
        break

      else
        puts "Did you type something wrong?"
      end
    end
  end

 

  private

  def drive_in(make, model, year, color)
    car = Car.new(make, model, year, color)
    @cars.push(car)
    puts "#{car.to_s} has been pulled in."
  end

  def drive_out(make, model, year, color)
    car = @cars.find { |car| car.to_s }

    @cars.delete(car)

    puts "#{car.to_s} has left the garage."
  end

  def log()
    puts "enter make"
    @make = gets.chomp
    puts "enter model"
    @model = gets.chomp
    puts "enter year"
    @year = gets.chomp
    puts "enter color"
    @color = gets.chomp
  end

  def options()
    if @cars.empty?
      "No cars at the moment."
    else
      @cars.each do |car|
        puts car.to_s
      end
    end
  end
end
