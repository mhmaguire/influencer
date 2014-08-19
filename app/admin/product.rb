ActiveAdmin.register Product do


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

  form html: {multipart: true} do |f|
    f.inputs "Image", for: [:image, f.object.image || Product::Image.new] do |image_form|
      image_form.input :attachment, :hint => f.template.image_tag(image_form.object.url(:thumb))
    end
    f.inputs do 
      f.input :model
      f.input :brand
      f.input :price_cents
    end
    f.actions
  end
end
