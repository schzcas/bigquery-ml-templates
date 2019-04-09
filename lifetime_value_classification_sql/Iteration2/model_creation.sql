/*
Copyright 2019 Google LLC

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    https://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/
CREATE MODEL
  `caramel-howl-182418.LTV_Classification.model_iteration_2`
OPTIONS
  ( model_type='logistic_reg',
    auto_class_weights=TRUE,
    input_label_cols=['Class']) AS
SELECT
  screenResolution,
  timeOnScreen,
  UniqueScreenViews,
  Loyalty_Program,
  Age,
  Normalized_Loyalty_Program,
  Country_Code,
  Class
FROM
  `caramel-howl-182418.LTV_Classification.Dataset_Iteration_2`;
