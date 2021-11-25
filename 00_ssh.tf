resource "aws_key_pair" "kim_key" {
    key_name = "kim5_key"
    public_key = file("../../.ssh/kim-key.pub")
    #public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDUQu8zqVxdVgf9BBOYfdX/KhT4W1h4d4XU1bTCX4zuE8pTqgYOufzSfGu9cB+ngTVnm159UMxZdfi2Ose2G5lTurJ3Psx1ODjEYyQ26HHOPyZh6VMhFqoc3nXgUUIAHCNV8XXSMlqak6z8xNMB/XVIx68/RKWAJMo5KjLKC0Ez3HFvqXNRHE+5diZ4LVqJ62njjulxommhVZREsmlriAPZUUKWsN6EBLoR0NQKb00cwA85MyKmjTbTDXKXZ4mcd05IoxaFgn8+ZlAoLU79dWNO3SWukRdDz0ITwayXMAYLswreR8O4/NZDzQdMTRnmL/zkd6p/PSkFnw1ywMsXI9w0ceAOUez8uWaFokZCZiWQfFuxftSOg0DfZpOE1ZI1LCSMWe1iedbz5WfDJRIym/nn6cHIgkQ+gmH4koNlFw4yXrqpiUtb4q4wpiSxYBF1lVq1BeSJteZdTubVMsmrOInvX3yK6Mp3NNYpAFF1MIIGlofxaGM30K8sCShnMRhRqSE="

}