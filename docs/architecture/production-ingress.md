
# Production Ingress Architecture

Components:
- AWS ALB Controller
- cert-manager
- ExternalDNS
- AWS WAF

Flow:
Internet
→ AWS WAF
→ ALB
→ Kubernetes Ingress
→ Services
→ Pods
