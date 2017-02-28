#========================================
# ioUrbanTerror-4
# CMakeFiles.txt
# v2017-02-28
#========================================

# project name
project( ioq3-urbanterror )
set( ioq3-urbanterror_VERSION 1.35 )

cmake_minimum_required( VERSION 3.7.2 )

# Set Release type for builds where CMAKE_BUILD_TYPE is unset.
# This is usually a good default as this implictly enables
#
#   CXXFLAGS = -O3 -DNDEBUG
#
if( NOT CMAKE_BUILD_TYPE )
	set( CMAKE_BUILD_TYPE "Release" )
endif()

ADD_DEFINITIONS(
	-DBUILD_CLIENT=${BUILD_CLIENT}
	-DBUILD_CLIENT_SMP=${BUILD_CLIENT_SMP}
	-DBUILD_SERVER=${BUILD_SERVER}
	-DBUILD_GAME_SO=${BUILD_GAME_SO}
	-DBUILD_GAME_QVM=${BUILD_GAME_QVM}
	-DUSE_SDL=${USE_SDL}
	-DUSE_OPENAL=${USE_OPENAL}
	-DUSE_CURL=${USE_CURL}
	-DUSE_CODEC_VORBIS=${USE_CODEC_VORBIS}
	-DUSE_SSE=${USE_SSE}
	-DUSE_ALTGAMMA=${USE_ALTGAMMA}
	-DUSE_AUTH=${USE_AUTH}
	-DUSE_DEMO_FORMAT42=${USE_DEMO_FORMAT42}
	-DBUILD_DIR="${BUILD_DIR}"
	-DBD="${BD}"
	-DBR="${BR}"
	-DCDIR="${CDIR}"
	-DSDIR="${SDIR}"
	-DRDIR="${RDIR}"
	-DCMDIR="${CDMDIR}"
	-DUDR="${UDR}"
	-DW32DIR="${W32DIR}"
	-DSYSDIR="${SYSDIR}"
	-DGDIR="${GDIR}"
	-DCGDIR="${CGDIR}"
	-DBLIBDIR="${BLIBDIR}"
	-DNDIR="${NDIR}"
	-DUIDIR="${UIDIR}"
	-DQ3UIDIR="${Q3UIDIR}"
	-DJPDIR="${JPDIR}"
	-DLOKISETUPDIR="${LOKSETUPDIR}"
	-DTOOLSDIR="${DTOOLSDIR}"
	-DSDLHDIR="${SDLHDIR}"
	-DLIBSDIR="${LIBSDIR}"
	-DARCH="${ARCH}"
)
#========================================
#=== set file name and source files =====
set( source_files
	${BLIBDIR}/be_aas_bspq3.c
	${BLIBDIR}/be_aas_cluster.c
	${BLIBDIR}/be_aas_debug.c
	${BLIBDIR}/l_precomp.c
	${BLIBDIR}/l_script.c
	${BLIBDIR}/l_struct.c
	${CMDIR}/files.c
	${CMDIR}/huffman.c
	${CMDIR}/md4.c
	${CMDIR}/msg.c
	${CMDIR}/net_chan.c
	${CMDIR}/net_ip.c
	${CMDIR}/q_math.c
	${CMDIR}/q_shared.c
	${CMDIR}/unzip.c
	${CMDIR}/vm_interpreted.c
	${CMDIR}/vm_x86_64_assembler.c
	${CMDIR}/vm_x86_64.c
	${SDIR}/sv_bot.c
	${SDIR}/sv_ccmds.c
	${SDIR}/sv_client.c
	${SDIR}/sv_net_chan.c
	${SDIR}/sv_snapshot.c
	${SDIR}/sv_world.c
)
# TODO: unbundle
set( source_files ${source_files}
	${JPDIR}/jcapimin.c
	${JPDIR}/jccoefct.c
	${JPDIR}/jccolor.c
	${JPDIR}/jcdctmgr.c
	${JPDIR}/jchuff.c
	${JPDIR}/jcinit.c
	${JPDIR}/jcmainct.c
	${JPDIR}/jcmarker.c
	${JPDIR}/jcmaster.c
	${JPDIR}/jcomapi.c
	${JPDIR}/jcparam.c
	${JPDIR}/jcphuff.c
	${JPDIR}/jcprepct.c
	${JPDIR}/jcsample.c
	${JPDIR}/jdapimin.c
	${JPDIR}/jdapistd.c
	${JPDIR}/jdatasrc.c
	${JPDIR}/jdcoefct.c
	${JPDIR}/jdcolor.c
	${JPDIR}/jddctmgr.c
	${JPDIR}/jdhuff.c
	${JPDIR}/jdinput.c
	${JPDIR}/jdmainct.c
	${JPDIR}/jdmarker.c
	${JPDIR}/jdmaster.c
	${JPDIR}/jdpostct.c
	${JPDIR}/jdsample.c
	${JPDIR}/jdtrans.c
	${JPDIR}/jerror.c
	${JPDIR}/jfdctflt.c
	${JPDIR}/jidctflt.c
	${JPDIR}/jmemmgr.c
	${JPDIR}/jmemnobs.c
	${JPDIR}/jutils.c
)
if( BUILD_CLIENT )
	set( bin_prefix Quake3-UrT )
	# null device *only* needed if server
	# is somehow involved
	if( BUILD_CLIENT AND NOT BUILD_SERVER )
	else()
	set( source_files ${souce_files}
		${NDIR}/null_client.c
		${NDIR}/null_input.c
		${NDIR}/null_snddma.c
	)
	endif()
	set( source_files ${source_files}
	${CDIR}/cl_avi.c
	${CDIR}/cl_cgame.c
	${CDIR}/cl_cin.c
	${CDIR}/cl_console.c
	${CDIR}/cl_curl.c
	${CDIR}/cl_input.c
	${CDIR}/cl_keys.c
	${CDIR}/cl_main.c
	${CDIR}/cl_net_chan.c
	${CDIR}/cl_parse.c
	${CDIR}/cl_scrn.c
	${CDIR}/cl_ui.c
	${CDIR}/qal.c
	${CDIR}/snd_adpcm.c
	${CDIR}/snd_codec.c
	${CDIR}/snd_codec_ogg.c
	${CDIR}/snd_codec_wav.c
	${CDIR}/snd_dma.c
	${CDIR}/snd_dmahd.c
	${CDIR}/snd_main.c
	${CDIR}/snd_mem.c
	${CDIR}/snd_mix.c
	${CDIR}/snd_openal.c
	${CDIR}/snd_wavelet.c
	${CMDIR}/md5.c
	${CMDIR}/puff.c
	${RDIR}/tr_animation.c
	${RDIR}/tr_backend.c
	${RDIR}/tr_bsp.c
	${RDIR}/tr_cmds.c
	${RDIR}/tr_curve.c
	${RDIR}/tr_flares.c
	${RDIR}/tr_font.c
	${RDIR}/tr_image.c
	${RDIR}/tr_init.c
	${RDIR}/tr_light.c
	${RDIR}/tr_main.c
	${RDIR}/tr_marks.c
	${RDIR}/tr_mesh.c
	${RDIR}/tr_model.c
	${RDIR}/tr_noise.c
	${RDIR}/tr_scene.c
	${RDIR}/tr_shade.c
	${RDIR}/tr_shade_calc.c
	${RDIR}/tr_shader.c
	${RDIR}/tr_shadows.c
	${RDIR}/tr_sky.c
	${RDIR}/tr_surface.c
	${RDIR}/tr_world.c
	${UDIR}/linux_glimp.c
	${UDIR}/linux_joystick.c
	${UDIR}/linux_qgl.c
	${UDIR}/linux_snd.c
	${UDIR}/sdl_glimp.c
	${UDIR}/sdl_snd.c
)
endif()

if( NOT BUILD_CLIENT AND BUILD_SERVER )
	set( bin_prefix Quake3-UrT-Ded )
	set( source_files ${source_files}
	${NDIR}/null_client.c
	${NDIR}/null_input.c
	${NDIR}/null_snddma.c
)
endif()

if( BUILD_GAME_SO )
# TODO
endif()
if( BUILD_GAME_QVM )
# TODO
endif()

if( UNIX )
	set( bin_name ${bin_pirefix}.i386 )
	if( "${ARCH}" MATCHES "x86_64" )
		set( bin_name ${bin_prefix}.x86_64 )
	endif()
	set( source_files ${source_files}
	${UDIR}/linux_signals.c
	${UDIR}/unix_main.c
	${UDIR}/unix_shared.c
)
endif()
if( WIN32 )
	set( bin_name ${bin_prefix}.exe )
	set( source_files ${source_files}
	${W32DIR}/glw_win.h
	${W32DIR}/resource.h
	${W32DIR}/winquake.res
	${W32DIR}/win_gamma.c
	${W32DIR}/win_glimp.c
	${W32DIR}/win_input.c
	${W32DIR}/win_local.h
	${W32DIR}/win_main.c
	${W32DIR}/win_qgl.c
	${W32DIR}/win_resource.rc
	${W32DIR}/win_shared.c
	${W32DIR}/win_snd.c
	${W32DIR}/win_syscon.c
	${W32DIR}/win_wndproc.c
	${W32DIR}/msvc/UpgradeLog.XML
	${W32DIR}/msvc/botlib.vcproj
	${W32DIR}/msvc/botlib.vcxproj
	${W32DIR}/msvc/botlib.vcxproj.filters
	${W32DIR}/msvc/botlib.vcxproj.user
	${W32DIR}/msvc/cgame.def
	${W32DIR}/msvc/cgame.vcproj
	${W32DIR}/msvc/cgame.vcxproj
	${W32DIR}/msvc/cgame.vcxproj.filters
	${W32DIR}/msvc/cgame.vcxproj.user
	${W32DIR}/msvc/game.def
	${W32DIR}/msvc/game.vcproj
	${W32DIR}/msvc/game.vcxproj
	${W32DIR}/msvc/game.vcxproj.filters
	${W32DIR}/msvc/game.vcxproj.user
	${W32DIR}/msvc/libcurl.lib
	${W32DIR}/msvc/q3_ui.def
	${W32DIR}/msvc/q3_ui.vcproj
	${W32DIR}/msvc/q3_ui.vcxproj
	${W32DIR}/msvc/q3_ui.vcxproj.filters
	${W32DIR}/msvc/q3_ui.vcxproj.user
	${W32DIR}/msvc/quake3.sln
	${W32DIR}/msvc/quake3.sln.old
	${W32DIR}/msvc/quake3.suo
	${W32DIR}/msvc/quake3.vcproj
	${W32DIR}/msvc/quake3.vcxproj
	${W32DIR}/msvc/quake3.vcxproj.filters
	${W32DIR}/msvc/quake3.vcxproj.user
	${W32DIR}/msvc/ref_trin.def
	${W32DIR}/msvc/renderer.vcproj
	${W32DIR}/msvc/renderer.vcxproj
	${W32DIR}/msvc/renderer.vcxproj.filters
	${W32DIR}/msvc/renderer.vcxproj.user
	${W32DIR}/msvc/ui.def
	${W32DIR}/msvc/ui.vcproj
	${W32DIR}/msvc/ui.vcxproj
	${W32DIR}/msvc/ui.vcxproj.filters
	${W32DIR}/msvc/ui.vcxproj.user
)
endif()
#=======================================


#=== create the proper binary ===========
add_executable( ${bin_name} ${source_files} )
#========================================
