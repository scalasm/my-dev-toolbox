# My Dev toolbox
Simple collection of configurations and scripts that useful in many contexts when working with cloud environments. 

Essentially, I want to be [DRY](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself) with recurring configurations when working with AWS, containers, Kubernetes, and other stuff.

# Installation
Source from `~/.bashrc` the file [my-toolbox.sh](./scripts/my-toolbox.sh), so that you can use configured alias and functions.

# Toolbox content
To  this date we have very little stuff:
- `localstack` - to start latest [Localstack](https://docs.localstack.cloud/)
- `awslocal` - to run AWS CLI commands against your Localstack
- `cdklocal` - so that you can run [AWS CDK commands locally](https://github.com/localstack/aws-cdk-local)

and other utility functions (see the script).

# Disclaimer
No warrant at all - feel free to use and modify (and why not? contribute to it!), but don't blame me for any issues on your side :)
