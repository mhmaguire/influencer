ActiveAdmin.register Look do


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
    f.inputs do 
      f.input :influencer
      f.input :category, as: :radio
    end

    f.inputs "Primary Image", for: [:primary_image, f.object.primary_image || Look::PrimaryImage.new] do |image_form|
      image_form.input :attachment, :hint => f.template.image_tag(image_form.object.url(:thumb))
    end

    f.inputs "Content" do 
      f.input :title
      f.input :body
    end

    f.inputs do 
      f.has_many :product_groups do |pg|
        pg.input :name
        pg.has_many :items do |item_form|
          item_form.input :product
        end
      end
    end
    f.actions
  end
end
