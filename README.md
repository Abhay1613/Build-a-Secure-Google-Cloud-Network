 # Build a Secure Google Cloud Network: Challenge Lab GSP322


 
 1. Remove the overly permissive rules.

 2. Start the bastion host instance.

 3. Create a firewall rule that allows SSH (tcp/22) from the IAP service and add network tag on bastion.

 4. Create a firewall rule that allows traffic on HTTP (tcp/80) to any address and add network tag on juice-shop.

 5. Create a firewall rule that allows traffic on SSH (tcp/22) from acme-mgmt-subnet.

 6. SSH to bastion host via IAP and juice-shop via bastion.
