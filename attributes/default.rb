#
# Cookbook Name:: collectd
# Attributes:: default
#
# Copyright 2010, Atari, Inc
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

case node[:platform_family]
when "rhel"
  default[:collectd][:main_conf_file] = "/etc/collectd5.conf"
  default[:collectd][:base_dir] = "/var/lib/collectd5"
  default[:collectd][:plugin_dir] = "/usr/lib64/collectd5"
  default[:collectd][:types_db] = ["/usr/share/collectd5/types.db"]
  default[:collectd][:package] = "collectd5"
  default[:collectd][:service] = "collectd5"
else
  default[:collectd][:main_conf_file] = "/etc/collectd/collectd.conf"
  default[:collectd][:base_dir] = "/var/lib/collectd"
  default[:collectd][:plugin_dir] = "/usr/lib/collectd"
  default[:collectd][:types_db] = ["/usr/share/collectd/types.db"]
  default[:collectd][:package] = "collectd"
  default[:collectd][:service] = "collectd5"
end


default[:collectd][:interval] = 10
default[:collectd][:read_threads] = 5

default[:collectd][:collectd_web][:path] = "/srv/collectd_web"
default[:collectd][:collectd_web][:hostname] = "collectd"
