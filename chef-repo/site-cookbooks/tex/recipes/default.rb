#
# Cookbook Name:: tex
# Recipe:: default
#
# Copyright 2013, Itoshi NIKAIDO
#
# All rights reserved - Do Not Redistribute
#

%w{zsh emacs24 nkf texlive-full}.each do |pkg|
  package pkg do
    action :install
  end
end
