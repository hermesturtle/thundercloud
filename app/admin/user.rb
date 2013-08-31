ActiveAdmin.register User do
  index do
    column :email
    default_actions
  end

  show do |user|
    attributes_table do
      row :email
      row :confirmed_at
    end
  end

  form do |f|
    f.inputs "Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation

      f.actions
    end
  end
end
