#!/bin/bash
cd /root/docs-dexetera/dexetera
npm run build
sudo rm -rf /var/www/doc.dexetera.win/*
sudo cp -r build/* /var/www/doc.dexetera.win/
sudo chown -R www-data:www-data /var/www/doc.dexetera.win
sudo systemctl is-active --quiet nginx && sudo systemctl reload nginx || sudo systemctl restart nginx
echo "Deployed at $(date)"
