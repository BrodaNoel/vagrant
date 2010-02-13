libdir = File.dirname(__FILE__)
$:.unshift(libdir)
PROJECT_ROOT = File.join(libdir, '..')

# The libs which must be loaded prior to the rest
%w{ftools json pathname logger virtualbox net/ssh
  net/scp tarruby fileutils vagrant/util}.each do |f|
  require f
end

# Glob require the rest
Dir[File.join(PROJECT_ROOT, "lib", "vagrant", "**", "*.rb")].each do |f|
  require f
end
