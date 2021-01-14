# ProfileIO

This is the source code for ProfileIO models which are intended to be used to
identify specifhic characters about individuals!

## Fetch model

CoffeeHousePy comes with tools to fetch the latest models available, add the
following code to your project to fetch the model

```python
from resource_fetch import ResourceFetch
rf = ResourceFetch()

spam_classification = rf.fetch("Intellivoid", "CoffeeHouseData-ProfileIO")
```


## Building The Model

Builiding the model requires CoffeeHousePy to be installed on the system, 
you can build the model in the foreground by running one of these commands

```sh
# Build the model (Full)
make build

# Build advanced_sentiments
make build_advanced_sentiments

# Build name_gender
make build_name_gender
```


## Testing the model

You can run an interactive Commandline Interface test to predict
the output of the model's predictions by running the DLTC tester.

```sh
make test_advanced_sentiments
make test_name_gender
```


## Cleaning the data

Once the data is generated, it's reccomended to clean the and
organize the new data that was generated.

```sh
make clean
```
