rails_env = ENV['RAILS_ENV'] || 'development'

worker_processes Integer(ENV["WEB_CONCURRENCY"] || 3)
timeout 30
preload_app true

case rails_env
when 'development'
  listen 3002
  listen "#{`pwd`.strip}/tmp/sockets/#{rails_env}.sock"
end

before_fork do |server, worker|
  Signal.trap 'TERM' do
    puts 'Unicorn master intercepting TERM and sending myself QUIT instead'
    Process.kill 'QUIT', Process.pid
  end

  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.connection.disconnect!
end

after_fork do |server, worker|
  Signal.trap 'TERM' do
    puts 'Unicorn worker intercepting TERM and doing nothing. Wait for master to send QUIT'
  end

  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.establish_connection
end
