# minecraft-bisect
Scripts for helping with bisect hosting.

### Pre Requisites
1. AWS CLI + aws configure
1. If windows: cygwin
1. Filezilla (ftp command)

### Prepare
1. Create tmp/secrets.bat with the following variables (obtained from the bisect backup panel):
```
set SECRET_BISECT_HOST="23.95.116.215"
set SECRET_BISECT_PORT=21
set SECRET_BISECT_USER="ultimadj.12345"
set SECRET_BISECT_PASS="NotARealPassword"
```

### Worlds
- docs/handy.md