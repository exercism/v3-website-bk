return if Rails.env.production?

ihid = User.create!(name: "Jeremy Walker", handle: 'iHiD', email: "jeremy@thalamus.ai", password: 'password', admin: true)
#BootstrapUser.(ihid)
