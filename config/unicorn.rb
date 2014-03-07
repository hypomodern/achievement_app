rails_env = ENV['RAILS_ENV'] || 'development'

worker_processes (rails_env == 'development' ? 2 : 6)
timeout 60
preload_app true

case rails_env
when 'production', 'staging'
  pid '/var/www/achievements/shared/pids/unicorn.pid'
  listen "/var/www/achievements/tmp/sockets/#{rails_env}.sock", :backlog => 2048
else
  listen 3002
  listen "#{`pwd`.strip}/tmp/sockets/#{rails_env}.sock"
end

before_fork do |server, worker|
  # Using this method we get 0 downtime deploys.
  old_pid = '/var/www/achievements/shared/pids/unicorn.pid.oldbin'

  if File.exists?(old_pid) && server.pid != old_pid
    begin
      Process.kill("QUIT", File.read(old_pid).to_i)
    rescue Errno::ENOENT, Errno::ESRCH
      # someone else did our job for us
    end
  end
end

after_fork do |server, worker|
  # Signal.trap 'TERM' do
  #   puts 'Unicorn worker intercepting TERM and doing nothing. Wait for master to send QUIT'
  # end
end
