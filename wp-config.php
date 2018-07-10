<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

define('FS_METHOD', 'direct');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'MN^uY;+KyYzr{ocZt^`t<qT29*xc:20Gl(&0_0%O.98iZ g!w4|T*8Ok<%z=jx5X');
define('SECURE_AUTH_KEY',  'N1b|pze#kYFrYv5WiHg #:@-KqV(N(%[k2PlvIa<Q>yq /2tt.>Ti+G$spAx~L}b');
define('LOGGED_IN_KEY',    '<R5iOx>x2AQa<g^L[dThh!&ckM&7krE)5ZAv+l9F)35^P)X^@C}%+:L$5O)*lKsE');
define('NONCE_KEY',        '9b!?88qJqY5)[A#<7klZ+c^Vv<0]A4p+1.*@FavM)QK]H=jB7#eBt6Hfvkin8eb0');
define('AUTH_SALT',        't;Z!0UCoHrRFatM%yb_G%,;6??+&$jI^(iO,Vu@M6.J{OyP+_mmHX(|H1~-U<jVV');
define('SECURE_AUTH_SALT', 'u)oytU;JsHQXX|aRg~pfk0`(d|ia[ }|N,A3e*JKQR~$qgUCb*<@].wX/P0`IDa+');
define('LOGGED_IN_SALT',   '}o8Ni8E{ZuPtN9$mC1=(mpm9DZRuv.;QtQ1asOjn4{JM4k5y4dzV4F/eL):}R=S4');
define('NONCE_SALT',       '8r~?ps&~c4{Yj`s9sM[azo}<5w>-uZ=zGab5IBTpxLG4-Vi[#,l< K<l47!_o{xB');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */


define('WP_DEBUG', true);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
    define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
