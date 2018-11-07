# Nomad Nomad

## Basic Stuff

Checking the version of Nomad. One of first things commonly done when starting up a new tool.

```bash
nomad version
```

Checking the Nomad agent information.

```bash
nomad agent-info
```

## Start Agent

... starting the agent in "dev" mode

```bash
sudo nomad agent -dev
```

## Cluster Info

```bash
nomad node status
```

```bash
nomad server members -detailed
```

## Stop Agent

Just do a `Ctrl - C`


## Running a Job

__Initiate a job__
```bash
nomad job init
```

__Run the job__
```bash
nomad job run example.nomad
```

__Check the jobs status__
```bash
nomad job status
```

__Check the particular job status__
```bash
nomad status example
```

```bash
nomad alloc status 178c6cdd
```

```bash
nomad alloc logs 178c6cdd redis
```

## Modifying a Job

```bash
nomad job plan example.nomad
```

## Stopping a Job

```bash
nomad job stop example
```

## Clustering

In a nutshell:
1) servers manage state and make scheduling decisions
2) client runs tasks

__Starting Servers & Clients__

```bash
nomad agent -config server.hcl
```

```bash
nomad agent -config client1.hcl
nomad agent -config client2.hcl
```

## UI

Nomad comes with a User Interface web portal allowing you to do all the same stuff the CLI does.

It runs on same address and port as the Nomad HTTP API under the path /ui

http://localhost:4646
