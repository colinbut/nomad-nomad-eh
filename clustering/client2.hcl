log_level = "DEBUG"

data_dir = "/tmp/client2"

# giving the agent an unique name, otherwise defaults to hostname
name = "client2"

# enabling the Client
client {
    enabled = true

    # For prod this should ideally be "nomad.service.consul:4647
    # and a service discovery system like Consul
    servers = ["127.0.0.1:4647"]
}

ports {
    http = 5657
}