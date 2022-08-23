################################################################################
#
# iat-verifier
#
################################################################################

define IAT_VERIFIER_CP_SAMPLE_FILES
	if [ ! -d "files/root" ]; then mkdir -p files/root; fi
        rm -rf files/root/*
        cp -r dl/iat-verifier/git/iat-verifier/sample files/root
endef

IAT_VERIFIER_VERSION = 34826f15768f8d6b2e5597f2e09854794620ae16
IAT_VERIFIER_SOURCE = iat-verifier-$(IAT_VERIFIER_VERSION).tar.gz
IAT_VERIFIER_SITE = git+ssh://gerrit.oss.arm.com:29418/iot-sw/tf-m/internal/tf-m-tools
IAT_VERIFIER_SITE_METHOD = git
IAT_VERIFIER_SETUP_TYPE = setuptools
IAT_VERIFIER_SUBDIR = iat-verifier
IAT_VERIFIER_POST_DOWNLOAD_HOOKS = IAT_VERIFIER_CP_SAMPLE_FILES
$(eval $(python-package))
