output "lb_dns_name" {
  description = "The DNS name of the load balancer"
  value       = aws_lb.external-elb.dns_name
}

output "RDS-endpoint" {
  description = "The endpoint of the RDS database"
  value       = aws_db_instance.mydb.endpoint
}


output "EC2-public-ip" {
  value = aws_instance.webserver1.public_ip
}