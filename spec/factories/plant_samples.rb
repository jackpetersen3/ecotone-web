FactoryGirl.define do
  factory :plant_sample do
    collected_on Date.today
    abundance 1
    percent_cover 1
    biomass_estimate 1.0
    photo ''
    plant
    plot
    user
  end

  factory :empty_plant_sample, class: PlantSample do
    collected_on nil
    abundance ''
    percent_cover ''
    biomass_estimate nil
    photo ''
    plant nil
    plot nil
    user nil
  end
end
