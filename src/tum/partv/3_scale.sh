# Scale up the deployment
kubectl edit deployment hello

kubectl get pods

# Do another call in web browser
# Show log entry (which one was called??  Talk about log aggregation)
kubectl logs hello

# Quick scale
kubectl scale --replicas=1 deployment/hello

# Show changes
kubectl get pods