ActiveAdmin.register Album do
  index do
    column :name
    column :artist
    default_actions
  end

  show do |album|
    attributes_table do
      row :name
      row :description
      row :image do image_tag(album.image.url) end
    end
  end

  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :description
      f.input :image, as: :file
      f.input :artist

      f.actions
    end
  end
end
