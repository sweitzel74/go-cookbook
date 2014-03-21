# encoding: UTF-8
# If we're running on a single node,
# we can just use 127.0.0.1 for the server IP.
# A search for the server ip isn't necessary.
node.default[:go][:server] = '127.0.0.1'

include_recipe 'go::server'
include_recipe 'go::agent'

Chef::Log.info("Node has #{node[:cpu][:total]} CPUs")
