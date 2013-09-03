ActiveAdmin.register Product do
  index do
    column :name
    default_actions
  end

  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :description
      f.input :image, as: :file
      f.input :price, label: "Price (in cents)"
      f.input :artist_id, as: :select , collection: options_from_collection_for_select(Artist.all, :id, :name)

      f.actions
    end
  end
end
