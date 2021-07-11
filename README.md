# nextcloud-news-updater docker container

See: https://github.com/nextcloud/news-updater

## Quickstart

Nextcloud API:

```bash
  $ docker run -d -e NEXTCLOUD_URL=https://nextcloud.example.com/nextcloud \
                  -e NEXTCLOUD_ADMIN_USER=admin \
                  -e NEXTCLOUD_ADMIN_PASSWORD=password \
                  ghcr.io/lucaelin/nextcloud-news-updater:latest
```

Nextcloud mounted volume:

```bash
  $ docker run -d -e NEXTCLOUD_URL=https://nextcloud.example.com/nextcloud \
                  -e NEXTCLOUD_ADMIN_USER=admin \
                  -e NEXTCLOUD_ADMIN_PASSWORD=password \
                  -v /var/www/nextcloud:/nextcloud \
                  ghcr.io/lucaelin/nextcloud-news-updater:latest /nextcloud
```

Usage with commandline options

```bash
  $ docker run -d -e NEXTCLOUD_URL=https://nextcloud.example.com/nextcloud \
                  -e NEXTCLOUD_ADMIN_USER=admin \
                  -e NEXTCLOUD_ADMIN_PASSWORD=password \
                  -v /var/www/nextcloud:/nextcloud \
                  ghcr.io/lucaelin/nextcloud-news-updater:latest --apilevel v15 --mode endless /nextcloud
```

# License

ISC
