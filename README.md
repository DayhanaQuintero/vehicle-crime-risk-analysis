# Vehicle Crime Risk Analysis for Insurance Company 🚗

Final project of the Data Analytics Diploma (EBAC).
Analysis of vehicle-related crime in Mexico to support 
risk estimation for an auto insurance company.

## Objective
Identify high-exposure zones and classify states by risk 
level to adjust pricing and coverage strategies.

## Tools
- Python (pandas, matplotlib, seaborn, statsmodels, scikit-learn)
- SQLite
- Looker Studio

## Process
1. Data download from Mexico's Open Government Data
2. Cleaning and transformation with pandas (wide → long format)
3. Storage in SQLite
4. Time series modeling with SARIMA → 2022 prediction
5. K-Means clustering (3 clusters) → risk level classification
6. Interactive dashboard in Looker Studio

## Results
- Highest risk states: Estado de México and CDMX
- SARIMA model predicts stable levels for 2022
- 3 risk segments: low, medium and high
- Useful segmentation for regional policy pricing

## Business Impact
- Insurance companies can adjust pricing strategies based on regional risk levels.
- High-risk areas (CDMX, Estado de México) may require higher premiums or stricter coverage conditions.
- Risk segmentation enables more accurate underwriting decisions.

## 📊 Dashboard
[View Dashboard] ([link_aqui](https://datastudio.google.com/reporting/a9016b8b-3fc9-4cab-9679-8a51b667e446))
