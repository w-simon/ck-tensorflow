#! /bin/bash

# PACKAGE_DIR
# INSTALL_DIR

KITTI_NAME="KITTI validation dataset"
KITTI_IMAGES_NAMES="${KITTI_NAME} images"
KITTI_LABELS_NAMES="${KITTI_NAME} labels"
#####################################################################
echo ""
echo "Downloading ${KITTI_IMAGES_NAMES} from '${KITTI_IMAGES_URL}' ..."

wget --no-check-certificate -c ${KITTI_IMAGES_URL} -O ${KITTI_IMAGES_ARCHIVE}

if [ "${?}" != "0" ] ; then
  echo "Error: Downloading ${KITTI_IMAGES_NAMES} from '${KITTI_IMAGES_URL}' failed!"
  exit 1
fi

#####################################################################
echo ""
echo "Downloading ${KITTI_LABELS_NAMES} from '${KITTI_LABELS_URL}' ..."

wget --no-check-certificate -c ${KITTI_LABELS_URL} -O ${KITTI_LABELS_ARCHIVE}

if [ "${?}" != "0" ] ; then
  echo "Error: Downloading ${KITTI_LABELS_NAMES} from '${KITTI_LABELS_URL}' failed!"
  exit 1
fi

######################################################################################
echo ""
echo "Extracting archives ..."
echo "Extracting ${KITTI_IMAGES_ARCHIVE} ..."

unzip ${KITTI_IMAGES_ARCHIVE}

if [ "${?}" != "0" ] ; then
  echo "Error: Extracting ${KITTI_IMAGES_ARCHIVE} failed!"
  exit 1
fi
rm ${KITTI_IMAGES_ARCHIVE}

######################################################################################
echo ""
echo "Extracting archives ..."
echo "Extracting ${KITTI_LABELS_ARCHIVE} ..."

unzip ${KITTI_LABELS_ARCHIVE}

if [ "${?}" != "0" ] ; then
  echo "Error: Extracting ${KITTI_LABELS_ARCHIVE} failed!"
  exit 1
fi
rm ${KITTI_LABELS_ARCHIVE}

#####################################################################
echo ""
echo "Successfully installed ${KITTI_NAME} ..."
exit 0


exit 0
