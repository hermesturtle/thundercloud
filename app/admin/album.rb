ActiveAdmin.register Album do
  index do
    column :name
    column :artist
    default_actions
  end
end
