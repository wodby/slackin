# slackin


| Container | Versions | Service name | Image | Enabled by default |
| --------- | -------- | ------------ | ----- | ------------------ |
| Nginx      | 1.10               | nginx     | [wodby/drupal-nginx]    | ✓ |
| PHP        | 5.3, 5.6, 7.0, 7.1 | php       | [wodby/drupal-php]      | ✓ |
| MariaDB    | 10.1               | mariadb   | [wodby/mariadb]         | ✓ |
| Redis      | 3.2                | redis     | [wodby/redis]           | ✓ |
| Varnish    | 4.1                | varnish   | [wodby/drupal-varnish]  |   |
| Solr       | 5.5, 6.3, 6.4      | solr      | [wodby/drupal-solr]     |   |
| phpMyAdmin | latest             | pma       | [phpmyadmin/phpmyadmin] | ✓ |
| Mailhog    | latest             | mailhog   | [mailhog/mailhog]       | ✓ |
| Node.js    | 7                  | node      | [_/node]                |   |
| Memcached  | latest             | memcached | [_/memcached]           |   |
| Traefik    | latest             | traefik   | [_/traefik]             |   |

[wodby/drupal-nginx]: https://github.com/wodby/drupal-nginx/
[wodby/drupal-php]: https://github.com/wodby/drupal-php/
[wodby/mariadb]: https://github.com/wodby/mariadb/
[wodby/drupal-varnish]: https://github.com/wodby/drupal-varnish
[wodby/redis]: https://hub.docker.com/wodby/redis
[wodby/drupal-varnish]: https://github.com/wodby/drupal-varnish
[wodby/drupal-solr]: https://github.com/wodby/drupal-solr
[phpmyadmin/phpmyadmin]: https://hub.docker.com/r/phpmyadmin/phpmyadmin
[mailhog/mailhog]: https://hub.docker.com/r/mailhog/mailhog
[_/node]: https://hub.docker.com/_/node
[_/memcached]: https://hub.docker.com/_/memcached/
[_/traefik]: https://hub.docker.com/_/traefik/
