Example [App Spec](https://docs.digitalocean.com/products/app-platform/reference/app-spec/) for the App Platform

```yaml
alerts:
- rule: DEPLOYMENT_FAILED
- rule: DOMAIN_FAILED
domains:
- domain: app-redirect-1.667065.xyz
  type: PRIMARY
- domain: app-redirect-2.667065.xyz
  type: ALIAS
features:
- buildpack-stack=ubuntu-22
ingress:
  rules:
  - component:
      name: app-platform-domain-redirector
    match:
      path:
        prefix: /
name: jkpe-ap-domain-redirector
region: lon
services:
- dockerfile_path: Dockerfile
  github:
    branch: main
    deploy_on_push: true
    repo: jkpe/app-platform-domain-redirector
  http_port: 80
  instance_count: 2
  instance_size_slug: professional-xs
  name: app-platform-domain-redirector
  source_dir: /
```
