# Docker 运行方式

## 环境变量

>Time: 计划运行时间, 格式为 " * 6 * * * ".  
>Script: 脚本选择, 选脚本有 "dnspod, qcloud, aliyun, cloudxns".  
>ApiId: API 密钥 ID, 如 "123456789".  
>ApiKey: API 密钥, 如 "f7c3bc1d808e04732adf679965ccc34ca7ae3441".  
>Domain: 顶级域名, 如 "example.com"  
>SubDomain: 子域名, 如 "www"  

## 直接脚本运行方式

### dnspod (添加 / 更新) *推荐*

```bash
sh dnspod.sh {ApiID},{ApiKey} example.com www
```

---

### qcloud (添加 / 更新)

```bash
sh qcloud.sh {SecretId} {SecretKey} example.com www
```

---

### aliyun (添加 / 更新)

```bash
sh aliyun.sh {AccessKeyId} {AccessKeySecret} example.com www
```

---

### cloudxns (只能更新)

```bash
sh cloudxns.sh {ApiKey} {SecretKey} example.com www
```

## docker运行方式

```bash
docker run -d \
    -e ApiId="123456789" \
    -e ApiKey="111111111111111111" \
    -e Domain="example.com" \
    -e SubDomain="www" \
    -e Time="* 24 * * *" \
    -e Script="aliyun" \
    zqingfa/ddns:v1.0
```

> *Script* 可以是 `dnspod` | `qcloud` | `aliyun` | `cloudxns`
