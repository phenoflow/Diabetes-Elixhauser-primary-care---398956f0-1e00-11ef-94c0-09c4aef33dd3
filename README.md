# Diabetes-Elixhauser-primary-care

Diabetes (uncomplicated) Elixhauser primary care - PH1077

## Requirements

[Docker](https://docs.docker.com/install/) and [CWLTool](https://github.com/common-workflow-language/cwltool#install)

## Configuration

Specify data source credentials in [js/read-potential-cases-i2b2.js](js/read-potential-cases-i2b2.js).

## Usage

Run: `cwltool Diabetes-Elixhauser-primary-care.cwl Diabetes-Elixhauser-primary-care-inputs.yml`

***

### Based on original definition developed by David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa
### Generated by [Phenoflow](https://kclhi.org/phenoflow).
