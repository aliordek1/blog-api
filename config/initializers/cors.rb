Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # Frontend'imizin çalıştığı adrese (localhost:3000) izin veriyoruz
    origins "http://localhost:3000" 

    resource "*",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end 