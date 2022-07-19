variable "ec2_map" {
  type = map(object({
    Name = string     
    env = string
    app = string
  }))
}