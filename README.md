# NYC-Rental-Analysis
This is a Final project of IEOR E4501 Tools for Analytics. 

Owners of this project are Chining Liu (uni cl4433) and Rebecca Chen (uni jc6168)

Key Phases of Our Analysis:

**1. Data Preprocessing**:
      We manually download the zip code and Zillow data, saving them in a directory named 'data' alongside our notebook. And we use Python code to download the 311 and tree datasets, utilizing the earlier set-up Application Token. For data cleaning and filtering, we employ pandas and geopandas to load and refine the datasets. This includes removing unnecessary columns, retaining only those essential for project questions, eliminating invalid data points, normalizing column names and data types, and standardizing Spatial Reference Identifiers (SRID) for any geometric data.

**2. Storing Data**:

  constructing a database featuring four tables strategically designed to house the essential data for our subsequent analyses.
  
**3. Understanding Data**:
  
  Our analytical journey delves into critical questions:
  Identifying areas known for tranquility and quality of life.
  
  Evaluating neighborhoods with abundant greenery.
  
  Investigating affordability in areas adorned with lush green trees.
  
  Exploring potential correlations between rent prices, tree density, and the frequency of 311 complaints.
  
**4. Visualizing Data**:

  We employed data visualization techniques to provide insights into:
  Prevalent complaints in immediate areas.
  
  Correlation analysis between rent prices, tree abundance, and complaint occurrences.
  
  Assessing whether higher rent equates to fewer issues and complaints.
  
  Examining recent 311 incidents reported in the immediate vicinity.
  
  Identifying areas actively striving to enhance the presence of trees in the neighborhood.
  
  Our exploration and visualization endeavors are aimed at not only understanding the intricacies of choosing a new residence but also at deriving meaningful insights for informed decision-making in the realm of apartment hunting in the vibrant landscape of New York City.






