# log2redis

A simple watchdog intergration of redis logging, used in conjuction with logstash processing of the redis index/db.
 
## Configuration

Configure the redis module, I have chosen to use predis for this project, could be extended with support for additional libraries later on.

```
// Either needs this entry or manually include the redis.autoload.inc file.
$conf['cache_backends'][] = '/profiles/<profile>/modules/contrib/redis/redis.autoload.inc';

// Configure to point at your redis buffer
$conf['redis_client_interface'] = 'Predis';
$conf['redis_client_host'] = '1.2.3.4';
// For additional redis configurations lookup the README from the redis module.
```

We need to tell the redis module where to find the predis libraries.

```
// Need to tell predis where it's base path are.
define('PREDIS_BASE_PATH', DRUPAL_ROOT . '/profiles/<profile>/libraries/predis');
```

Lastly you should set a unique identifier for your solution, notice you might need to differentiate this per solution.

```
// Could be your solutions profile name, shorthand for domain or something similar
$conf['log2redis_log_identifier'] = 'yoursolutionsidentifier';

// Tags start array, which can contain stuff like which environment your logging from etc. (defaults to empty array)
$conf['log2redis_tags'] = array('production');
```
