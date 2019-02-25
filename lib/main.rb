#main.rb
require_relative "planet"
require_relative "solar_system"

def main
  earth = Planet.new(name: "Earth", color: "blue-green", mass_kg: 5.972e24, distance_from_sun_km: 1.496e8, fun_fact: "It has llamas living on it")

  mars = Planet.new(name: "Mars", color: "red", mass_kg: 6.39e23, distance_from_sun_km: 2.29e8, fun_fact: "It is named after the Roman god of war")

  super_hot_planet = Planet.new(name: "Ignis", color: "white", mass_kg: 100, distance_from_sun_km: 10, fun_fact: "It's wayyyy too close to the sun")

  #   puts earth.summary
  #   puts mars.summary
  #   puts super_hot_planet.summary

  solar_system = SolarSystem.new("Sol")
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(super_hot_planet)
  #   puts solar_system.list_planets

  #   found_planet = solar_system.find_planet_by_name("mars")
  #   puts found_planet

  #   puts found_planet.summary

  #   puts solar_system.distance_between(earth, super_hot_planet)

  puts "What would you like to do next (\"list planets\", \"planet details\", or \"exit\")? "
  while input = gets.chomp
    case input
    when "list planets"
      puts solar_system.list_planets
    when "planet details"
      print "Which planet would you like to know more about? "
      planet = gets.chomp
      found_planet = solar_system.find_planet_by_name(planet)
      puts found_planet.summary
    when "exit"
      exit
    end

    puts "What would you like to do next (\"list planets\", \"planet details\", or \"exit\")? "
  end
end

main
