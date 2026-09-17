# Hotel Booking Demand Analysis

## 📊 Project Overview
This project analyzes the Hotel Booking Demand dataset using SQL to identify booking patterns and understand the factors associated with hotel booking cancellations.
The analysis focuses on booking volume by country and month, as well as cancellation rates across different deposit types and market segments.
The project was developed using SQLite for data analysis and DBeaver as the SQL development environment.

---

## 🗂️ Dataset
**Dataset:** Hotel Booking Demand  
The dataset contains hotel booking records with information about:
* Hotel type
* Booking dates
* Lead time
* Arrival dates
* Customer information
* Market segment
* Distribution channel
* Deposit type
* Cancellation status
* Number of guests
* Average Daily Rate (ADR)
* And other booking-related attributes

**Source:** Kaggle — Hotel Booking Demand

---

## 🛠️ Tools & Technologies
* **SQLite** — Database and SQL analysis
* **DBeaver** — SQL development environment
* **SQL** — Data exploration and analysis (`GROUP BY`, `ORDER BY`, `CAST`, `ROUND`, `COUNT`, `SUM`)
* **GitHub** — Project documentation and version control

---

## 🔍 Business Questions
The analysis addresses the following business questions:
1. **Which countries generate the most hotel bookings?** (Identifies main source markets)
2. **Which months have the highest booking volume?** (Analyzes seasonal demand patterns)
3. **How does cancellation rate vary by deposit type?** (Compares cancellation behavior across deposit policies)
4. **How does cancellation rate vary by market segment?** (Identifies which booking channels have higher drop-off levels)

---

## 💡 Key Findings & Insights
* **Top Booking Origins:** A significant share of bookings originates from key source markets (such as domestic tourism and specific European regions like Portugal).
* **Seasonality:** Booking volumes peak during specific travel months, helping hotels optimize dynamic pricing and resource planning.
* **Deposit Types:** Surprisingly, bookings with **"Non Refund"** deposits exhibited high cancellation rates, often driven by inflexible plans or group block bookings that changed unexpectedly.
* **Market Segments:** The highest volume of cancellations originates from **Online Travel Agents (TA/OTA)** due to the flexible nature of online reservations.

---

## 💻 Sample SQL Query (Cancellation Rate by Deposit Type)
```sql
SELECT 
    deposit_type, 
    SUM(is_canceled) as Canceled_bookings,
    COUNT(*) as Total_bookings,
    ROUND(CAST(SUM(is_canceled) as REAL) * 100 / COUNT(*), 2) as Cancellation_rate
FROM 
    hotel_bookings 
GROUP BY 
    deposit_type 
ORDER BY 
    Cancellation_rate DESC;

---

## 📁 Project Structure
hotel-booking-demand-analysis/
├── README.md
├── hotel_analysis.sql
└── hotel_bookings.csv

---

## 🚀 How to Run
1. Clone the repository or download the `.sql` script.
2. Open your SQLite-supported SQL environment (e.g., DBeaver).
3. Import the `hotel_bookings.csv` dataset.
4. Run the queries provided in the script to replicate the analysis.

---

## 👤 Author
**Parvin Amiraslanova**  
This project was created as part of my Data Analytics portfolio to demonstrate practical SQL analysis, data exploration, and business-oriented thinking.


