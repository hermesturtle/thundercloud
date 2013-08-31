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

      f.actions
    end
  end
end
