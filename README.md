---
Title: Readme
Description: Top level readme for the Turbine project
Created: January 31, 2026 @ 12:35:31 PM EST
Created_By: Malik
Last_Updated: February 04, 2026 @ 01:19:11 AM EST
Last_Updated_By: Malik
---

# Turbine
Showcase iPad, iPhone app for potential applications

# Project Vision
- AI Chat running on Microsoft Azure Cloud with:
    - RAG on documents (doc, docx, pdf, csv, xls, xlsx), Image formats, Video formats, and Audio formats with sub 16ms per item result times in p95 (120 fps or 120 Hz result times). SOPs / Safety Videos for onboarding and quick recall
    - Text to Speech for hands free listening to AI
    - Speech to Text for hands free talking to AI
    - Vision based chat features to talk to AI while simply pointing the camera at an object
    - Observability and tracing at granular api call level per employee for compliance auditing, security safeguards, and improvements
- Role Based Access Control so the employee only has access to the appropriate data relevant to them
- Stats / Data Visualization
    - Charts and graphs with trend analysis for monitoring KPIs
    - Ability to save and edit custom dashboards for different roles and departments or on an individual user basis
    - Real-time data updates and alerts
    - Export data to PDF, CSV, or Excel
    - Drag and drop to rearrange dashboard charts and graphs
    - Potentially resizing charts and graphs based on a grid system that has adaptive sizing and but stable grid cell sizes to make options like 1x1, 2x1, 1x2, 2x2, possible
    - Using GRDB sqlite3 database with encryption using sqlcipher. No swift data or core data
- Delta branding

# Professional DevOps 
- Gitflow Branching to enable reviews before pushing to beta or production
- runtime feature flags and guards at the state machine level to prevent certain features from being accessible in addition to existing RBAC and RLS checks that can use any identity provider
- Professional documentation in the code, the feature folders, and wiki's for redundancy
- File level change reasoning for quick understanding of why things where changed, when, and how


# Research Sources
- [Kaggle notebook on aircraft predictive maintenance](https://www.kaggle.com/code/sharanharsoor/aircraft-predictive-maintenance)
- [Mendeley dataset on aircraft model classification](https://data.mendeley.com/datasets/mdmczsr5fy/1)
- [Github repo for the paper "A Large-Scale Annotated Multivariate Time Series Aviation Maintenance Dataset from the NGAFID"](https://github.com/hyang0129/NGAFIDDATASET)
- [Data.Gov Search query using term aircraft yielded a few interesting papers and datasets](https://catalog.data.gov/dataset/?_metadata_type_limit=0&q=aircraft)
- [5,601 Images of 4 types of fuselage defects](https://ieee-dataport.org/documents/aircraftfuselagedet2023-aircraft-fuselage-defect-detection-dataset)