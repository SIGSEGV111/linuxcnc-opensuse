#   git make gcc cmake
#   less
#  libmodbus-devel
#  libusb-1_0-devel
#  libtirpc-devel
#   vim
#  udev
#   libgpiod-devel
#  glib2-devel
#   psmisc
#  pip
#  python-pip
#  python313-pip
#  man
#   intltool
#   bootlib
#   boostlib
#   boost
#   libboost
#  boost-devel
#  python313-devel
#  tcl
#  tk
#  tk-devel
#  bwidget
#  tclx
#  python313-gi
#  python313-g
#  python311-pycairo python313-gobject-cairo
#  pango pango-devel
#   libXinerama-devel
#  readline-devel
# stall python313-tk
#  python313-glucat
#  glucat-devel
#  libGLU1 glu-devel
#  libXmu-devel
#  asciidoc
#   libepoxy-devel
#  libboost_python3-devel
#  net-tools-deprecated
#   gtk3-devel

FROM registry.opensuse.org/opensuse/tumbleweed:latest

# basic config
RUN zypper --non-interactive update --download-as-needed --no-recommends
RUN zypper --non-interactive install --download-as-needed git make gcc cmake less libmodbus-devel libusb-1_0-devel libtirpc-devel vim udev libgpiod-devel glib2-devel psmisc man intltool boost-devel python313-devel tcl tk tk-devel bwidget tclx python311-pycairo python313-gobject-cairo libXinerama-devel readline-devel python313-tk python313-glucat glucat-devel libGLU1 glu-devel libXmu-devel asciidoc libepoxy-devel libboost_python3-devel net-tools-deprecated gtk3-devel
RUN zypper --non-interactive install --download-as-needed automake gcc-c++ python313-pip
RUN pip install --break-system-packages yapps2
COPY build-linuxcnc.sh /
RUN chmod +x /build-linuxcnc.sh
