FactoryGirl.define do
  factory :macroinvertebrate_sample do
    phylum 'Arthropoda'
    location_within_plot 'on a rock'
    quantity 1
    ecosystem_service 'Pollinator'
    biodiversity_report
    photo ''
  end

  factory :empty_macroinvertebrate_sample, class: MacroinvertebrateSample do
    phylum ''
    location_within_plot ''
    quantity ''
    ecosystem_service ''
    biodiversity_report nil
    photo ''
  end
end
