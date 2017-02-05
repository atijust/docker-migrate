# Dockerized github.com/mattes/migrate

```
docker run --rm \
	-v $(PWD):/migrations
	-e MIGRATE_WAIT_FOR_HOST=db \
	-e MIGRATE_WAIT_FOR_PORT=3306 \
	-e MIGRATE_WAIT_TIMEOUT=30 \
	atijust/migrate -url=mysql://root:root@tcp\(db:3306\)/example up
```