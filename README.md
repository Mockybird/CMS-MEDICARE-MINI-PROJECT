# CMS-MEDICARE-MINI-PROJECT (USE OF EXCEL AND SQL)

## Project Overview

In this project, I utilized a random dataset from the BigQuery Public Dataset. The dataset pertains to a health institution and contains medical records of patients from 2011 to 2015, focusing on a specific drug administered to them. The initial dataset comprised about 15 columns per table. However, after a thorough examination and data cleaning process, it was found that the dataset is primarily divided into two segments per year: Inpatient Records and Outpatient Records.

### Inpatient vs. Outpatient Records

- **Inpatient Records**: These refer to patients who were treated within the hospital premises.
- **Outpatient Records**: These refer to patients who were treated at locations other than the hospital premises.

For a quick analysis, the following columns were used in each year under the two different segments:

- **total_discharges**: 
- **average_covered_charges**
- **average_total_payments**
- **average_medicare_payments**

### Data Cleaning and Preparation

The dataset underwent extensive data cleaning to ensure accuracy and relevance. This included:

- Removing unnecessary columns
- Handling missing values
- Ensuring consistency in data formats

### Analysis and Insights

By focusing on key columns across both Inpatient and Outpatient segments, the analysis provided insights into:

- The total number of discharges per year
- The average costs associated with treatments covered by insurance
- The average total payments made for treatments
- The average payments made by Medicare

These insights are crucial for understanding the financial aspects of patient care and the impact of the administered drug over the specified years.

### Conclusion

This project highlights the importance of data cleaning and focused analysis in deriving meaningful insights from large datasets. By segmenting the data into Inpatient and Outpatient records and concentrating on specific financial metrics, we can better understand the trends and implications of medical treatments over time.
