def nyc_pigeon_organizer(data)
  bird_names = []
  pigeon_list = {}
  data.each do |some_birds, catz|
    catz.each do |bird_traits, bird_names_creation|
      bird_names << bird_names_creation
    end
  end
  bird_names.flatten!.uniq!
  bird_names.each do |name|
    pigeon_list[name] = {}
    data.each do |catz, valz|
      pigeon_list[name][catz] = []
      data[catz].each do |personal_trait, bird_name_check|
        bird_name_check.each do |bird_name_check_flatten|
          if name == bird_name_check_flatten
            pigeon_list[name][catz] << personal_trait.to_s
          end
        end
      end
    end
  end
  pigeon_list
end
