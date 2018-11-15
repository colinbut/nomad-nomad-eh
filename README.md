# Nomad Nomad

* [Basic Stuff](#basic-stuff)
* [Start Agent](#start-agent)
* [Cluster Info](#cluster-info)
* [Stop Agent](#stop-agent)
* [Running a Job](#running-a-job)
* [Modifying a Job](#modifying-a-job)
* [Stopping a Job](#stopping-a-job)
* [Clustering](#clustering)
* [UI](#ui)

## <a name="basic-stuff"></a>Basic Stuff

Checking the version of Nomad. One of first things commonly done when starting up a new tool.

```bash
nomad version
```

Checking the Nomad agent information.

```bash
nomad agent-info
```

## <a name="start-agent"></a>Start Agent

... starting the agent in "dev" mode

```bash
sudo nomad agent -dev
```

## <a name="cluster-info"></a>Cluster Info

```bash
nomad node status
```

```bash
nomad server members -detailed
```

## <a name="stop-agent"></a>Stop Agent

Just do a `Ctrl - C`


## <a name="running-a-job"></a>Running a Job

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

## <a name="modifying-a-job"></a>Modifying a Job

```bash
nomad job plan example.nomad
```

## <a name="stopping-a-job"></a>Stopping a Job

```bash
nomad job stop example
```

## <a name="clustering"></a>Clustering

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

## <a name="ui"></a>UI

Nomad comes with a User Interface web portal allowing you to do all the same stuff the CLI does.

It runs on same address and port as the Nomad HTTP API under the path /ui

http://localhost:4646
