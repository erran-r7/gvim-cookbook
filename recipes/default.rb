#
# Cookbook Name:: gvim
# Recipe:: default
#
# Copyright (C) 2013 Rapid7
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'hombrew' if platform? 'mac_os_x'
include_recipe 'vim'

gvim_pkg = value_for_platform_family(
  # NOTE: vim-gtk is preferred to vim-gnome requires gnome dependencies
  ['debian'] => 'vim-gtk'
  ['fedora', 'rhel'] => 'vim-x11',
  ['mac_os_x'] => 'macvim'
)

package gvim_pkg