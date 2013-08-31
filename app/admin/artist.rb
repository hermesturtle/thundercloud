ActiveAdmin.register Artist do
  index do
    column :name
    default_actions
  end

  filter :name

  show do |artist|
    attributes_table do
      row :name
      row :image do image_tag(artist.image.url) end
    end
    panel "Albums" do
      table_for artist.albums do |album|
        column :name
      end
    end
  end

  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :description
      f.input :image, as: :file
      f.input :albums

      f.actions
    end
  end

end
