# Inside a docker ubuntu

```
docker run -it ubuntu

apt update && apt upgrade
apt install -y python3
apt install python3-pip -y
pip install databricks-cli

databricks configure
```

```
databricks secrets list-scopes
databricks secrets delete-scope --scope <SCOPE-NAME>
```

## Generate Password
- User Settings > Access tokens > Generate new token