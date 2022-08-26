################################################################################
#
# iat-verifier
#
################################################################################

PYTHON_COSE_VERSION = 651dacb8cf7b17a8f47e90650f15c4e9b6ce6240 
PYTHON_COSE_SOURCE = python-cose-$(IAT_VERIFIER_VERSION).tar.gz
PYTHON_COSE_SITE = https://github.com/adam2809/pycose.git
PYTHON_COSE_SITE_METHOD = git
PYTHON_COSE_SETUP_TYPE = setuptools

$(eval $(python-package))
