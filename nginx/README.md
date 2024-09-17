# Nginx Load Balancing Task

This task involves configuring load balancing in Nginx for two services defined in a Docker Compose file.

## Requirements

1. **Round-robin load balancing**: Configure Nginx to distribute traffic evenly between the two services using standard round-robin.
2. **Weighted round-robin load balancing**: Implement weighted round-robin load balancing where one service receives more traffic based on weight.
3. **GET parameter-based load balancing**: Configure Nginx to route traffic based on a GET parameter:
   - If `app=app1` is passed, traffic goes to `app1`.
   - If `app=app2` is passed, traffic goes to `app2`.
   - If the parameter is not provided, the traffic should be routed to a default service.
4. **Optional**: Additional extensions as per the interviewer's discretion.

## Guidelines

You are free to use any tools or resources to complete this task, including ChatGPT.

Feel free to extend or modify the configuration as needed.
