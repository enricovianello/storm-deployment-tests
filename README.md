# StoRM Docker© deployment tests

### Build images

Images are automatically downloaded from docker-hub during execution.

### Usage

Into `docker` directory, edit as your needed `.env` file:

Create a `.env` file to easily pass your environment variables:

```
# StoRM Deployment means:
# - install UPGRADE_FROM version of StoRM (if defined) and run YAIM
# - upgrade packages with TARGET_RELEASE packages and re-run YAIM
# - run testsuite

# UPGRADE_FROM values: "stable", "nightly", "beta" or not defined (default) when
# it's a clean deployment of TARGET_RELEASE
UPGRADE_FROM=""

# TARGET_RELEASE is the version to which storm-testsuite runs against.
# Values: "nightly", "beta" and "stable". Cannot be empty.
TARGET_RELEASE="stable"

# Needed by CDMI tests:
CDMI_CLIENT_SECRET=secret
IAM_USER_PASSWORD=secret

# Testsuite configuration:
TESTSUITE_BRANCH=nightly
TESTSUITE_SUITE=tests
TESTSUITE_EXCLUDE=to-be-fixedORno-btrfs
VOMS_FAKE=false

# UMD release used by storm deployment
UMD_RELEASE_RPM=http://repository.egi.eu/sw/production/umd/4/sl6/x86_64/updates/umd-release-4.1.3-1.el6.noarch.rpm
```

**Launch**

Run deployment using `run.sh`:

```
$ cd docker
$ sh run.sh
```
