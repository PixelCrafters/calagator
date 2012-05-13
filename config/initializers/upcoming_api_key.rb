default_upcoming_api_key = 'f12d0c34c0'

if ENV['UPCOMING_API_KEY'].blank? or ENV['UPCOMING_API_KEY'] == default_upcoming_api_key
  ENV['UPCOMING_API_KEY'] = default_upcoming_api_key
  puts "WARNING!: Using default Upcoming API key, see 'API Keys' in INSTALL.md"
end
