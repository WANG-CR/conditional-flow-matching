#!/bin/bash

# Compares flow matching (FM) conditional flow matching (CFM) and optimal
# transport conditional flow matching on three datasets. 

# twodim is not performed here since we only focus on QMC sampling for gaussian distribution
python src/train.py -m experiment=cfm \
  model=cfm,fm,otcfm \
  launcher=mila_cpu_cluster \
  model.sigma_min=0.1 \
  datamodule=scurve,moons,gaussians \
  model.plot=true \
  model.gaussain_sampler=QMC,rand \
  seed=43,44,45 &
  # seed=42,43,44,45,46 &