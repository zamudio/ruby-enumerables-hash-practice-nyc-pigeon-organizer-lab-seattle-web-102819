def nyc_pigeon_organizer(data)
  pigeon_hash = Hash.new
  data.each do |key, value|
    value.each do |new_values, name_keys|
      name_keys.each do |name_keys|
        if !pigeon_hash[name_keys]
          pigeon_hash[name_keys] = Hash.new
        end
        if !pigeon_hash[name_keys][key]
          pigeon_hash[name_keys][key] = Array.new
        end
        pigeon_hash[name_keys][key] << new_values.to_s
      end
    end
  end
  pigeon_hash
end


#def nyc_pigeon_organizer(data)
#  new_hash = {}
#  data.each do |key, value|
#    value.each do |new_value, names|
#      names.each do |name|
#        
#        if !new_hash[name]
#          new_hash[name] = {}
#        end
#
#        if !new_hash[name][key]
#          new_hash[name][key] = []
#        end
#
#        new_hash[name][key] << new_value.to_s
#
#      end
#    end
#  end
#  new_hash
#end