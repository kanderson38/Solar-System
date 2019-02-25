class Planet
    
    def initialize (name: name, color: color, mass_kg: mass_kg, distance_from_sun_km: distance_from_sun_km, fun_fact: fun_fact)
        @name = name
        @color = color
        @mass_kg = mass_kg
        @distance_from_sun_km = distance_from_sun_km
        @fun_fact = fun_fact

    attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact


end