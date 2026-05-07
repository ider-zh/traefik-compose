#!/bin/bash

# 加载 .env
if [ -f .env ]; then
    export $(cat .env | xargs)
fi

# 定义子域名列表
SUBDOMAINS=("demo" "multi" "home" "local" "httpbin" "tcp")

echo "Starting tests for domain: ${BASE_DOMAIN}..."

for sub in "${SUBDOMAINS[@]}"; do
    domain="${sub}.${BASE_DOMAIN}"
    # 对于 tcp 测试，使用不同的测试方式或跳过
    if [ "$sub" == "tcp" ]; then
        echo "Skipping HTTP test for ${domain} (TCP service)..."
        continue
    fi
    
    echo "Testing service on ${domain}..."
    curl -I -k -m 5 https://${domain}
    if [ $? -eq 0 ]; then
        echo "${domain} test passed."
    else
        echo "${domain} test failed."
    fi
done
