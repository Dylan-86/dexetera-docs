#!/bin/bash
cd /root/docs-dexetera/dexetera
npm run build
sudo rm -rf /var/www/doc.dexetera.org/*
sudo cp -r build/* /var/www/doc.dexetera.org/
sudo chown -R www-data:www-data /var/www/doc.dexetera.org
sudo systemctl is-active --quiet nginx && sudo systemctl reload nginx || sudo systemctl restart nginx
echo "Deployed at $(date)"
