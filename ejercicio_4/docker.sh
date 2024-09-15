docker buildx build \
--platform linux/amd64,linux/arm64 \
-t gonzalopozo/cron-ticker:bear --push . 