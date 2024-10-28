# Localstack 
alias awslocal="aws --endpoint-url=http://localhost:4566"
alias localstack="docker run \
  --rm -it \
  -p 127.0.0.1:4566:4566 \
  -p 127.0.0.1:4510-4559:4510-4559 \
  -v /var/run/docker.sock:/var/run/docker.sock \
  localstack/localstack"

# See https://docs.localstack.cloud/getting-started/quickstart/

function logIntoContainer() {
        local container_name=$1
        if [ -z "$container_name" ]; then
                echo "Usage: lc <container_name>";
        else
                docker exec -it $(docker ps -qf "name=${container_name}") /bin/bash
        fi
}
alias lc=logIntoContainer

# Example: yq pets-api.yaml -o json > somefile.json
function yq() {
        docker run --rm -i -v ${PWD}:/workdir mikefarah/yq $@
}

function json2yaml() {
        local input_file=$1
        python -c 'import sys, yaml, json; print(yaml.dump(json.loads(sys.stdin.read())))' < $input_file
}
