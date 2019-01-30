def nyc_pigeon_organizer(data)
  # write your code here!
  ret = {}
  data[:gender].each do |gender, pidgeons|
    pidgeons.each do |p|
      ret[p] = {}
      ret[p][:gender] = [gender.to_s]
      ret[p][:color] = []
      ret[p][:lives] = []
    end
  end
  
  data[:color].each do |color, pidgeons|
    pidgeons.each do |p|

      ret[p][:color] << color.to_s
    end
  end
  data[:lives].each do |lives, pidgeons|
    pidgeons.each do |p|

      ret[p][:lives] << lives.to_s
    end
  end

  ret
end