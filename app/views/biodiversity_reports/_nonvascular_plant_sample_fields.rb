%fieldset.nonvascular_plant_sample
  = f.hidden_field :_destroy
  = f.label :location_within_plot
  = f.text_field :location_within_plot, class: 'form-control'
  = f.label :description
  = f.text_area :description, class: 'form-control'
  = f.label :photo
  = f.file_field :photo, class: 'form-control'