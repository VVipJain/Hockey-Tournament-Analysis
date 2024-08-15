# Hockey-Tournament-Analysis

OVERVIEW ->

This project focuses on analyzing hockey tournament data through a combination of data scraping, cleaning, and visualization. The primary objective is to gather data from a website, format and clean the data using SQL, and then visualize and analyze the data using Power BI.

PROJECT WORKFLOW->

# Data Scraping (Python):

Tools Used: Python, BeautifulSoup, Requests

Description: The project starts with scraping data from a specific website that hosts hockey tournament information. Python scripts are used to extract relevant data such as team names, scores, player statistics, match dates, etc.

# Data Formatting and Cleaning (SQL):

Tools Used: SQL

Description: After scraping, the raw data is stored in a database. SQL is used to clean and format the data. This includes tasks like removing duplicates, handling missing values, normalizing data, and preparing it for analysis.

# Data Visualization and Analysis (Power BI):

Tools Used: Power BI

Description: The cleaned data is then imported into Power BI for visualization and analysis. Various charts, graphs, and dashboards are created to help understand trends, team performance, and other insights.

Power BI Files: hockey_tournament_dashboard.pbix.

PROJECT STRUCTURE ->

hockey-tournament-analysis/
│
├── hockey_data_scraping.ipynb              # Python script for data scraping
├── SQLQuery1.sql            # SQL script for data cleaning and formatting
├── Hockey Tournament Dashboard.pbix  # Power BI dashboard
├── README.md                    # Project documentation
