default['thumbor']['pip_dependencies'] = ['remotecv', 'graphicsmagick-engine', 'opencv-engine']

# TODO: Refactor to install only "necessary" dependencies for each install_method
default['thumbor']['package_dependencies'] = %w(cmake git)

# Add WebP support
default['thumbor']['package_dependencies'] += if platform_family?('rhel')
                                                %w(libwebp-tools libwebp-devel)
                                              elsif platform_family?('debian')
                                                %w(webp libwebp-dev)
                                              end

# GIFSICLE Engine support
default['thumbor']['package_dependencies'] += if platform_family?('rhel')
                                                %w(gifsicle giflib-devel)
                                              elsif platform_family?('debian')
                                                %w(gifsicle libgif-dev)
                                              end

# WebM support
default['thumbor']['package_dependencies'] += if platform_family?('rhel')
                                                %w(libvpx libvpx-devel)
                                              elsif platform_family?('debian')
                                                %w(libvpx1 libvpx-dev)
                                              end

# OpenCV support
default['thumbor']['package_dependencies'] += if platform_family?('rhel')
                                                %w(opencv-python)
                                              elsif platform_family?('debian')
                                                %w(python-opencv)
                                              end

# JPEG support
default['thumbor']['package_dependencies'] += if platform_family?('rhel')
                                                %w(libjpeg-turbo-devel)
                                              elsif platform_family?('debian')
                                                %w(libjpeg-dev)
                                              end

# GraphicsMagick Engine
default['thumbor']['package_dependencies'] += if platform_family?('rhel')
                                                default['thumbor']['pip_dependencies'] += %w(pgmagick)
                                                %w(GraphicsMagick-c++-devel boost-devel python-pycurl)
                                              elsif platform_family?('debian')
                                                %w(python-pgmagick python-pycurl)
                                              end
if platform_family?('rhel')
  default['thumbor']['package_dependencies'] << 'zlib-devel'
end

# case node['platform_family']
#   when 'debian', 'ubuntu'
#
#     case node['platform_version'].to_f
#       when 12.04
#         default['thumbor']['package_dependencies'] += %w(gstreamer0.10-ffmpeg)
#       else
#
#     end
#
#   when 'rhel', 'fedora'
#   when 'gentoo'
#   when 'freebsd'
#   else
# end
#
#

# default['thumbor']['package_dependencies'] += %w(
# libevent-dev
# libxml2-dev
# libcurl4-gnutls-dev
# python-pycurl-dbg
# librtmp-dev
# libatlas-base-dev
# gfortran
# liblapack-dev
# libblas-dev
# build-essential
# checkinstall
# git
# pkg-config
# cmake
# libpng12-0
# libpng12-dev
# libpng++-dev
# libpng3
# libpnglite-dev
# libfaac-dev
# libjack-jackd2-dev
# libjasper-dev
# libjasper-runtime
# libjasper1
# libmp3lame-dev
# libopencore-amrnb-dev
# libopencore-amrwb-dev
# libsdl1.2-dev
# libtheora-dev
# libva-dev
# libvdpau-dev
# libvorbis-dev
# libx11-dev
# libxfixes-dev
# libxvidcore-dev
# texi2html
# yasm
# zlib1g-dev
# zlib1g-dbg
# zlib1g
# libgstreamer0.10-0
# libgstreamer0.10-dev
# libgstreamer0.10-0-dbg
# gstreamer0.10-tools
# gstreamer0.10-plugins-base
# libgstreamer-plugins-base0.10-dev
# gstreamer0.10-plugins-good
# gstreamer0.10-plugins-ugly
# gstreamer0.10-plugins-bad
# pngtools
# libtiff4-dev
# libtiff4
# libtiffxx0c2
# libtiff-tools
# libjpeg8
# libjpeg8-dev
# libjpeg8-dbg
# libjpeg-progs
# libavcodec-dev
# libavcodec53
# libavformat53
# libavformat-dev
# libxine1-ffmpeg
# libxine-dev
# libxine1-bin
# libunicap2
# libunicap2-dev
# libdc1394-22-dev
# libdc1394-22
# libdc1394-utils
# swig
# libpython2.7
# python-dev
# python2.7-dev
# libjpeg-progs
# libjpeg-dev
# libgtk2.0-0
# libgtk2.0-dev
# gtk2-engines-pixbuf
# python-numpy
# python-opencv
# libboost-python-dev
# tree
# libjpeg-dev
# libpng-dev
# libtiff-dev
# libgif-dev
# autoconf
# automake
# libx264-dev
# libass-dev
# )
