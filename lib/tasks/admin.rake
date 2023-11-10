namespace :admin do
  desc 'TODO'
  task create_admin: :environment do
    User.create!({ name: 'admin', email: 'admin@wheels4rent.com', password_digest: '123456789', is_admin: true })
  end
end

#  run 'rails admin:create_admin' to create the admin
