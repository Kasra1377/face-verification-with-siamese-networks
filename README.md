# 🧑face-verification-with-siamese-networks


### 📝Description
---
In this project, we are going to implement an End-to-End Deep Learning/Machine Learning project. What this web application is does is that, first get two gray scale faces(that were extracted by Haar Cascade face detection algorithm) from user. As soon as user clicks on the `Match` button, model recieves both faces, applies some image preprocessing actions on them and then pass these two images into the model itself. Take note that this specific siamese network recieves two images as inputs and the applies `Contrastive Loss` which we will discuss later on. In the next step, the model returns a number which is the `distance` between two faces. If the distance is greater or equal to a specific threshold(in this case the threshold is equal to `0.4`) then returns `Not Matched`; which means these two images **does not** belong to the same person. Otherwise it returns `Matched` which means these two faces belong to the same person.

```

├── LICENSE
├── Makefile           <- Makefile with commands like `make data` or `make train`
├── README.md          <- The top-level README for developers using this project.
├── data
│   ├── external       <- Data from third party sources.
│   ├── interim        <- Intermediate data that has been transformed.
│   ├── processed      <- The final, canonical data sets for modeling.
│   └── raw            <- The original, immutable data dump.
│
├── docs               <- A default Sphinx project; see sphinx-doc.org for details
│
├── models             <- Trained and serialized models, model predictions, or model summaries
│
├── notebooks          <- Jupyter notebooks. Naming convention is a number (for ordering),
│                         the creator's initials, and a short `-` delimited description, e.g.
│                         `1.0-jqp-initial-data-exploration`.
│
├── references         <- Data dictionaries, manuals, and all other explanatory materials.
│
├── reports            <- Generated analysis as HTML, PDF, LaTeX, etc.
│   └── figures        <- Generated graphics and figures to be used in reporting
│
├── requirements.txt   <- The requirements file for reproducing the analysis environment, e.g.
│                         generated with `pip freeze > requirements.txt`
│
├── setup.py           <- makes project pip installable (pip install -e .) so src can be imported
├── src                <- Source code for use in this project.
│   ├── __init__.py    <- Makes src a Python module
│   │
│   ├── data           <- Scripts to download or generate data
│   │   └── make_dataset.py
│   │
│   ├── features       <- Scripts to turn raw data into features for modeling
│   │   └── build_features.py
│   │
│   ├── models         <- Scripts to train models and then use trained models to make
│   │   │                 predictions
│   │   ├── predict_model.py
│   │   └── train_model.py
│   │
│   └── visualization  <- Scripts to create exploratory and results oriented visualizations
│       └── visualize.py
│
└── tox.ini            <- tox file with settings for running tox; see tox.readthedocs.io
```

![Screen Record No 2](https://user-images.githubusercontent.com/56585524/134305841-9062aa5a-2090-4800-84e9-20506faa9057.gif)
![Screen Record No 1](https://user-images.githubusercontent.com/56585524/134305957-83af21c6-a32c-489c-8824-c450a66de128.gif)
