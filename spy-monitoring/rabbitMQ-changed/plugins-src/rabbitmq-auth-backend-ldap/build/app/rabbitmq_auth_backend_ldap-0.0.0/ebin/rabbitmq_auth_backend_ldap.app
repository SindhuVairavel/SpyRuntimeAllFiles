{application,rabbitmq_auth_backend_ldap,
             [{description,"RabbitMQ LDAP Authentication Backend"},
              {vsn,"0.0.0"},
              {modules,[rabbit_auth_backend_ldap,rabbit_auth_backend_ldap_app,
                        rabbit_auth_backend_ldap_sup,
                        rabbit_auth_backend_ldap_util]},
              {registered,[]},
              {mod,{rabbit_auth_backend_ldap_app,[]}},
              {env,[{servers,["ldap"]},
                    {user_dn_pattern,"cn=${username},ou=People,dc=example,dc=com"},
                    {other_bind,anon},
                    {vhost_access_query,{constant,true}},
                    {resource_access_query,{constant,true}},
                    {tag_queries,[{administrator,{constant,false}}]},
                    {use_ssl,false},
                    {port,389},
                    {log,false}]},
              {applications,[kernel,stdlib,eldap,rabbit]}]}.