# SPSS Runner

This skill runs or emulates SPSS-style survey analysis from real data.

Use SPSS_REAL when IBM SPSS Statistics is available with a valid license. Otherwise use PYTHON_FALLBACK with pandas, numpy, scipy, statsmodels, and factor_analyzer if available.

Hard rules: never fake SPSS results, report Python fallback clearly, stop if raw data is insufficient, extract only visible values from screenshots, and never infer hidden SPSS values.