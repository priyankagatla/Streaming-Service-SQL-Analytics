# Streaming-Service-SQL-Analytics
A SQL-based analytics engine for streaming media platforms. Features include normalized schema design, relational data modeling, and advanced analytical queries for trending content, churn prediction, and user retention metrics.
# Streaming Service Analytics (SQL Case Study)
### Project Overview
A production-ready data model mimicking platforms like Netflix or Spotify to analyze platform engagement, user retention, and content popularity metrics.
### Architecture (ERD Simplified)
- **Users** (1) ------> (M) **WatchHistory**
- **Content** (1) ----> (M) **WatchHistory**
### Solved Interview Scenarios
1. **Content Ranking:** Used SQL window functions (`DENSE_RANK`) to dynamically identify trending media assets partitioned by distinct genres.
2. **Churn Prevention:** Formulated date-boundary algorithms to flag accounts showing 30+ days of processing inactivity.
3. **A/B Testing Revenue Models:** Aggregated engagement intervals cross-referenced against membership hierarchies (`Premium` vs. `Free`).
