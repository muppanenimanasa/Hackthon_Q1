class CommandsController < ApplicationController
  require 'open3'
  def index
    @message = "Hello,Check Your processes"
  end

  def show
  end

  def sidekiq_status

  end

  def stop_sidekiq
    cmd = "cd #{Rails.root} && bundle exec sidekiq stop"
    sleep 2
    Open3.popen3(cmd) do |stdin, stdout, stderr, wait_thr|
      flash[:notice] = stdout.read.to_s
      flash[:notice] = stderr.read.to_s
    end
    print flash[:notice]
  end


  def start_sidekiq
    cmd = "cd #{Rails.root} && bundle exec sidekiq start"
    sleep 2
    Open3.popen3(cmd) do |stdin, stdout, stderr, wait_thr|
      flash[:notice] = stdout.read.to_s
      flash[:notice] = stderr.read.to_s
    end
    print flash[:notice]
  end

  def restart_sidekiq

  end

  def nginx_status

  end

  def stop_nginx
    cmd = "cd #{Rails.root} && sudo service nginx stop"
    sleep 2
    cmd = "cd #{Rails.root} && sudo service nginx start"
    sleep 2
    Open3.popen3(cmd) do |stdin, stdout, stderr, wait_thr|
      flash[:notice] = stdout.read.to_s
      flash[:notice] = stderr.read.to_s
    end
  end

  def start_nginx

  end

  def restart_nginx

  end



end
