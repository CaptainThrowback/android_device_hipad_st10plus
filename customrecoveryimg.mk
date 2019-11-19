# Needed to pad image to fill partition and avoid brickage

$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) \
		$(recovery_ramdisk) \
		$(recovery_kernel)
	@echo -e ${PRT_IMG}"----- Making recovery image ------"${CL_RST}
	$(hide) $(MKBOOTIMG) $(INTERNAL_RECOVERYIMAGE_ARGS) $(BOARD_MKBOOTIMG_ARGS) --output $@
	$(hide) $(call assert-max-image-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE),raw)
	@echo -e ${CL_CYN}"----- Padding image to fill entire partition ------"${CL_RST}
	$(hide) truncate -s $(BOARD_RECOVERYIMAGE_PARTITION_SIZE) $@
	@echo -e ${PRT_IMG}"----- Made recovery image: $@ --------"${CL_RST}