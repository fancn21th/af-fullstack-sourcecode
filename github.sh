#!/bin/bash
cd /var/www/app/
git pull origin main --ff-only

# 仅在代码有更新时重启 PM2
if [ $? -eq 0 ] && [ "$(git rev-parse HEAD)" != "$(git rev-parse HEAD@{1})" ]; then
  pm2 restart all
fi
