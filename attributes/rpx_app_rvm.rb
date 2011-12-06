# cookbook: rvm
# attribute: rpx_app_rvm

# For System RVM
set['rvm']['global_gems'] = [
  { 'name'    => 'bundler',
    'version' => '1.1.rc'
  },
  { 'name'    => 'rake',
    'version' => '0.9.2'
  },
  { 'name'       => 'daemon_controller',
    'version'    => '0.2.6'
  },
  { 'name'       => 'fastthread',
    'version'    => '1.0.7'
  },
  { 'name'       => 'passenger',
    'version'    => '3.0.9'
  }
]

default['rvm']['group_users'] = [ "rpx" ]

#For User RVM
#set['rvm']['user_global_gems'] = [
#  { 'name'    => 'bundler',
#    'version' => '1.1.rc'
#  },
#  { 'name'       => 'rake',
#    'version'    => '0.9.2'
#  }
#]

#default['rvm']['user_installs'] = [ "rpx" ]

set['rvm']['user_home_root'] = "/opt"

set['rvm']['user_installs'] = [
  { 
    'user'            => 'rpx',
    'rvm_gem_options' => "",
    'rvmrc'           => {
      'rvm_project_rvmrc'             => 1,
      #'rvm_gemset_create_on_use_flag' => 1,
      'rvm_pretty_print_flag'         => 1
    },
    'global_gems'     => [
      { 'name'    => 'bundler',
        'version' => '1.1.rc'
      },
      { 'name'       => 'rake',
        'version'    => '0.9.2'
      }
    ]
  }
]

