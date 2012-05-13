namespace :heroku do
  namespace :secrets do
    desc 'Set secret.yml configuration as ENV variables' 
    task :config do
      puts "Reading config/secrets.yml and sending config vars to Heroku..."
      CONFIG = YAML.load_file('config/secrets.yml') rescue {}
      command = "bundle exec heroku config:add"
      CONFIG.each {|key, val| command << " #{key.upcase}=#{val} " if val }
      system command  
    end
  end
end
