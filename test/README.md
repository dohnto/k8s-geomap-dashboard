# Test Setup

There is a `docker-compose.yaml` file, which will spin up: `grafana`, `prometheus` and `node_exporter` exposing mocked metrics in kube-state-metrics format.

```
docker-compose up
```

Now visit `http://localhost:3000` and use *admin* and *admin* credentials.


## Mocked Metrics

To regenerate mocked metrics exposed by `node_exporter`, run `generate-mocked-metrics.sh`.
