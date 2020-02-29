def add_to_new_hash(header, subheader, h)

end

def nyc_pigeon_organizer(data)
  reorganized = {}
  data.each do |header, subhash|
    subhash.each do |subheader, names|
      names.each do |name|
        if !reorganized[name]
          reorganized[name] = {}
        end
        if !reorganized[name][header]
          reorganized[name][header] = []
        end
        reorganized[name][header] = subheader.to_s
      end
    end
  end
  return reorganized
end
