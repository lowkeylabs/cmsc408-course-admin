
# SSL certificate issues

Disable for GIT
git config --global http.sslVerify false

Disable for Deno

$env:DENO_TLS_CA_STORE="system"
