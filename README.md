# Instacart Market Basket Analysis

End-to-end data analysis and machine learning project built on real-world e-commerce data from Instacart, covering 3M+ orders across 200K+ customers and 50K+ products.

---

## Tech Stack
| Layer | Tool |
|---|---|
| Cloud Storage | Google BigQuery |
| ETL & Transformation | dbt |
| ML & Analysis | Python (VS Code) |
| Dashboard | Power BI |
| Version Control | Git & GitHub |

---

## Project Structure
```
instacart-analysis/
├── bigquery/
│   ├── setup_notes.md
│   ├── staging/            # Raw → cleaned layer (SQL scripts)
│   ├── intermediate/       # Joined & enriched tables (SQL scripts)
│   └── marts/              # Analytics-ready final tables (SQL scripts)
├── data/
│   ├── raw/                # Raw Kaggle CSV files (not tracked)
│   ├── processed/          # Cleaned data (not tracked)
│   └── features/           # Engineered features (not tracked)
├── ml/
│   ├── notebooks/          # Jupyter notebooks per analysis stage
│   └── src/                # Reusable Python modules
└── powerbi/                # Dashboard files
```

---

## Project Roadmap
- [x] Project structure initialized
- [x] Raw data loaded into BigQuery
- [ ] Staging layer SQL scripts completed
- [ ] Intermediate layer SQL scripts completed
- [ ] Mart layer SQL scripts completed
- [ ] EDA & insights generated
- [ ] RFM customer segmentation (KMeans)
- [ ] Reorder prediction model (XGBoost)
- [ ] Product recommendation engine (Apriori)
- [ ] Power BI dashboard published

---

## Dataset
[Instacart Market Basket Analysis — Kaggle](https://www.kaggle.com/datasets/psparks/instacart-market-basket-analysis)

| Table | Description |
|---|---|
| `orders` | All orders per customer |
| `order_products__prior` | Products in prior orders |
| `order_products__train` | Products in training orders |
| `products` | Product details |
| `aisles` | Aisle categories |
| `departments` | Department categories |

---

## ML Models
| Model | Problem | Algorithm | Metric |
|---|---|---|---|
| Customer Segmentation | Clustering | KMeans | Silhouette Score |
| Reorder Prediction | Classification | XGBoost | ROC-AUC |
| Product Recommendation | Association Rules | Apriori / FP-Growth | Lift & Confidence |

---

## Key Business Questions
- Which products and departments drive the most reorders?
- What customer segments exist based on purchasing behavior?
- Can we predict whether a customer will reorder a specific product?
- Which products are frequently bought together?

---

## Setup & Reproduction
> ML notebooks require a BigQuery connection.
> Raw data files are not tracked in this repository.

1. Clone the repository
2. Download the dataset from Kaggle
3. Upload CSV files to BigQuery (`raw_instacart` dataset)
4. Run SQL scripts in order: `bigquery/staging` → `bigquery/intermediate` → `bigquery/marts`
5. Open notebooks in `ml/notebooks/` and run sequentially
```
