class LocomotiveEngineer
  # 1. Create a list of all wagons
  def self.generate_list_of_wagons(*wagon_ids)
    wagon_ids
  end

  # 2. Fix the list of wagons
  def self.fix_list_of_wagons(wagon_ids, new_wagon_ids)
    # Move the first two wagons to the end
    moved_wagons = wagon_ids.shift(2)
    # Combine the locomotive (1) with new wagons and remaining wagons
    [1] + new_wagon_ids + wagon_ids + moved_wagons
  end

  # 3. Add missing stops
  def self.add_missing_stops(routing_info, **additional_stops)
    stops_array = additional_stops.values
    routing_info[:stops] = stops_array
    routing_info
  end

  # 4. Extend routing information
  def self.extend_route_information(route_info, additional_info)
    route_info.merge(additional_info)
  end
end