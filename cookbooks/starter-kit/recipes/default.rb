execute "update repositories" do
  command "apt-get update"
end

package "git"
package "ffmpeg"

starterkit = "/home/vagrant/starterkit"

git starterkit do
  repository "https://github.com/dvberkel/fly-with-me-starter-kit.git"
  user "vagrant"
  group "vagrant"
  action :sync
end

execute "initialize nodejs" do
  cwd "#{starterkit}/nodejs"
  command "npm install"
  creates "#{starterkit}/nodejs/node_modules/"
end
