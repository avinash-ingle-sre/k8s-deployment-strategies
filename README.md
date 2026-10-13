# Production Kubernetes Deployment Strategies

A production-ready repository demonstrating enterprise Kubernetes deployment strategies to achieve zero downtime, progressive rollouts, and instant rollbacks.

## Deployment Strategies Implemented

1. **Rolling Update (`/rolling-update`)**
   - Implements zero-downtime updates using `maxSurge: 1` and `maxUnavailable: 0`.
   - Protects production capacity during version upgrades.

2. **Canary Deployment (`/canary`)**
   - Splits live incoming traffic across stable (`v1.24`) and canary (`v1.25`) replicas via shared label selectors.
   - Evaluates system metrics on a 25% traffic slice before full promotion.

3. **Blue-Green Deployment (`/blue-green`)**
   - Runs two identical production environments in parallel.
   - Executes instant cutover and immediate rollbacks by flipping the Service selector label.

## Testing & Automation
- Automated traffic validation via `scripts/traffic_check.sh`.
