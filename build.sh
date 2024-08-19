# change default password
default_password='$2y$10$6jtRndlVjf7yTXeZy7kuZ.RLf2lYMsSiuYJ3uvclHRm573Yzd3MA.'
random_password=$(openssl rand -base64 32)
hashed_password=$(htpasswd -bnBC 10 "" $random_password | tr -d ':\n')

sed -i "s|$default_password|$hashed_password|g" db_cms_sekolahku.sql
docker-compose up -d