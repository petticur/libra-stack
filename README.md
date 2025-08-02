# libra-stack

Deploy an [Open Libra](https://github.com/0LNetworkCommunity/libra-framework) blockchain node
using [stack](https://github.com/bozemanpass/stack).

## Lazy Mode

```shell
mkdir deploy-me-a-stack; cd deploy-me-a-stack
stack fetch repo github.com/petticur/libra-stack
stack prepare --stack libra
stack init --stack libra --map-ports-to-host any-same --output libra-stack-spec.yml
stack deploy --spec-file libra-stack-spec.yml --deployment-dir libra-deployment
stack manage --dir libra-deployment start
```

Check your node:

```
curl -s http://localhost:8080/v1 | jq
```