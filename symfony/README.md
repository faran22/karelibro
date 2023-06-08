# Symfony 5 + Rest Api + Oauth 2

This project was generated with [Symfony 5](https://github.com/symfony/symfony), [EasyAdmin 3](https://github.com/EasyCorp/EasyAdminBundle), [Api Platform](https://github.com/api-platform/api-platform), [Oauth 2](https://github.com/trikoder/oauth2-bundle). Default authorization method is a password.

## How to install
```sh
$ git clone https://github.com/faran22/SymfonyRestApiOauth2
```
```sh
$ composer install
```

## Import MariaDB database
File location: <strong>symfony.sql</strong><br />
Database name: <strong>symfony</strong>

## Accounts / Users
<strong>MariaDB</strong> username: <strong>root</strong>, password: <strong>empty</strong><br />
<strong>Symfony/EasyAdmin</strong> username: <strong>admin</strong>, password: <strong>admin</strong>

## Default link
* Home Page http://127.0.0.1/
* EasyAdmin http://127.0.0.1/admin
* ApiPlatform http://127.0.0.1/api

## Example usage
```sh
$ curl -X POST 'http://127.0.0.1/token' -d 'client_id=example_id' -d 'client_secret=test' -d 'grant_type=password' -d 'username=admin' -d 'password=admin' -d 'scope=' -i
```
Example response
```sh
{"token_type":"Bearer","expires_in":864000,"access_token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiJleGFtcGxlX2lkIiwianRpIjoiNzBhNzA0YzAyZmQ4NWVhNjVhY2Q5OTk1ZDc2MWQxOWYzN2UxNmJiOTNjOGFmOGYzMTA0MTY4YTRiMjM0MzI1NzRkZjYwM2ZmMTNkY2Q0ZTMiLCJpYXQiOjE2MzE0NDk5OTEuNDM1NTU4MDgwNjczMjE3NzczNDM3NSwibmJmIjoxNjMxNDQ5OTkxLjQzNTU2NTk0ODQ4NjMyODEyNSwiZXhwIjoxNjMyMzEzOTkxLjE4OTA4OTA1OTgyOTcxMTkxNDA2MjUsInN1YiI6ImFkbWluIiwic2NvcGVzIjpbInJlYWQiLCJ3cml0ZSJdfQ.aXDilFasXySLJaXXiJkaGy4b19E6HqO54v8ejHuF-1VU9k9Jmp0HMHX--LgNzWD4kcb_FmBG4vwqnbHgMHDIc7IPN6TlUBsGnabMTzqd-_r_eM2Qq7htaPdpC8dkIrGGGr_Fx3_mceU_LH-X_QQnhzydgyK088GKHd7JrFA2pgdnzdmdC8bZ9cGwpeE1ZyM1nEAf7jyXC2AQZwPQenvRHKsX4i-_k1OkSUv5UcyweH9LbeiCuj18_K01ruEhEMeeb6WfpN44142YQyDAnVjd29gUJuWwqmC8Bit0XQ9WCGkwqcddSFchWAaJK1RI3LBXmBORuvErOsIG4XVHOguXrQ","refresh_token":"def5020092ca74c4f01611139f5e56f10633386ecdea58b1cda7e91cd4fa7eada54a9becf7927ad85383866a10c65000c066d93143096cc0c5008dc2bd94814756734b6ffd66cf1dc90dca6f4a2f97ec8b6bae075949d0796f26238d2a3d1bce9c29f66668706dc4d74bd567c131cd6d0489e857ebac0f3f2672081a12f0810b42eaa678396c8e7db11901555ada4650c3f316bb7c48d7660b62e3f041849f59d044376188a19f9a23ee8cdbce3da809edfebe2d0354d4db08c3899ed59278d6df0bcb0ecc0f863211a7f29e01b98728d58b6544e84d4b15ba524ba11a2961448aa0634dacc33ba48bcf4272d0c526c26ee4d167e7384f62155ccba1f146eb16f363d0fc287b74692448f32acd9da2da64a5be5f3aa48bdeb1460901b9c9e4a26f8ca9c621bdc28e57f8393e841d28760f146fc8abd086377a876aff705327ed452c0bb3612d85780c17cfe4c78c68f1aeb64aa92053cb515667765fdc47542f96009bb1647f301c766f05f53d7842f87a176e4f1ab60e2508056b0c5b34"}
```

## Test authorization
```sh
$ curl --header "Content-Type: application/ld+json" --header "Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiJleGFtcGxlX2lkIiwianRpIjoiNzBhNzA0YzAyZmQ4NWVhNjVhY2Q5OTk1ZDc2MWQxOWYzN2UxNmJiOTNjOGFmOGYzMTA0MTY4YTRiMjM0MzI1NzRkZjYwM2ZmMTNkY2Q0ZTMiLCJpYXQiOjE2MzE0NDk5OTEuNDM1NTU4MDgwNjczMjE3NzczNDM3NSwibmJmIjoxNjMxNDQ5OTkxLjQzNTU2NTk0ODQ4NjMyODEyNSwiZXhwIjoxNjMyMzEzOTkxLjE4OTA4OTA1OTgyOTcxMTkxNDA2MjUsInN1YiI6ImFkbWluIiwic2NvcGVzIjpbInJlYWQiLCJ3cml0ZSJdfQ.aXDilFasXySLJaXXiJkaGy4b19E6HqO54v8ejHuF-1VU9k9Jmp0HMHX--LgNzWD4kcb_FmBG4vwqnbHgMHDIc7IPN6TlUBsGnabMTzqd-_r_eM2Qq7htaPdpC8dkIrGGGr_Fx3_mceU_LH-X_QQnhzydgyK088GKHd7JrFA2pgdnzdmdC8bZ9cGwpeE1ZyM1nEAf7jyXC2AQZwPQenvRHKsX4i-_k1OkSUv5UcyweH9LbeiCuj18_K01ruEhEMeeb6WfpN44142YQyDAnVjd29gUJuWwqmC8Bit0XQ9WCGkwqcddSFchWAaJK1RI3LBXmBORuvErOsIG4XVHOguXrQ" --header "accept: application/ld+json" --request POST --data '{"title":"aaaaa45353a","description":"bbbb","timecreation":"2021-09-05T09:12:53.581Z","user":"/api/users/78"}' http://127.0.0.1/api/cat1s -i
```
