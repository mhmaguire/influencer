ActiveAdmin.register Influencer do


  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  form html: {multipart: true } do |f|
    f.inputs "Headshot", for: [:headshot, f.object.headshot || Influencer::Headshot.new] do |image_form|
      image_form.input :attachment, :hint => f.template.image_tag(image_form.object.url(:thumb))
    end
    f.inputs "Details" do 
      f.input :name
    end
    f.actions
  end


end
