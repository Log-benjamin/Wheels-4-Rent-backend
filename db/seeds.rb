    admin=User.create({ name: "admin", email: 'admin@wheels4rent.com', password: '123456789', is_admin: true })

    if admin.valid?
        admin.save()

    elsif admin.errors.any?
        admin.errors.full_messages.each do |msg|
            puts msg
        end
    else
        puts "****NOT VALID****"
    end
