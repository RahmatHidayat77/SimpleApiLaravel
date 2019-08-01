# SimpleApiLaravel

## How to run

- Create new .env file with this following code :

```
APP_NAME=Laravel
APP_ENV=local
APP_KEY=base64:QelhnNROYjwcpDTdLf2n0sY1+2eQ61zPb0x3p1DxJVU=
APP_DEBUG=true
APP_URL=http://localhost

LOG_CHANNEL=stack

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=testErpo
DB_USERNAME={yourUsernameDB}
DB_PASSWORD={yourPassword}

BROADCAST_DRIVER=log
CACHE_DRIVER=file
QUEUE_CONNECTION=sync
SESSION_DRIVER=file
SESSION_LIFETIME=120

REDIS_HOST=127.0.0.1
REDIS_PASSWORD=null
REDIS_PORT=6379

MAIL_DRIVER=smtp
MAIL_HOST=smtp.mailtrap.io
MAIL_PORT=2525
MAIL_USERNAME=null
MAIL_PASSWORD=null
MAIL_ENCRYPTION=null

AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
AWS_DEFAULT_REGION=us-east-1
AWS_BUCKET=

PUSHER_APP_ID=
PUSHER_APP_KEY=
PUSHER_APP_SECRET=
PUSHER_APP_CLUSTER=mt1

MIX_PUSHER_APP_KEY="${PUSHER_APP_KEY}"
MIX_PUSHER_APP_CLUSTER="${PUSHER_APP_CLUSTER}"

```
- run `composer install`

- run `php artisan migrate`

- Import [testErpo.sql](https://github.com/RahmatHidayat77/SimpleApiLaravel/blob/master/testErpo.sql) to your database.

- run `php artisan serve`

- testing API with Postman --> [Postman Collection](https://app.getpostman.com/join-team?invite_code=a6f6b154785ad83a3d0311528ed6ed51)
