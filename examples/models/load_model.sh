REDIS_CLI=../../deps/redis/src/redis-cli

echo "SET GRAPH"
$REDIS_CLI -x DL.SET GRAPH foo TF < graph.pb

echo "SET TENSORS"
$REDIS_CLI DL.SET TENSOR a FLOAT 1 2 VALUES 2 3
$REDIS_CLI DL.SET TENSOR b FLOAT 1 2 VALUES 2 3

echo "GET TENSORS"
$REDIS_CLI DL.GET TENSOR a VALUES
$REDIS_CLI DL.GET TENSOR b VALUES

echo "RUN GRAPH"
$REDIS_CLI DL.RUN GRAPH foo 2 a a b b c mul

echo "GET TENSOR META"
$REDIS_CLI DL.GET TENSOR c META

echo "GET TENSOR VALUES"
$REDIS_CLI DL.GET TENSOR c VALUES

echo "GET TENSOR BLOB"
#$REDIS_CLI --raw DL.GET TENSOR c BLOB
$REDIS_CLI DL.GET TENSOR c BLOB

