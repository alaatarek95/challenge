module PlacesHelper
    def places_for_select
        Place.all.collect { |m| [m.name, m.id] }
    end
end
