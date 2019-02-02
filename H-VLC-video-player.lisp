;; ***************************** H-VLC-video-player.lisp ********************
;;
;;  OUTPUT FROM  CMD>  VLC --longhelp --advanced

#|
Usage: VLC [options] [stream] ...
You CAN SPECIFY MULTIPLE STREAMS ON THE COMMANDLINE.
They will be enqueued in the playlist.
The first item specified will be played first.

OPTIONS-STYLES:
  --option  A global option that is set for the duration of the program.
   -option  A single letter version of a global --option.
   :option  An option that only applies to the stream directly before it
            and that overrides previous settings.

Stream MRL syntax:
  [[access][/demux]://]URL[#[title][:chapter][-[title][:chapter]]]
  [:option=value ...]

  Many of the global --options can also be used as MRL specific :options.
  Multiple :option=value pairs can be specified.


URL SYNTAX:
  file:///path/file              Plain media file
  http://host[:port]/file        HTTP URL
  ftp://host[:port]/file         FTP URL
  mms://host[:port]/file         MMS URL
  screen://                      Screen capture
  dvd://[device]                 DVD device
  vcd://[device]                 VCD device
  cdda://[device]                Audio CD device
  udp://[[<source address>]@[<bind address>][:<bind port>]]
                                 UDP stream sent by a streaming server
  vlc://pause:<seconds>          Pause the playlist for a certain time
  vlc://quit                     Special item to quit VLC


No matching module found. Use --list or --list-verbose to list available modules.

 Visualizer filter
   General:
      --effect-list=<string>     Effects list
      --effect-width=<integer [-2147483648 .. 2147483647]>
                                 Video width
      --effect-height=<integer [-2147483648 .. 2147483647]>
                                 Video height
   Spectrum analyser:
      --visual-80-bands, --no-visual-80-bands
                                 Show 80 bands instead of 20 (default enabled)
      --visual-peaks, --no-visual-peaks
                                 Draw peaks in the analyzer (default enabled)
   Spectrometer:
      --spect-show-original, --no-spect-show-original
                                 Enable original graphic spectrum (default
                                 disabled)
      --spect-show-base, --no-spect-show-base
                                 Draw the base of the bands (default enabled)
      --spect-radius=<integer [-2147483648 .. 2147483647]>
                                 Base pixel radius
      --spect-sections=<integer [-2147483648 .. 2147483647]>
                                 Spectral sections
      --spect-color=<integer [-2147483648 .. 2147483647]>
                                 V-plane color
      --spect-show-bands, --no-spect-show-bands
                                 Draw bands in the spectrometer (default
                                 enabled)
      --spect-80-bands, --no-spect-80-bands
                                 Show 80 bands instead of 20 (default enabled)
      --spect-separ=<integer [-2147483648 .. 2147483647]>
                                 Number of blank pixels between bands.
      --spect-amp=<integer [-2147483648 .. 2147483647]>
                                 Amplification
      --spect-show-peaks, --no-spect-show-peaks
                                 Draw peaks in the analyzer (default enabled)
      --spect-peak-width=<integer [-2147483648 .. 2147483647]>
                                 Peak extra width
      --spect-peak-height=<integer [-2147483648 .. 2147483647]>
                                 Peak height

 libprojectM effect
      --projectm-preset-path=<string>
                                 projectM preset path
      --projectm-title-font=<string>
                                 Title font
      --projectm-menu-font=<string>
                                 Font menu
      --projectm-width=<integer [-2147483648 .. 2147483647]>
                                 Video width
      --projectm-height=<integer [-2147483648 .. 2147483647]>
                                 Video height
      --projectm-meshx=<integer [-2147483648 .. 2147483647]>
                                 Mesh width
      --projectm-meshy=<integer [-2147483648 .. 2147483647]>
                                 Mesh height
      --projectm-texture-size=<integer [-2147483648 .. 2147483647]>
                                 Texture size

 Goom effect
      --goom-width=<integer [-2147483648 .. 2147483647]>
                                 Goom display width
      --goom-height=<integer [-2147483648 .. 2147483647]>
                                 Goom display height
      --goom-speed=<integer [1 .. 10]>
                                 Goom animation speed

 YUV video output
      --yuv-file=<string>        device, fifo or filename
      --yuv-chroma=<string>      Chroma used
      --yuv-yuv4mpeg2, --no-yuv-yuv4mpeg2
                                 YUV4MPEG2 header (default disabled) (default
                                 disabled)

 Video memory output
      --vmem-width=<integer [-2147483648 .. 2147483647]>
                                 Width
      --vmem-height=<integer [-2147483648 .. 2147483647]>
                                 Height
      --vmem-pitch=<integer [-2147483648 .. 2147483647]>
                                 Pitch
      --vmem-chroma=<string>     Chroma

 Dummy video output
      --dummy-chroma=<string>    Dummy image chroma format

 Embedded window video
      --drawable-hwnd=<integer [-2147483648 .. 2147483647]>
                                 Window handle (HWND)

 DirectX (DirectDraw) video output
 Recommended video output for Windows XP. Incompatible with Vista's Aero interface
      --directx-hw-yuv, --no-directx-hw-yuv
                                 Use hardware YUV->RGB conversions (default
                                 enabled)
      --directx-use-sysmem, --no-directx-use-sysmem
                                 Use video buffers in system memory (default
                                 disabled)
      --directx-3buffering, --no-directx-3buffering
                                 Use triple buffering for overlays (default
                                 enabled)
      --directx-device={}        Name of desired display device

 Direct3D video output
 Recommended video output for Windows Vista and later versions
      --direct3d-hw-blending, --no-direct3d-hw-blending
                                 Use hardware blending support (default
                                 enabled)

 Wall video filter
      --wall-cols=<integer [-2147483648 .. 2147483647]>
                                 Number of columns
      --wall-rows=<integer [-2147483648 .. 2147483647]>
                                 Number of rows
      --wall-active=<string>     Active windows
      --wall-element-aspect=<string>
                                 Element aspect ratio

 Video transformation filter
 Rotate or flip the video
      --transform-type={90,180,270,hflip,vflip}
                                 Transform type

 Video scaling filter
      --swscale-mode={0 (Fast bilinear), 1 (Bilinear), 2 (Bicubic (good quality)), 3 (Experimental), 4 (Nearest neighbour (bad quality)), 5 (Area), 6 (Luma bicubic / chroma bilinear), 7 (Gauss), 8 (SincR), 9 (Lanczos), 10 (Bicubic spline)}
                                 Scaling mode

 Subtitles delay
 Change subtitles delay
      --subsdelay-mode={0 (Absolute delay), 1 (Relative to source delay), 2 (Relative to source content)}
                                 Delay calculation mode
      --subsdelay-factor=<float [0.000000 .. 20.000000]>
                                 Calculation factor
      --subsdelay-overlap=<integer [1 .. 4]>
                                 Maximum overlapping subtitles
      --subsdelay-min-alpha=<integer [0 .. 255]>
                                 Minimum alpha value
   Overlap fix:
      --subsdelay-min-stops=<integer [-2147483648 .. 2147483647]>
                                 Interval between two disappearances
      --subsdelay-min-start-stop=<integer [-2147483648 .. 2147483647]>
                                 Interval between appearance and disappearance
      --subsdelay-min-stop-start=<integer [-2147483648 .. 2147483647]>
                                 Interval between disappearance and appearance

 Sharpen video filter
 Augment contrast between contours.
      --sharpen-sigma=<float [0.000000 .. 2.000000]>
                                 Sharpen strength (0-2)

 Sepia video filter
 Gives video a warmer tone by applying sepia effect
      --sepia-intensity=<integer [0 .. 255]>
                                 Sepia intensity

 Scene video filter
 Send your video to picture files
      --scene-format=<string>    Image format
      --scene-width=<integer [-2147483648 .. 2147483647]>
                                 Image width
      --scene-height=<integer [-2147483648 .. 2147483647]>
                                 Image height
      --scene-prefix=<string>    Filename prefix
      --scene-path=<string>      Directory path prefix
      --scene-replace, --no-scene-replace
                                 Always write to the same file (default
                                 disabled)
      --scene-ratio=<integer [-2147483648 .. 2147483647]>
                                 Recording ratio

 RSS and Atom feed display
 Display a RSS or ATOM Feed on your video
      --rss-urls=<string>        Feed URLs
   Position:
      --rss-x=<integer [-2147483648 .. 2147483647]>
                                 X offset
      --rss-y=<integer [-2147483648 .. 2147483647]>
                                 Y offset
      --rss-position={0 (Center), 1 (Left), 2 (Right), 4 (Top), 8 (Bottom), 5 (Top-Left), 6 (Top-Right), 9 (Bottom-Left), 10 (Bottom-Right)}
                                 Text position
   Font:
      --rss-opacity=<integer [0 .. 255]>
                                 Opacity
      --rss-color={-268435456 (Default), 0 (Black), 8421504 (Gray), 12632256 (Silver), 16777215 (White), 8388608 (Maroon), 16711680 (Red), 16711935 (Fuchsia), 16776960 (Yellow), 8421376 (Olive), 32768 (Green), 32896 (Teal), 65280 (Lime), 8388736 (Purple), 128 (Navy), 255 (Blue), 65535 (Aqua)}
                                 Color
      --rss-size=<integer [-2147483648 .. 2147483647]>
                                 Font size, pixels
   Misc:
      --rss-speed=<integer [-2147483648 .. 2147483647]>
                                 Speed of feeds
      --rss-length=<integer [-2147483648 .. 2147483647]>
                                 Max length
      --rss-ttl=<integer [-2147483648 .. 2147483647]>
                                 Refresh time
      --rss-images, --no-rss-images
                                 Feed images (default enabled)
      --rss-title={-1 (Default), 0 (Don't show), 1 (Always visible), 2 (Scroll with feed)}
                                 Title display mode

 Rotate video filter
      --rotate-angle=<integer [0 .. 359]>
                                 Angle in degrees

 Remote-OSD over VNC
      --rmtosd-host=<string>     VNC Host
      --rmtosd-port=<integer [1 .. 65535]>
                                 VNC Port
      --rmtosd-password=<string> VNC Password
      --rmtosd-update=<integer [200 .. 300]>
                                 VNC poll interval
      --rmtosd-vnc-polling, --no-rmtosd-vnc-polling
                                 VNC polling (default disabled)
      --rmtosd-mouse-events, --no-rmtosd-mouse-events
                                 Mouse events (default disabled)
      --rmtosd-key-events, --no-rmtosd-key-events
                                 Key events (default disabled)
      --rmtosd-alpha=<integer [0 .. 255]>
                                 Alpha transparency value (default 255)

 Puzzle interactive game video filter
      --puzzle-rows=<integer [2 .. 16]>
                                 Number of puzzle rows
      --puzzle-cols=<integer [2 .. 16]>
                                 Number of puzzle columns
      --puzzle-black-slot, --no-puzzle-black-slot
                                 Make one tile a black slot (default disabled)

 Video post processing filter
      --postproc-q=<integer [0 .. 6]>
                                 Post processing quality
      --postproc-name=<string>   FFmpeg post processing filter chains

 Posterize video filter
 Posterize video by lowering the number of colors
      --posterize-level=<integer [2 .. 256]>
                                 Posterize level

 Panoramix: wall with overlap video filter
 Split the video in multiple windows to display on a wall of screens
      --panoramix-cols=<integer [-2147483648 .. 2147483647]>
                                 Number of columns
      --panoramix-rows=<integer [-2147483648 .. 2147483647]>
                                 Number of rows
      --panoramix-bz-length=<integer [0 .. 100]>
                                 length of the overlapping area (in %)
      --panoramix-bz-height=<integer [0 .. 100]>
                                 height of the overlapping area (in %)
      --panoramix-attenuate, --no-panoramix-attenuate
                                 Attenuation (default enabled)
      --panoramix-bz-begin=<integer [0 .. 100]>
                                 Attenuation, begin (in %)
      --panoramix-bz-middle=<integer [0 .. 100]>
                                 Attenuation, middle (in %)
      --panoramix-bz-end=<integer [0 .. 100]>
                                 Attenuation, end (in %)
      --panoramix-bz-middle-pos=<integer [1 .. 99]>
                                 middle position (in %)
      --panoramix-bz-gamma-red=<float [0.000000 .. 5.000000]>
                                 Gamma (Red) correction
      --panoramix-bz-gamma-green=<float [0.000000 .. 5.000000]>
                                 Gamma (Green) correction
      --panoramix-bz-gamma-blue=<float [0.000000 .. 5.000000]>
                                 Gamma (Blue) correction
      --panoramix-bz-blackcrush-red=<integer [0 .. 255]>
                                 Black Crush for Red
      --panoramix-bz-blackcrush-green=<integer [0 .. 255]>
                                 Black Crush for Green
      --panoramix-bz-blackcrush-blue=<integer [0 .. 255]>
                                 Black Crush for Blue
      --panoramix-bz-whitecrush-red=<integer [0 .. 255]>
                                 White Crush for Red
      --panoramix-bz-whitecrush-green=<integer [0 .. 255]>
                                 White Crush for Green
      --panoramix-bz-whitecrush-blue=<integer [0 .. 255]>
                                 White Crush for Blue
      --panoramix-bz-blacklevel-red=<integer [0 .. 255]>
                                 Black Level for Red
      --panoramix-bz-blacklevel-green=<integer [0 .. 255]>
                                 Black Level for Green
      --panoramix-bz-blacklevel-blue=<integer [0 .. 255]>
                                 Black Level for Blue
      --panoramix-bz-whitelevel-red=<integer [0 .. 255]>
                                 White Level for Red
      --panoramix-bz-whitelevel-green=<integer [0 .. 255]>
                                 White Level for Green
      --panoramix-bz-whitelevel-blue=<integer [0 .. 255]>
                                 White Level for Blue
      --panoramix-active=<string>
                                 Active windows

 On Screen Display menu
      --osdmenu-x=<integer [-2147483648 .. 2147483647]>
                                 X coordinate
      --osdmenu-y=<integer [-2147483648 .. 2147483647]>
                                 Y coordinate
      --osdmenu-position={0 (Center), 1 (Left), 2 (Right), 4 (Top), 8 (Bottom), 5 (Top-Left), 6 (Top-Right), 9 (Bottom-Left), 10 (Bottom-Right)}
                                 Menu position
      --osdmenu-file=<string>    Configuration file
      --osdmenu-file-path=<string>
                                 Path to OSD menu images
      --osdmenu-timeout=<integer [-2147483648 .. 2147483647]>
                                 Menu timeout
      --osdmenu-update=<integer [0 .. 1000]>
                                 Menu update interval
      --osdmenu-alpha=<integer [0 .. 255]>
                                 Alpha transparency value (default 255)

 Motion blur filter
      --blur-factor=<integer [1 .. 127]>
                                 Blur factor (1-127)

 Mosaic video sub source
      --mosaic-alpha=<integer [0 .. 255]>
                                 Transparency
      --mosaic-height=<integer [-2147483648 .. 2147483647]>
                                 Height
      --mosaic-width=<integer [-2147483648 .. 2147483647]>
                                 Width
      --mosaic-align={0 (Center), 1 (Left), 2 (Right), 4 (Top), 8 (Bottom), 5 (Top-Left), 6 (Top-Right), 9 (Bottom-Left), 10 (Bottom-Right)}
                                 Mosaic alignment
      --mosaic-xoffset=<integer [-2147483648 .. 2147483647]>
                                 Top left corner X coordinate
      --mosaic-yoffset=<integer [-2147483648 .. 2147483647]>
                                 Top left corner Y coordinate
      --mosaic-borderw=<integer [-2147483648 .. 2147483647]>
                                 Border width
      --mosaic-borderh=<integer [-2147483648 .. 2147483647]>
                                 Border height
      --mosaic-position={0 (auto), 1 (fixed), 2 (offsets)}
                                 Positioning method
      --mosaic-rows=<integer [-2147483648 .. 2147483647]>
                                 Number of rows
      --mosaic-cols=<integer [-2147483648 .. 2147483647]>
                                 Number of columns
      --mosaic-keep-aspect-ratio, --no-mosaic-keep-aspect-ratio
                                 Keep aspect ratio (default disabled)
      --mosaic-keep-picture, --no-mosaic-keep-picture
                                 Keep original size (default disabled)
      --mosaic-order=<string>    Elements order
      --mosaic-offsets=<string>  Offsets in order
      --mosaic-delay=<integer [-2147483648 .. 2147483647]>
                                 Delay

 Mirror video filter
 Splits video in two same parts, like in a mirror
      --mirror-split={0 (Vertical), 1 (Horizontal)}
                                 Mirror orientation
      --mirror-direction={0 (Left to right/Top to bottom), 1 (Right to left/Bottom to top)}
                                 Direction

 Marquee display
 Display text above the video
      --marq-marquee=<string>    Text
   Position:
      --marq-x=<integer [-2147483648 .. 2147483647]>
                                 X offset
      --marq-y=<integer [-2147483648 .. 2147483647]>
                                 Y offset
      --marq-position={0 (Center), 1 (Left), 2 (Right), 4 (Top), 8 (Bottom), 5 (Top-Left), 6 (Top-Right), 9 (Bottom-Left), 10 (Bottom-Right)}
                                 Marquee position
   Font:
      --marq-opacity=<integer [0 .. 255]>
                                 Opacity
      --marq-color={-268435456 (Default), 0 (Black), 8421504 (Gray), 12632256 (Silver), 16777215 (White), 8388608 (Maroon), 16711680 (Red), 16711935 (Fuchsia), 16776960 (Yellow), 8421376 (Olive), 32768 (Green), 32896 (Teal), 65280 (Lime), 8388736 (Purple), 128 (Navy), 255 (Blue), 65535 (Aqua)}
                                 Color
      --marq-size=<integer [-2147483648 .. 2147483647]>
                                 Font size, pixels
   Misc:
      --marq-timeout=<integer [-2147483648 .. 2147483647]>
                                 Timeout
      --marq-refresh=<integer [-2147483648 .. 2147483647]>
                                 Refresh period in ms

 Logo sub source
 Use a local picture as logo on the video
      --logo-file=<string>       Logo filenames
      --logo-x=<integer [-2147483648 .. 2147483647]>
                                 X coordinate
      --logo-y=<integer [-2147483648 .. 2147483647]>
                                 Y coordinate
      --logo-delay=<integer [-2147483648 .. 2147483647]>
                                 Logo individual image time in ms
      --logo-repeat=<integer [-2147483648 .. 2147483647]>
                                 Logo animation # of loops
      --logo-opacity=<integer [0 .. 255]>
                                 Opacity of the logo
      --logo-position={0 (Center), 1 (Left), 2 (Right), 4 (Top), 8 (Bottom), 5 (Top-Left), 6 (Top-Right), 9 (Bottom-Left), 10 (Bottom-Right)}
                                 Logo position

 High Quality 3D Denoiser filter
      --hqdn3d-luma-spat=<float [0.000000 .. 254.000000]>
                                 Spatial luma strength (0-254)
      --hqdn3d-chroma-spat=<float [0.000000 .. 254.000000]>
                                 Spatial chroma strength (0-254)
      --hqdn3d-luma-temp=<float [0.000000 .. 254.000000]>
                                 Temporal luma strength (0-254)
      --hqdn3d-chroma-temp=<float [0.000000 .. 254.000000]>
                                 Temporal chroma strength (0-254)

 Grain video filter
 Adds filtered gaussian noise
      --grain-variance=<float [0.000000 .. 10.000000]>
                                 Variance
      --grain-period-min=<integer [1 .. 64]>
                                 Minimal period
      --grain-period-max=<integer [1 .. 64]>
                                 Maximal period

 Gradient video filter
 Apply color gradient or edge detection effects
      --gradient-mode={gradient,edge,hough}
                                 Distort mode
      --gradient-type=<integer [0 .. 1]>
                                 Gradient image type
      --gradient-cartoon, --no-gradient-cartoon
                                 Apply cartoon effect (default enabled)

 Gradfun video filter
 Debanding algorithm
      --gradfun-radius=<integer [4 .. 32]>
                                 Radius
      --gradfun-strength=<float [0.510000 .. 255.000000]>
                                 Strength

 Gaussian blur video filter
 Add a blurring effect
      --gaussianblur-sigma=<float>
                                 Gaussian's std deviation

 Extract RGB component video filter
      --extract-component={16711680 (Red), 65280 (Green), 255 (Blue)}
                                 RGB component to extract

 Erase video filter
 Remove zones of the video using a picture as mask
      --erase-mask=<string>      Image mask
      --erase-x=<integer [-2147483648 .. 2147483647]>
                                 X coordinate
      --erase-y=<integer [-2147483648 .. 2147483647]>
                                 Y coordinate

 Deinterlacing video filter
      --sout-deinterlace-mode={discard,blend,mean,bob,linear,x,yadif,yadif2x,phosphor,ivtc}
                                 Streaming deinterlace mode
      --sout-deinterlace-phosphor-chroma={1 (Latest), 2 (AltLine), 3 (Blend), 4 (Upconvert)}
                                 Phosphor chroma mode for 4:2:0 input
      --sout-deinterlace-phosphor-dimmer={1 (Off), 2 (Low), 3 (Medium), 4 (High)}
                                 Phosphor old field dimmer strength

 Video scaling filter
   Crop:
      --croppadd-croptop=<integer [0 .. 2147483647]>
                                 Pixels to crop from top
      --croppadd-cropbottom=<integer [0 .. 2147483647]>
                                 Pixels to crop from bottom
      --croppadd-cropleft=<integer [0 .. 2147483647]>
                                 Pixels to crop from left
      --croppadd-cropright=<integer [0 .. 2147483647]>
                                 Pixels to crop from right
   Padd:
      --croppadd-paddtop=<integer [0 .. 2147483647]>
                                 Pixels to padd to top
      --croppadd-paddbottom=<integer [0 .. 2147483647]>
                                 Pixels to padd to bottom
      --croppadd-paddleft=<integer [0 .. 2147483647]>
                                 Pixels to padd to left
      --croppadd-paddright=<integer [0 .. 2147483647]>
                                 Pixels to padd to right

 Color threshold filter
 Select one color in the video
      --colorthres-color={16711680 (Red), 16711935 (Fuchsia), 16776960 (Yellow), 65280 (Lime), 255 (Blue), 65535 (Aqua)}
                                 Color
      --colorthres-saturationthres=<integer [-2147483648 .. 2147483647]>
                                 Saturation threshold
      --colorthres-similaritythres=<integer [-2147483648 .. 2147483647]>
                                 Similarity threshold

 Clone video filter
 Duplicate your video to multiple windows and/or video output modules
      --clone-count=<integer [-2147483648 .. 2147483647]>
                                 Number of clones
      --clone-vout-list=<string> Video output modules

 Canvas video filter
 Automatically resize and pad a video
      --canvas-width=<integer [0 .. 2147483647]>
                                 Output width
      --canvas-height=<integer [0 .. 2147483647]>
                                 Output height
      --canvas-aspect=<string>   Output picture aspect ratio
      --canvas-padd, --no-canvas-padd
                                 Pad video (default enabled)

 Bluescreen video filter
 This effect, also known as "greenscreen" or "chroma key" blends the "blue parts" of the foreground image of the mosaic on the background (like weather forecasts). You can choose the "key" color for blending (blue by default).
      --bluescreen-u=<integer [0 .. 255]>
                                 Bluescreen U value
      --bluescreen-v=<integer [0 .. 255]>
                                 Bluescreen V value
      --bluescreen-ut=<integer [0 .. 255]>
                                 Bluescreen U tolerance
      --bluescreen-vt=<integer [0 .. 255]>
                                 Bluescreen V tolerance

 Blending benchmark filter
   Benchmarking:
      --blendbench-loops=<integer [-2147483648 .. 2147483647]>
                                 Number of time to blend
      --blendbench-alpha=<integer [0 .. 255]>
                                 Alpha of the blended image
   Base image:
      --blendbench-base-image=<string>
                                 Image to be blended onto
      --blendbench-base-chroma=<string>
                                 Chroma for the base image
   Blend image:
      --blendbench-blend-image=<string>
                                 Image which will be blended
      --blendbench-blend-chroma=<string>
                                 Chroma for the blend image

 Ball video filter
 Augmented reality ball game
      --ball-color={red,green,blue,white}
                                 Ball color
      --ball-speed=<integer [1 .. 15]>
                                 Ball speed
      --ball-size=<integer [5 .. 30]>
                                 Ball size
      --ball-gradient-threshold=<integer [1 .. 200]>
                                 Gradient threshold
      --ball-edge-visible, --no-ball-edge-visible
                                 Edge visible (default enabled)

 Audio Bar Graph Video sub source
      --audiobargraph_v-i_values=<string>
                                 Value of the audio channels levels
      --audiobargraph_v-x=<integer [-2147483648 .. 2147483647]>
                                 X coordinate
      --audiobargraph_v-y=<integer [-2147483648 .. 2147483647]>
                                 Y coordinate
      --audiobargraph_v-transparency=<integer [0 .. 255]>
                                 Transparency of the bargraph
      --audiobargraph_v-position={0 (Center), 1 (Left), 2 (Right), 4 (Top), 8 (Bottom), 5 (Top-Left), 6 (Top-Right), 9 (Bottom-Left), 10 (Bottom-Right)}
                                 Bargraph position
      --audiobargraph_v-alarm=<integer [-2147483648 .. 2147483647]>
                                 Alarm
      --audiobargraph_v-barWidth=<integer [-2147483648 .. 2147483647]>
                                 Bar width in pixel (default : 10)

 AtmoLight Filter
 This module allows controlling an so called AtmoLight device connected to your computer.
AtmoLight is the homegrown version of what Philips calls AmbiLight.
If you need further information feel free to visit us at

http://www.vdr-wiki.de/wiki/index.php/Atmo-plugin
http://www.vdr-wiki.de/wiki/index.php/AtmoWin

You can find there detailed descriptions on how to build it for yourself and where to get the required parts.
You can also have a look at pictures and some movies showing such a device in live action.
   Choose Devicetype and Connection:
      --atmo-device={0 (AtmoWin Software), 1 (Classic AtmoLight), 2 (Quattro AtmoLight), 3 (DMX), 4 (MoMoLight), 5 (fnordlicht)}
                                 Device type
      --atmo-serialdev=<string>  Serial Port/Device
      --atmo-atmowinexe=<string> Filename of AtmoWin*.exe
   Illuminate the room with this color on pause:
      --atmo-usepausecolor, --no-atmo-usepausecolor
                                 Color when paused (default disabled)
      --atmo-pcolor-red=<integer [0 .. 255]>
                                 Pause-Red
      --atmo-pcolor-green=<integer [0 .. 255]>
                                 Pause-Green
      --atmo-pcolor-blue=<integer [0 .. 255]>
                                 Pause-Blue
      --atmo-fadesteps=<integer [1 .. 250]>
                                 Pause-Fadesteps
   Illuminate the room with this color on shutdown:
      --atmo-ecolor-red=<integer [0 .. 255]>
                                 End-Red
      --atmo-ecolor-green=<integer [0 .. 255]>
                                 End-Green
      --atmo-ecolor-blue=<integer [0 .. 255]>
                                 End-Blue
      --atmo-efadesteps=<integer [1 .. 250]>
                                 End-Fadesteps
   DMX options:
      --atmo-dmx-channels=<integer [1 .. 64]>
                                 Count of AtmoLight channels
      --atmo-dmx-chbase=<string> DMX address for each channel
   MoMoLight options:
      --atmo-momo-channels=<integer [3 .. 4]>
                                 Count of channels
   fnordlicht options:
      --atmo-fnordlicht-amount=<integer [1 .. 254]>
                                 Count of fnordlicht's
   Zone Layout for the build-in Atmo:
      --atmo-zones-top=<integer [0 .. 16]>
                                 Number of zones on top
      --atmo-zones-bottom=<integer [0 .. 16]>
                                 Number of zones on bottom
      --atmo-zones-lr=<integer [0 .. 16]>
                                 Zones on left / right side
      --atmo-zone-summary, --no-atmo-zone-summary
                                 Calculate a average zone (default disabled)
   Settings for the built-in Live Video Processor only:
      --atmo-edgeweightning=<integer [1 .. 30]>
                                 Edge Weightning
      --atmo-brightness=<integer [50 .. 300]>
                                 Brightness
      --atmo-darknesslimit=<integer [0 .. 10]>
                                 Darkness Limit
      --atmo-huewinsize=<integer [0 .. 5]>
                                 Hue windowing
      --atmo-satwinsize=<integer [0 .. 5]>
                                 Sat windowing
      --atmo-filtermode={0 (No Filtering), 1 (Combined), 2 (Percent)}
                                 Output Color filter mode
      --atmo-meanlength=<integer [300 .. 5000]>
                                 Filter length (ms)
      --atmo-meanthreshold=<integer [1 .. 100]>
                                 Filter threshold
      --atmo-percentnew=<integer [1 .. 100]>
                                 Filter Smoothness (in %)
      --atmo-framedelay=<integer [0 .. 200]>
                                 Frame delay (ms)
   Change channel assignment (fixes wrong wiring):
      --atmo-channel_0={-1 (disabled), 4 (Zone 4:summary), 3 (Zone 3:left), 1 (Zone 1:right), 0 (Zone 0:top), 2 (Zone 2:bottom)}
                                 Channel 0: summary
      --atmo-channel_1={-1 (disabled), 4 (Zone 4:summary), 3 (Zone 3:left), 1 (Zone 1:right), 0 (Zone 0:top), 2 (Zone 2:bottom)}
                                 Channel 1: left
      --atmo-channel_2={-1 (disabled), 4 (Zone 4:summary), 3 (Zone 3:left), 1 (Zone 1:right), 0 (Zone 0:top), 2 (Zone 2:bottom)}
                                 Channel 2: right
      --atmo-channel_3={-1 (disabled), 4 (Zone 4:summary), 3 (Zone 3:left), 1 (Zone 1:right), 0 (Zone 0:top), 2 (Zone 2:bottom)}
                                 Channel 3: top
      --atmo-channel_4={-1 (disabled), 4 (Zone 4:summary), 3 (Zone 3:left), 1 (Zone 1:right), 0 (Zone 0:top), 2 (Zone 2:bottom)}
                                 Channel 4: bottom
      --atmo-channels=<string>   Channel / Zone Assignment
   Adjust the white light to your LED stripes:
      --atmo-whiteadj, --no-atmo-whiteadj
                                 Use Software White adjust (default enabled)
      --atmo-white-red=<integer [0 .. 255]>
                                 White Red
      --atmo-white-green=<integer [0 .. 255]>
                                 White Green
      --atmo-white-blue=<integer [0 .. 255]>
                                 White Blue
   Change gradients:
      --atmo-gradient_zone_0=<string>
                                 Zone 0: Top gradient
      --atmo-gradient_zone_1=<string>
                                 Zone 1: Right gradient
      --atmo-gradient_zone_2=<string>
                                 Zone 2: Bottom gradient
      --atmo-gradient_zone_3=<string>
                                 Zone 3: Left gradient
      --atmo-gradient_zone_4=<string>
                                 Zone 4: Summary gradient
      --atmo-gradient_path=<string>
                                 Gradient bitmap searchpath
      --atmo-width=<integer [64 .. 512]>
                                 Extracted Image Width
      --atmo-height=<integer [48 .. 384]>
                                 Extracted Image Height
      --atmo-showdots, --no-atmo-showdots
                                 Mark analyzed pixels (default disabled)

 antiflicker video filter
      --antiflicker-window-size=<integer [0 .. 100]>
                                 Window size
      --antiflicker-softening-size=<integer [0 .. 31]>
                                 Softening value

 Alpha mask video filter
 Use an image's alpha channel as a transparency mask.
      --alphamask-mask=<string>  Transparency mask

 Image properties filter
      --contrast=<float [0.000000 .. 2.000000]>
                                 Image contrast (0-2)
      --brightness=<float [0.000000 .. 2.000000]>
                                 Image brightness (0-2)
      --hue=<integer [0 .. 360]> Image hue (0-360)
      --saturation=<float [0.000000 .. 3.000000]>
                                 Image saturation (0-3)
      --gamma=<float [0.010000 .. 10.000000]>
                                 Image gamma (0-10)
      --brightness-threshold, --no-brightness-threshold
                                 Brightness threshold (default disabled)

 Freetype2 font renderer
      --freetype-font=<string>   Font
      --freetype-fontsize=<integer [-2147483648 .. 2147483647]>
                                 Font size in pixels
      --freetype-rel-fontsize={20 (Smaller), 18 (Small), 16 (Normal), 12 (Large), 6 (Larger)}
                                 Relative font size
      --freetype-opacity=<integer [0 .. 255]>
                                 Text opacity
      --freetype-color={0 (Black), 8421504 (Gray), 12632256 (Silver), 16777215 (White), 8388608 (Maroon), 16711680 (Red), 16711935 (Fuchsia), 16776960 (Yellow), 8421376 (Olive), 32768 (Green), 32896 (Teal), 65280 (Lime), 8388736 (Purple), 128 (Navy), 255 (Blue), 65535 (Aqua)}
                                 Text default color
      --freetype-bold, --no-freetype-bold
                                 Force bold (default disabled)
      --freetype-background-opacity=<integer [0 .. 255]>
                                 Background opacity
      --freetype-background-color={0 (Black), 8421504 (Gray), 12632256 (Silver), 16777215 (White), 8388608 (Maroon), 16711680 (Red), 16711935 (Fuchsia), 16776960 (Yellow), 8421376 (Olive), 32768 (Green), 32896 (Teal), 65280 (Lime), 8388736 (Purple), 128 (Navy), 255 (Blue), 65535 (Aqua)}
                                 Background color
      --freetype-outline-opacity=<integer [0 .. 255]>
                                 Outline opacity
      --freetype-outline-color={0 (Black), 8421504 (Gray), 12632256 (Silver), 16777215 (White), 8388608 (Maroon), 16711680 (Red), 16711935 (Fuchsia), 16776960 (Yellow), 8421376 (Olive), 32768 (Green), 32896 (Teal), 65280 (Lime), 8388736 (Purple), 128 (Navy), 255 (Blue), 65535 (Aqua)}
                                 Outline color
      --freetype-outline-thickness={0 (None), 2 (Thin), 4 (Normal), 6 (Thick)}
                                 Outline thickness
      --freetype-shadow-opacity=<integer [0 .. 255]>
                                 Shadow opacity
      --freetype-shadow-color={0 (Black), 8421504 (Gray), 12632256 (Silver), 16777215 (White), 8388608 (Maroon), 16711680 (Red), 16711935 (Fuchsia), 16776960 (Yellow), 8421376 (Olive), 32768 (Green), 32896 (Teal), 65280 (Lime), 8388736 (Purple), 128 (Navy), 255 (Blue), 65535 (Aqua)}
                                 Shadow color
      --freetype-shadow-angle=<float [-360.000000 .. 360.000000]>
                                 Shadow angle
      --freetype-shadow-distance=<float [0.000000 .. 1.000000]>
                                 Shadow distance
      --freetype-yuvp, --no-freetype-yuvp
                                 Use YUVP renderer (default disabled)

 Transcode stream output
   Video:
      --sout-transcode-venc=<string>
                                 Video encoder
      --sout-transcode-vcodec=<string>
                                 Destination video codec
      --sout-transcode-vb=<integer [-2147483648 .. 2147483647]>
                                 Video bitrate
      --sout-transcode-scale=<float>
                                 Video scaling
      --sout-transcode-fps=<float>
                                 Video frame-rate
      --sout-transcode-hurry-up, --no-sout-transcode-hurry-up
                                 Hurry up (default enabled)
      --sout-transcode-deinterlace, --no-sout-transcode-deinterlace
                                 Deinterlace video (default disabled)
      --sout-transcode-deinterlace-module={deinterlace,ffmpeg-deinterlace}
                                 Deinterlace module
      --sout-transcode-width=<integer [-2147483648 .. 2147483647]>
                                 Video width
      --sout-transcode-height=<integer [-2147483648 .. 2147483647]>
                                 Video height
      --sout-transcode-maxwidth=<integer [-2147483648 .. 2147483647]>
                                 Maximum video width
      --sout-transcode-maxheight=<integer [-2147483648 .. 2147483647]>
                                 Maximum video height
      --sout-transcode-vfilter=<string>
                                 Video filter
   Audio:
      --sout-transcode-aenc=<string>
                                 Audio encoder
      --sout-transcode-acodec=<string>
                                 Destination audio codec
      --sout-transcode-ab=<integer [-2147483648 .. 2147483647]>
                                 Audio bitrate
      --sout-transcode-alang=<string>
                                 Audio Language
      --sout-transcode-channels=<integer [-2147483648 .. 2147483647]>
                                 Audio channels
      --sout-transcode-samplerate=<integer [-2147483648 .. 2147483647]>
                                 Audio sample rate
      --sout-transcode-audio-sync, --no-sout-transcode-audio-sync
                                 Synchronise on audio track (default disabled)
      --sout-transcode-afilter=<string>
                                 Audio filter
   Overlays/Subtitles:
      --sout-transcode-senc=<string>
                                 Subtitles encoder
      --sout-transcode-scodec=<string>
                                 Destination subtitles codec
      --sout-transcode-soverlay, --no-sout-transcode-soverlay
                                 Destination subtitles codec (default disabled)
      --sout-transcode-sfilter=<string>
                                 Overlays
   On Screen Display:
      --sout-transcode-osd, --no-sout-transcode-osd
                                 OSD menu (default disabled)
   Miscellaneous:
      --sout-transcode-threads=<integer [-2147483648 .. 2147483647]>
                                 Number of threads
      --sout-transcode-high-priority, --no-sout-transcode-high-priority
                                 High priority (default disabled)

 Standard stream output
      --sout-standard-access=<string>
                                 Output access method
      --sout-standard-mux=<string>
                                 Output muxer
      --sout-standard-dst=<string>
                                 Output destination
      --sout-standard-bind=<string>
                                 address to bind to (helper setting for dst)
      --sout-standard-path=<string>
                                 filename for stream (helper setting for dst)
      --sout-standard-sap, --no-sout-standard-sap
                                 SAP announcing (default disabled)
      --sout-standard-name=<string>
                                 Session name
      --sout-standard-group=<string>
                                 Session groupname
      --sout-standard-description=<string>
                                 Session description
      --sout-standard-url=<string>
                                 Session URL
      --sout-standard-email=<string>
                                 Session email
      --sout-standard-phone=<string>
                                 Session phone number

 Stream output to memory buffer
      --sout-smem-video-prerender-callback=<string>
                                 Video prerender callback
      --sout-smem-audio-prerender-callback=<string>
                                 Audio prerender callback
      --sout-smem-video-postrender-callback=<string>
                                 Video postrender callback
      --sout-smem-audio-postrender-callback=<string>
                                 Audio postrender callback
      --sout-smem-video-data=<string>
                                 Video Callback data
      --sout-smem-audio-data=<string>
                                 Audio callback data
      --sout-smem-time-sync, --no-sout-smem-time-sync
                                 Time Synchronized output (default enabled)

 Change the id of an elementary stream
   Set ES id:
      --sout-setid-id=<integer [-2147483648 .. 2147483647]>
                                 Elementary Stream ID
      --sout-setid-new-id=<integer [-2147483648 .. 2147483647]>
                                 New ES ID
   Set ES Lang:
      --sout-setlang-id=<integer [-2147483648 .. 2147483647]>
                                 Elementary Stream ID
      --sout-setlang-lang=<string>
                                 Language

 Select individual es to enable or disable from stream
      --sout-select-port=<integer [-2147483648 .. 2147483647]>
                                 Command UDP port
      --sout-select-disable=<integer [-2147483648 .. 2147483647]>
                                 Disable ES id
      --sout-select-enable=<integer [-2147483648 .. 2147483647]>
                                 Enable ES id

 RTP stream output
      --sout-rtp-dst=<string>    Destination
      --sout-rtp-sdp=<string>    SDP
      --sout-rtp-mux=<string>    Muxer
      --sout-rtp-sap, --no-sout-rtp-sap
                                 SAP announcing (default disabled)
      --sout-rtp-name=<string>   Session name
      --sout-rtp-description=<string>
                                 Session description
      --sout-rtp-url=<string>    Session URL
      --sout-rtp-email=<string>  Session email
      --sout-rtp-phone=<string>  Session phone number
      --sout-rtp-proto={dccp,sctp,tcp,udp,udplite}
                                 Transport protocol
      --sout-rtp-port=<integer [-2147483648 .. 2147483647]>
                                 Port
      --sout-rtp-port-audio=<integer [-2147483648 .. 2147483647]>
                                 Audio port
      --sout-rtp-port-video=<integer [-2147483648 .. 2147483647]>
                                 Video port
      --sout-rtp-ttl=<integer [-2147483648 .. 2147483647]>
                                 Hop limit (TTL)
      --sout-rtp-rtcp-mux, --no-sout-rtp-rtcp-mux
                                 RTP/RTCP multiplexing (default disabled)
      --sout-rtp-caching=<integer [-2147483648 .. 2147483647]>
                                 Caching value (ms)
      --sout-rtp-key=<string>    SRTP key (hexadecimal)
      --sout-rtp-salt=<string>   SRTP salt (hexadecimal)
      --sout-rtp-mp4a-latm, --no-sout-rtp-mp4a-latm
                                 MP4A LATM (default disabled)
      --rtsp-timeout=<integer [-2147483648 .. 2147483647]>
                                 RTSP session timeout (s)
      --sout-rtsp-user=<string>  Username
      --sout-rtsp-pwd=<string>   Password

 Record stream output
      --sout-record-dst-prefix=<string>
                                 Destination prefix

 Remote Audio Output Protocol stream output
      --sout-raop-host=<string>  Host
      --sout-raop-password=<string>
                                 Password
      --sout-raop-password-file=<string>
                                 Password file
      --sout-raop-volume=<integer [0 .. 255]>
                                 Volume

 Mosaic bridge stream output
      --sout-mosaic-bridge-id=<string>
                                 ID
      --sout-mosaic-bridge-width=<integer [-2147483648 .. 2147483647]>
                                 Video width
      --sout-mosaic-bridge-height=<integer [-2147483648 .. 2147483647]>
                                 Video height
      --sout-mosaic-bridge-sar=<string>
                                 Sample aspect ratio
      --sout-mosaic-bridge-chroma=<string>
                                 Image chroma
      --sout-mosaic-bridge-vfilter=<string>
                                 Video filter
      --sout-mosaic-bridge-alpha=<integer [0 .. 255]>
                                 Transparency
      --sout-mosaic-bridge-x=<integer [-2147483648 .. 2147483647]>
                                 X offset
      --sout-mosaic-bridge-y=<integer [-2147483648 .. 2147483647]>
                                 Y offset

 Dynamic language setting from teletext
      --sout-langfromtelx-id=<integer [-2147483648 .. 2147483647]>
                                 Elementary Stream ID
      --sout-langfromtelx-magazine=<integer [-2147483648 .. 2147483647]>
                                 Magazine
      --sout-langfromtelx-page=<integer [-2147483648 .. 2147483647]>
                                 Page
      --sout-langfromtelx-row=<integer [-2147483648 .. 2147483647]>
                                 Row

 Elementary stream output
   Generic:
      --sout-es-access=<string>  Output access method
      --sout-es-mux=<string>     Output muxer
      --sout-es-dst=<string>     Output URL
   Audio:
      --sout-es-access-audio=<string>
                                 Audio output access method
      --sout-es-mux-audio=<string>
                                 Audio output muxer
      --sout-es-dst-audio=<string>
                                 Audio output URL
   Video:
      --sout-es-access-video=<string>
                                 Video output access method
      --sout-es-mux-video=<string>
                                 Video output muxer
      --sout-es-dst-video=<string>
                                 Video output URL

 Display stream output
      --sout-display-audio, --no-sout-display-audio
                                 Enable audio (default enabled)
      --sout-display-video, --no-sout-display-video
                                 Enable video (default enabled)
      --sout-display-delay=<integer [-2147483648 .. 2147483647]>
                                 Delay (ms)

 Delay a stream
      --sout-delay-id=<integer [-2147483648 .. 2147483647]>
                                 Elementary Stream ID
      --sout-delay-delay=<integer [-2147483648 .. 2147483647]>
                                 Delay of the ES (ms)

 Bridge stream output
   Bridge out:
      --sout-bridge-out-id=<integer [-2147483648 .. 2147483647]>
                                 ID
      --sout-bridge-out-in-name=<string>
                                 Destination bridge-in name
   Bridge in:
      --sout-bridge-in-delay=<integer [-2147483648 .. 2147483647]>
                                 Delay
      --sout-bridge-in-id-offset=<integer [-2147483648 .. 2147483647]>
                                 ID Offset
      --sout-bridge-in-name=<string>
                                 Name of current instance
      --sout-bridge-in-placeholder, --no-sout-bridge-in-placeholder
                                 Fallback to placeholder stream when out of
                                 data (default disabled)
      --sout-bridge-in-placeholder-delay=<integer [-2147483648 .. 2147483647]>
                                 Placeholder delay
      --sout-bridge-in-placeholder-switch-on-iframe, --no-sout-bridge-in-placeholder-switch-on-iframe
                                 Wait for I frame before toggling placeholder
                                 (default enabled)

 Network streams (SAP)
      --sap-addr=<string>        SAP multicast address
      --sap-timeout=<integer [-2147483648 .. 2147483647]>
                                 SAP timeout (seconds)
      --sap-parse, --no-sap-parse
                                 Try to parse the announce (default enabled)
      --sap-strict, --no-sap-strict
                                 SAP Strict mode (default disabled)

 Podcasts
      --podcast-urls=<string>    Podcast URLs list

 MPEG-I/II video packetizer
      --packetizer-mpegvideo-sync-iframe, --no-packetizer-mpegvideo-sync-iframe
                                 Sync on Intra Frame (default disabled)

 MSN Now-Playing
      --msn-format=<string>      Title format string

 TS muxer (libdvbpsi)
      --sout-ts-pid-video=<integer [-2147483648 .. 2147483647]>
                                 Video PID
      --sout-ts-pid-audio=<integer [-2147483648 .. 2147483647]>
                                 Audio PID
      --sout-ts-pid-spu=<integer [-2147483648 .. 2147483647]>
                                 SPU PID
      --sout-ts-pid-pmt=<integer [-2147483648 .. 2147483647]>
                                 PMT PID
      --sout-ts-tsid=<integer [-2147483648 .. 2147483647]>
                                 TS ID
      --sout-ts-program-pmt=<string>
                                 PMT Program numbers
      --sout-ts-es-id-pid, --no-sout-ts-es-id-pid
                                 Set PID to ID of ES (default disabled)
      --sout-ts-muxpmt=<string>  Mux PMT (requires --sout-ts-es-id-pid)
      --sout-ts-alignment, --no-sout-ts-alignment
                                 Data alignment (default enabled)
      --sout-ts-shaping=<integer [-2147483648 .. 2147483647]>
                                 Shaping delay (ms)
      --sout-ts-use-key-frames, --no-sout-ts-use-key-frames
                                 Use keyframes (default disabled)
      --sout-ts-pcr=<integer [-2147483648 .. 2147483647]>
                                 PCR interval (ms)
      --sout-ts-bmin=<integer [-2147483648 .. 2147483647]>
                                 Minimum B (deprecated)
      --sout-ts-bmax=<integer [-2147483648 .. 2147483647]>
                                 Maximum B (deprecated)
      --sout-ts-dts-delay=<integer [-2147483648 .. 2147483647]>
                                 DTS delay (ms)
      --sout-ts-crypt-audio, --no-sout-ts-crypt-audio
                                 Crypt audio (default enabled)
      --sout-ts-crypt-video, --no-sout-ts-crypt-video
                                 Crypt video (default enabled)
      --sout-ts-csa-ck=<string>  CSA Key
      --sout-ts-csa2-ck=<string> Second CSA Key
      --sout-ts-csa-use=<string> CSA Key in use
      --sout-ts-csa-pkt=<integer [-2147483648 .. 2147483647]>
                                 Packet size in bytes to encrypt

 PS muxer
      --sout-ps-dts-delay=<integer [-2147483648 .. 2147483647]>
                                 DTS delay (ms)
      --sout-ps-pes-max-size=<integer [-2147483648 .. 2147483647]>
                                 PES maximum size

 MP4/MOV muxer
      --sout-mp4-faststart, --no-sout-mp4-faststart
                                 Create "Fast Start" files (default enabled)

 ASF muxer
      --sout-asf-title=<string>  Title
      --sout-asf-author=<string> Author
      --sout-asf-copyright=<string>
                                 Copyright
      --sout-asf-comment=<string>
                                 Comment
      --sout-asf-rating=<string> Rating
      --sout-asf-packet-size=<integer [-2147483648 .. 2147483647]>
                                 Packet Size
      --sout-asf-bitrate-override=<integer [-2147483648 .. 2147483647]>
                                 Bitrate override

 RTSP VoD server
      --rtsp-raw-mux=<string>    MUX for RAW RTSP transport
      --rtsp-throttle-users=<integer [-2147483648 .. 2147483647]>
                                 Maximum number of connections
      --rtsp-session-timeout=<integer [-2147483648 .. 2147483647]>
                                 Sets the timeout option in the RTSP session
                                 string

 File logging
      --logfile=<string>         Log filename
      --logmode={text,html}      Log format
      --log-verbose=<integer [-2147483648 .. 2147483647]>
                                 Verbosity

 GNU TLS transport layer security
      --gnutls-priorities={PERFORMANCE,NORMAL,SECURE128,SECURE256,EXPORT}
                                 TLS cipher priorities

 Submission of played songs to last.fm
      --lastfm-username=<string> Username
      --lastfm-password=<string> Password
      --scrobbler-url=<string>   Scrobbler URL

 Folder meta data
      --album-art-filename=<string>
                                 Album art filename

 Lua interpreter
      --lua-intf=<string>        Lua interface
      --lua-config=<string>      Lua interface configuration
   Lua HTTP:
      --http-src=<string>        Source directory
      --http-index, --no-http-index
                                 Directory index (default disabled)
   Lua CLI:
      --rc-host=<string>         TCP command input
      --cli-host=<string>        CLI input
   Lua Telnet:
      --telnet-host=<string>     Host
      --telnet-port=<integer [-2147483648 .. 2147483647]>
                                 Port
      --telnet-password=<string> Password
      --lua-sd=<string>           
      --lua-longname=<string>     

 Skinnable Interface
      --skins2-last=<string>     Skin to use
      --skins2-config=<string>   Config of last used skin
      --skins2-systray, --no-skins2-systray
                                 Systray icon (default enabled)
      --skins2-taskbar, --no-skins2-taskbar
                                 Show VLC on the taskbar (default enabled)
      --skins2-transparency, --no-skins2-transparency
                                 Enable transparency effects (default disabled)
      --skinned-playlist, --no-skinned-playlist
                                 Use a skinned playlist (default enabled)
      --skinned-video, --no-skinned-video
                                 Display video in a skinned window if any
                                 (default enabled)

 Qt interface
      --qt-minimal-view, --no-qt-minimal-view
                                 Start in minimal view (without menus)
                                 (default disabled)
      --qt-system-tray, --no-qt-system-tray
                                 Systray icon (default enabled)
      --qt-notification, --no-qt-notification
                                 Show notification popup on track change
                                 (default enabled)
      --qt-start-minimized, --no-qt-start-minimized
                                 Start VLC with only a systray icon (default
                                 disabled)
      --qt-pause-minimized, --no-qt-pause-minimized
                                 Pause the video playback when minimized
                                 (default disabled)
      --qt-opacity=<float [0.100000 .. 1.000000]>
                                 Windows opacity between 0.1 and 1
      --qt-fs-opacity=<float [0.100000 .. 1.000000]>
                                 Fullscreen controller opacity between 0.1 and
                                 1
      --qt-video-autoresize, --no-qt-video-autoresize
                                 Resize interface to the native video size
                                 (default enabled)
      --qt-name-in-title, --no-qt-name-in-title
                                 Show playing item name in window title
                                 (default enabled)
      --qt-fs-controller, --no-qt-fs-controller
                                 Show a controller in fullscreen mode (default
                                 enabled)
      --qt-recentplay, --no-qt-recentplay
                                 Save the recently played items in the menu
                                 (default enabled)
      --qt-recentplay-filter=<string>
                                 List of words separated by | to filter
      --qt-updates-notif, --no-qt-updates-notif
                                 Activate the updates availability
                                 notification (default enabled)
      --qt-updates-days=<integer [-2147483648 .. 2147483647]>
                                 Number of days between two update checks
      --qt-autosave-volume, --no-qt-autosave-volume
                                 Automatically save the volume on exit
                                 (default enabled)
      --qt-disable-volume-keys, --no-qt-disable-volume-keys
                                 Ignore keyboard volume buttons. (default
                                 enabled)
      --qt-embedded-open, --no-qt-embedded-open
                                 Embed the file browser in open dialog
                                 (default disabled)
      --qt-advanced-pref, --no-qt-advanced-pref
                                 Show advanced preferences over simple ones
                                 (default disabled)
      --qt-error-dialogs, --no-qt-error-dialogs
                                 Show unimportant error and warnings dialogs
                                 (default enabled)
      --qt-slider-colours=<string>
                                 Define the colors of the volume slider 
      --qt-privacy-ask, --no-qt-privacy-ask
                                 Ask for network policy at start (default
                                 enabled)
      --qt-fullscreen-screennumber=<integer [-2147483648 .. 2147483647]>
                                 Define which screen fullscreen goes
      --qt-autoload-extensions, --no-qt-autoload-extensions
                                 Load extensions on startup (default enabled)
      --qt-bgcone, --no-qt-bgcone
                                 Display background cone or art (default
                                 enabled)
      --qt-bgcone-expands, --no-qt-bgcone-expands
                                 Expanding background cone or art. (default
                                 disabled)
      --qt-icon-change, --no-qt-icon-change
                                 Allow automatic icon changes (default enabled)

 VC1 video demuxer
      --vc1-fps=<float>          Frames per Second

 MPEG Transport Stream demuxer
      --ts-extra-pmt=<string>    Extra PMT
      --ts-es-id-pid, --no-ts-es-id-pid
                                 Set id of ES to PID (default enabled)
      --ts-out=<string>          Fast udp streaming
      --ts-out-mtu=<integer [-2147483648 .. 2147483647]>
                                 MTU for out mode
      --ts-csa-ck=<string>       CSA Key
      --ts-csa2-ck=<string>      Second CSA Key
      --ts-csa-pkt=<integer [-2147483648 .. 2147483647]>
                                 Packet size in bytes to decrypt
      --ts-silent, --no-ts-silent
                                 Silent mode (default disabled)
      --ts-dump-file=<string>    Filename of dump
      --ts-dump-append, --no-ts-dump-append
                                 Append (default disabled)
      --ts-dump-size=<integer [-2147483648 .. 2147483647]>
                                 Dump buffer size
      --ts-split-es, --no-ts-split-es
                                 Separate sub-streams (default enabled)
      --ts-seek-percent, --no-ts-seek-percent
                                 Seek based on percent not time (default
                                 disabled)

 Text subtitles parser
      --sub-fps=<float>          Frames per second
      --sub-delay=<integer [-2147483648 .. 2147483647]>
                                 Subtitles delay
      --sub-type={auto,microdvd,subrip,subviewer,ssa1,ssa2-4,ass,vplayer,sami,dvdsubtitle,mpl2,aqt,pjs,mpsub,jacosub,psb,realtext,dks,subviewer1}
                                 Subtitles format
      --sub-description=<string> Subtitles description

 Raw video demuxer
      --rawvid-fps=<string>      Frames per Second
      --rawvid-width=<integer [-2147483648 .. 2147483647]>
                                 Width
      --rawvid-height=<integer [-2147483648 .. 2147483647]>
                                 Height
      --rawvid-chroma=<string>   Force chroma (Use carefully)
      --rawvid-aspect-ratio=<string>
                                 Aspect ratio

 DV (Digital Video) demuxer
      --rawdv-hurry-up, --no-rawdv-hurry-up
                                 Hurry up (default disabled)

 Raw audio demuxer
      --rawaud-channels=<integer [-2147483648 .. 2147483647]>
                                 Audio channels
      --rawaud-samplerate=<integer [-2147483648 .. 2147483647]>
                                 Audio samplerate (Hz)
      --rawaud-fourcc=<string>   FOURCC code of raw input format
      --rawaud-lang=<string>     Forces the audio language

 MPEG-PS demuxer
      --ps-trust-timestamps, --no-ps-trust-timestamps
                                 Trust MPEG timestamps (default enabled)

 Playlist
      --playlist-skip-ads, --no-playlist-skip-ads
                                 Skip ads (default enabled)
      --shoutcast-show-adult, --no-shoutcast-show-adult
                                 Show shoutcast adult content (default
                                 disabled)

 MOD demuxer (libmodplug)
      --mod-noisereduction, --no-mod-noisereduction
                                 Noise reduction (default enabled)
      --mod-reverb, --no-mod-reverb
                                 Reverb (default disabled)
      --mod-reverb-level=<integer [0 .. 100]>
                                 Reverberation level
      --mod-reverb-delay=<integer [0 .. 1000]>
                                 Reverberation delay
      --mod-megabass, --no-mod-megabass
                                 Mega bass (default disabled)
      --mod-megabass-level=<integer [0 .. 100]>
                                 Mega bass level
      --mod-megabass-range=<integer [10 .. 100]>
                                 Mega bass cutoff
      --mod-surround, --no-mod-surround
                                 Surround (default disabled)
      --mod-surround-level=<integer [0 .. 100]>
                                 Surround level
      --mod-surround-delay=<integer [0 .. 1000]>
                                 Surround delay (ms)

 Matroska stream demuxer
      --mkv-use-ordered-chapters, --no-mkv-use-ordered-chapters
                                 Respect ordered chapters (default enabled)
      --mkv-use-chapter-codec, --no-mkv-use-chapter-codec
                                 Chapter codecs (default enabled)
      --mkv-preload-local-dir, --no-mkv-preload-local-dir
                                 Preload MKV files in the same directory
                                 (default enabled)
      --mkv-seek-percent, --no-mkv-seek-percent
                                 Seek based on percent not time (default
                                 disabled)
      --mkv-use-dummy, --no-mkv-use-dummy
                                 Dummy Elements (default disabled)

 M-JPEG camera demuxer
      --mjpeg-fps=<float>        Frames per Second

 RTP/RTSP/SDP demuxer (using Live555)
      --rtsp-tcp, --no-rtsp-tcp  Use RTP over RTSP (TCP) (default disabled)
      --rtp-client-port=<integer [-2147483648 .. 2147483647]>
                                 Client port
      --rtsp-mcast, --no-rtsp-mcast
                                 Force multicast RTP via RTSP (default
                                 disabled)
      --rtsp-http, --no-rtsp-http
                                 Tunnel RTSP and RTP over HTTP (default
                                 disabled)
      --rtsp-http-port=<integer [-2147483648 .. 2147483647]>
                                 HTTP tunnel port
      --rtsp-kasenna, --no-rtsp-kasenna
                                 Kasenna RTSP dialect (default disabled)
      --rtsp-wmserver, --no-rtsp-wmserver
                                 WMServer RTSP dialect (default disabled)
      --rtsp-user=<string>       RTSP user name
      --rtsp-pwd=<string>        RTSP password

 Image demuxer
      --image-id=<integer [-2147483648 .. 2147483647]>
                                 ES ID
      --image-group=<integer [-2147483648 .. 2147483647]>
                                 Group
      --image-decode, --no-image-decode
                                 Decode (default enabled)
      --image-chroma=<string>    Forced chroma
      --image-duration=<float>   Duration in seconds
      --image-fps=<string>       Frame rate
      --image-realtime, --no-image-realtime
                                 Real-time (default disabled)

 H264 video demuxer
      --h264-fps=<float>         Frames per Second

 MPEG-I/II/4 / A52 / DTS / MLP audio
      --es-fps=<float>           Frames per Second

 Dirac video demuxer
      --dirac-dts-offset=<integer [-2147483648 .. 2147483647]>
                                 Value to adjust dts by

 File dumper
      --demuxdump-file=<string>  Dump filename
      --demuxdump-append, --no-demuxdump-append
                                 Append to existing file (default disabled)

 AVI demuxer
      --avi-interleaved, --no-avi-interleaved
                                 Force interleaved method (default disabled)
      --avi-index={0 (Ask for action), 1 (Always fix), 2 (Never fix)}
                                 Force index creation

 Remote control interface
      --rc-show-pos, --no-rc-show-pos
                                 Show stream position (default disabled)
      --rc-quiet, --no-rc-quiet  Do not open a DOS command box interface
                                 (default disabled)
      --rc-host=<string>         TCP command input

 Windows Service interface
      --ntservice-install, --no-ntservice-install
                                 Install Windows Service (default disabled)
      --ntservice-uninstall, --no-ntservice-uninstall
                                 Uninstall Windows Service (default disabled)
      --ntservice-name=<string>  Display name of the Service
      --ntservice-options=<string>
                                 Configuration options
      --ntservice-extraintf=<string>
                                 Extra interface modules

 Network synchronization
      --netsync-master, --no-netsync-master
                                 Network master clock (default disabled)
      --netsync-master-ip=<string>
                                 Master server ip address
      --netsync-timeout=<integer [-2147483648 .. 2147483647]>
                                 UDP timeout (in ms)

 Hotkeys management interface
      --hotkeys-mousewheel-mode={0 (Volume Control), 1 (Position Control), 2 (Ignore)}
                                 MouseWheel up-down axis Control

 Mouse gestures control interface
      --gestures-threshold=<integer [-2147483648 .. 2147483647]>
                                 Motion threshold (10-100)
      --gestures-button={left,middle,right}
                                 Trigger button

 Dummy interface
      --dummy-quiet, --no-dummy-quiet
                                 Do not open a DOS command box interface
                                 (default disabled)

 VBI and Teletext decoder
      --vbi-page=<integer [-2147483648 .. 2147483647]>
                                 Teletext page
      --vbi-opaque, --no-vbi-opaque
                                 Teletext transparency (default enabled)
      --vbi-position={0 (Center), 1 (Left), 2 (Right), 4 (Top), 8 (Bottom), 5 (Top-Left), 6 (Top-Right), 9 (Bottom-Left), 10 (Bottom-Right)}
                                 Teletext alignment
      --vbi-text, --no-vbi-text  Teletext text subtitles (default disabled)

 H.264/MPEG4 AVC encoder (x264)
      --sout-x264-keyint=<integer [-2147483648 .. 2147483647]>
                                 Maximum GOP size
      --sout-x264-min-keyint=<integer [-2147483648 .. 2147483647]>
                                 Minimum GOP size
      --sout-x264-opengop, --no-sout-x264-opengop
                                 Use recovery points to close GOPs (default
                                 disabled)
      --sout-x264-bluray-compat, --no-sout-x264-bluray-compat
                                 Enable compatibility hacks for Blu-ray
                                 support (default disabled)
      --sout-x264-scenecut=<integer [-1 .. 100]>
                                 Extra I-frames aggressivity
      --sout-x264-bframes=<integer [0 .. 16]>
                                 B-frames between I and P
      --sout-x264-b-adapt=<integer [0 .. 2]>
                                 Adaptive B-frame decision
      --sout-x264-b-bias=<integer [-100 .. 100]>
                                 Influence (bias) B-frames usage
      --sout-x264-bpyramid={none,strict,normal}
                                 Keep some B-frames as references
      --sout-x264-cabac, --no-sout-x264-cabac
                                 CABAC (default enabled)
      --sout-x264-ref=<integer [1 .. 16]>
                                 Number of reference frames
      --sout-x264-nf, --no-sout-x264-nf
                                 Skip loop filter (default disabled)
      --sout-x264-deblock=<string>
                                 Loop filter AlphaC0 and Beta parameters
                                 alpha:beta
      --sout-x264-psy-rd=<string>
                                 Strength of psychovisual optimization,
                                 default is "1.0:0.0"
      --sout-x264-psy, --no-sout-x264-psy
                                 Use Psy-optimizations (default enabled)
      --sout-x264-level=<string> H.264 level
      --sout-x264-profile={baseline,main,high,high10,high422,high444}
                                 H.264 profile
      --sout-x264-interlaced, --no-sout-x264-interlaced
                                 Interlaced mode (default disabled)
      --sout-x264-slices=<integer [-2147483648 .. 2147483647]>
                                 Force number of slices per frame
      --sout-x264-slice-max-size=<integer [-2147483648 .. 2147483647]>
                                 Limit the size of each slice in bytes
      --sout-x264-slice-max-mbs=<integer [-2147483648 .. 2147483647]>
                                 Limit the size of each slice in macroblocks
      --sout-x264-hrd={none,vbr,cbr}
                                 HRD-timing information
      --sout-x264-qp=<integer [-1 .. 51]>
                                 Set QP
      --sout-x264-crf=<integer [0 .. 51]>
                                 Quality-based VBR
      --sout-x264-qpmin=<integer [0 .. 51]>
                                 Min QP
      --sout-x264-qpmax=<integer [0 .. 51]>
                                 Max QP
      --sout-x264-qpstep=<integer [0 .. 51]>
                                 Max QP step
      --sout-x264-ratetol=<float [0.000000 .. 100.000000]>
                                 Average bitrate tolerance
      --sout-x264-vbv-maxrate=<integer [-2147483648 .. 2147483647]>
                                 Max local bitrate
      --sout-x264-vbv-bufsize=<integer [-2147483648 .. 2147483647]>
                                 VBV buffer
      --sout-x264-vbv-init=<float [0.000000 .. 1.000000]>
                                 Initial VBV buffer occupancy
      --sout-x264-ipratio=<float [1.000000 .. 2.000000]>
                                 QP factor between I and P
      --sout-x264-pbratio=<float [1.000000 .. 2.000000]>
                                 QP factor between P and B
      --sout-x264-chroma-qp-offset=<integer [-2147483648 .. 2147483647]>
                                 QP difference between chroma and luma
      --sout-x264-pass=<integer [0 .. 3]>
                                 Multipass ratecontrol
      --sout-x264-qcomp=<float [0.000000 .. 1.000000]>
                                 QP curve compression
      --sout-x264-cplxblur=<float>
                                 Reduce fluctuations in QP
      --sout-x264-qblur=<float>  Reduce fluctuations in QP
      --sout-x264-aq-mode=<integer [0 .. 2]>
                                 How AQ distributes bits
      --sout-x264-aq-strength=<float>
                                 Strength of AQ
      --sout-x264-partitions={none,fast,normal,slow,all}
                                 Partitions to consider
      --sout-x264-direct={none,spatial,temporal,auto}
                                 Direct MV prediction mode
      --sout-x264-direct-8x8=<integer [-1 .. 1]>
                                 Direct prediction size
      --sout-x264-weightb, --no-sout-x264-weightb
                                 Weighted prediction for B-frames (default
                                 enabled)
      --sout-x264-weightp=<integer [0 .. 2]>
                                 Weighted prediction for P-frames
      --sout-x264-me={dia,hex,umh,esa,tesa}
                                 Integer pixel motion estimation method
      --sout-x264-merange=<integer [1 .. 64]>
                                 Maximum motion vector search range
      --sout-x264-mvrange=<integer [-2147483648 .. 2147483647]>
                                 Maximum motion vector length
      --sout-x264-mvrange-thread=<integer [-2147483648 .. 2147483647]>
                                 Minimum buffer space between threads
      --sout-x264-subme=<integer [-2147483648 .. 2147483647]>
                                 Subpixel motion estimation and partition
                                 decision quality
      --sout-x264-mixed-refs, --no-sout-x264-mixed-refs
                                 Decide references on a per partition basis
                                 (default enabled)
      --sout-x264-chroma-me, --no-sout-x264-chroma-me
                                 Chroma in motion estimation (default enabled)
      --sout-x264-8x8dct, --no-sout-x264-8x8dct
                                 Adaptive spatial transform size (default
                                 enabled)
      --sout-x264-trellis=<integer [0 .. 2]>
                                 Trellis RD quantization
      --sout-x264-lookahead=<integer [0 .. 60]>
                                 Framecount to use on frametype lookahead
      --sout-x264-intra-refresh, --no-sout-x264-intra-refresh
                                 Use Periodic Intra Refresh (default disabled)
      --sout-x264-mbtree, --no-sout-x264-mbtree
                                 Use mb-tree ratecontrol (default enabled)
      --sout-x264-fast-pskip, --no-sout-x264-fast-pskip
                                 Early SKIP detection on P-frames (default
                                 enabled)
      --sout-x264-dct-decimate, --no-sout-x264-dct-decimate
                                 Coefficient thresholding on P-frames (default
                                 enabled)
      --sout-x264-nr=<integer [0 .. 1000]>
                                 Noise reduction
      --sout-x264-deadzone-inter=<integer [0 .. 32]>
                                 Inter luma quantization deadzone
      --sout-x264-deadzone-intra=<integer [0 .. 32]>
                                 Intra luma quantization deadzone
      --sout-x264-non-deterministic, --no-sout-x264-non-deterministic
                                 Non-deterministic optimizations when threaded
                                 (default disabled)
      --sout-x264-asm, --no-sout-x264-asm
                                 CPU optimizations (default enabled)
      --sout-x264-psnr, --no-sout-x264-psnr
                                 PSNR computation (default disabled)
      --sout-x264-ssim, --no-sout-x264-ssim
                                 SSIM computation (default disabled)
      --sout-x264-quiet, --no-sout-x264-quiet
                                 Quiet mode (default disabled)
      --sout-x264-sps-id=<integer [-2147483648 .. 2147483647]>
                                 SPS and PPS id numbers
      --sout-x264-aud, --no-sout-x264-aud
                                 Access unit delimiters (default disabled)
      --sout-x264-verbose, --no-sout-x264-verbose
                                 Statistics (default disabled)
      --sout-x264-stats=<string> Filename for 2 pass stats file
      --sout-x264-preset={ultrafast,superfast,veryfast,faster,fast,medium,slow,slower,veryslow,placebo}
                                 Use preset as default settings. Overridden by
                                 user settings.
      --sout-x264-tune={film,animation,grain,stillimage,psnr,ssim,fastdecode,zerolatency}
                                 Tune the settings for a particular type of
                                 source or situation. Overridden by user
                                 settings.

 Vorbis audio decoder
      --sout-vorbis-quality=<integer [0 .. 10]>
                                 Encoding quality
      --sout-vorbis-max-bitrate=<integer [-2147483648 .. 2147483647]>
                                 Maximum encoding bitrate
      --sout-vorbis-min-bitrate=<integer [-2147483648 .. 2147483647]>
                                 Minimum encoding bitrate
      --sout-vorbis-cbr, --no-sout-vorbis-cbr
                                 CBR encoding (default disabled)

 Libtwolame audio encoder
      --sout-twolame-quality=<float>
                                 Encoding quality
      --sout-twolame-mode={0 (Stereo), 1 (Dual mono), 2 (Joint stereo)}
                                 Stereo mode
      --sout-twolame-vbr, --no-sout-twolame-vbr
                                 VBR mode (default disabled)
      --sout-twolame-psy=<integer [-2147483648 .. 2147483647]>
                                 Psycho-acoustic model

 Theora video decoder
      --sout-theora-quality=<integer [-2147483648 .. 2147483647]>
                                 Encoding quality

 Philips OGT (SVCD subtitle) decoder

 Text subtitles decoder
      --subsdec-align={0 (Center), 1 (Left), 2 (Right)}
                                 Subtitles justification
      --subsdec-encoding={,system,UTF-8,UTF-16,UTF-16BE,UTF-16LE,GB18030,ISO-8859-15,Windows-1252,ISO-8859-2,Windows-1250,ISO-8859-3,ISO-8859-10,Windows-1251,KOI8-R,KOI8-U,ISO-8859-6,Windows-1256,ISO-8859-7,Windows-1253,ISO-8859-8,Windows-1255,ISO-8859-9,Windows-1254,ISO-8859-11,Windows-874,ISO-8859-13,Windows-1257,ISO-8859-14,ISO-8859-16,ISO-2022-CN-EXT,EUC-CN,ISO-2022-JP-2,EUC-JP,Shift_JIS,CP949,ISO-2022-KR,Big5,ISO-2022-TW,Big5-HKSCS,VISCII,Windows-1258}
                                 Subtitles text encoding
      --subsdec-autodetect-utf8, --no-subsdec-autodetect-utf8
                                 UTF-8 subtitles autodetection (default
                                 enabled)
      --subsdec-formatted, --no-subsdec-formatted
                                 Formatted Subtitles (default enabled)

 DVD subtitles decoder
      --dvdsub-transparency, --no-dvdsub-transparency
                                 Disable DVD subtitle transparency (default
                                 disabled)

 Speex audio decoder
      --sout-speex-mode={0 (Narrow-band (8kHz)), 1 (Wide-band (16kHz)), 2 (Ultra-wideband (32kHz))}
                                 Mode
      --sout-speex-complexity=<integer [1 .. 10]>
                                 Encoding complexity
      --sout-speex-cbr, --no-sout-speex-cbr
                                 CBR encoding (default disabled)
      --sout-speex-quality=<float [0.000000 .. 10.000000]>
                                 Encoding quality
      --sout-speex-max-bitrate=<integer [-2147483648 .. 2147483647]>
                                 Maximal bitrate
      --sout-speex-vad, --no-sout-speex-vad
                                 Voice activity detection (default enabled)
      --sout-speex-dtx, --no-sout-speex-dtx
                                 Discontinuous Transmission (default disabled)

 Dirac video decoder using libschroedinger
   Encoding:
      --sout-schro-rate-control={constant_noise_threshold,constant_bitrate,low_delay,lossless,constant_lambda,constant_error,constant_quality}
                                 Rate control method
      --sout-schro-quality=<float [-1.000000 .. 10.000000]>
                                 Constant quality factor
      --sout-schro-noise-threshold=<float [-1.000000 .. 100.000000]>
                                 Noise Threshold
      --sout-schro-bitrate=<integer [-1 .. 2147483647]>
                                 CBR bitrate (kbps)
      --sout-schro-max-bitrate=<integer [-1 .. 2147483647]>
                                 Maximum bitrate (kbps)
      --sout-schro-min-bitrate=<integer [-1 .. 2147483647]>
                                 Minimum bitrate (kbps)
      --sout-schro-gop-structure={adaptive,intra_only,backref,chained_backref,biref,chained_biref}
                                 GOP structure
      --sout-schro-gop-length=<integer [-1 .. 2147483647]>
                                 GOP length
      --sout-schro-chroma-fmt={420,422,444}
                                 Chroma format
      --sout-schro-coding-mode={auto,progressive,field}
                                 Picture coding mode
      --sout-schro-mv-precision={1,1/2,1/4,1/8}
                                 Motion Vector precision
      --sout-schro-motion-block-size={automatic,small,medium,large}
                                 Size of motion compensation blocks
      --sout-schro-motion-block-overlap={automatic,none,partial,full}
                                 Overlap of motion compensation blocks
      --sout-schro-me-combined=<integer [-1 .. 1]>
                                 Three component motion estimation
      --sout-schro-enable-hierarchical-me=<integer [-1 .. 1]>
                                 Enable hierarchical Motion Estimation
      --sout-schro-downsample-levels=<integer [-1 .. 8]>
                                 Number of levels of downsampling
      --sout-schro-enable-global-me=<integer [-1 .. 1]>
                                 Enable Global Motion Estimation
      --sout-schro-enable-phasecorr-me=<integer [-1 .. 1]>
                                 Enable Phase Correlation Estimation
      --sout-schro-intra-wavelet={desl_dubuc_9_7,le_gall_5_3,desl_dubuc_13_7,haar_0,haar_1,fidelity,daub_9_7}
                                 Intra picture DWT filter
      --sout-schro-inter-wavelet={desl_dubuc_9_7,le_gall_5_3,desl_dubuc_13_7,haar_0,haar_1,fidelity,daub_9_7}
                                 Inter picture DWT filter
      --sout-schro-transform-depth=<integer [-1 .. 6]>
                                 Number of DWT iterations
      --sout-schro-enable-multiquant=<integer [-1 .. 1]>
                                 Enable multiple quantizers
      --sout-schro-codeblock-size={automatic,small,medium,large,full}
                                 Size of code blocks in each subband
      --sout-schro-filtering={none,center_weighted_median,gaussian,add_noise,adaptive_gaussian,lowpass}
                                 Prefilter
      --sout-schro-filter-value=<float [-1.000000 .. 100.000000]>
                                 Amount of prefiltering
      --sout-schro-enable-scd=<integer [-1 .. 1]>
                                 Enable Scene Change Detection
      --sout-schro-perceptual-weighting={none,ccir959,moo,manos_sakrison}
                                 perceptual weighting method
      --sout-schro-perceptual-distance=<float [-1.000000 .. 100.000000]>
                                 perceptual distance
      --sout-schro-enable-noarith=<integer [-1 .. 1]>
                                 Disable arithmetic coding
      --sout-schro-horiz-slices=<integer [-1 .. 2147483647]>
                                 Horizontal slices per frame
      --sout-schro-vert-slices=<integer [-1 .. 2147483647]>
                                 Vertical slices per frame
      --sout-schro-force-profile={auto,vc2_low_delay,vc2_simple,vc2_main,main}
                                 Force Profile

 Kate overlay decoder
 Kate is a codec for text and image based overlays.
The Tiger rendering library is needed to render complex Kate streams, but VLC can still render static text and image based subtitles if it is not available.
Note that changing settings below will not take effect until a new stream is played. This will hopefully be fixed soon.
      --kate-formatted, --no-kate-formatted
                                 Formatted Subtitles (default enabled)

 FluidSynth MIDI synthesizer
      --soundfont=<string>       Sound fonts

 DVB subtitles decoder
      --dvbsub-position={0 (Center), 1 (Left), 2 (Right), 4 (Top), 8 (Bottom), 5 (Top-Left), 6 (Top-Right), 9 (Bottom-Left), 10 (Bottom-Right)}
                                 Subpicture position
      --dvbsub-x=<integer [-2147483648 .. 2147483647]>
                                 Decoding X coordinate
      --dvbsub-y=<integer [-2147483648 .. 2147483647]>
                                 Decoding Y coordinate
      --sout-dvbsub-x=<integer [-2147483648 .. 2147483647]>
                                 Encoding X coordinate
      --sout-dvbsub-y=<integer [-2147483648 .. 2147483647]>
                                 Encoding Y coordinate

 Dummy decoder
      --dummy-save-es, --no-dummy-save-es
                                 Save raw codec data (default disabled)

 FFmpeg audio/video decoder
 Various audio and video decoders/encoders delivered by the FFmpeg library. This includes (MS)MPEG4, DivX, SV1,H261, H263, H264, WMV, WMA, AAC, AMR, DV, MJPEG and other codecs
   Decoding:
      --ffmpeg-dr, --no-ffmpeg-dr
                                 Direct rendering (default enabled)
      --ffmpeg-error-resilience=<integer [-2147483648 .. 2147483647]>
                                 Error resilience
      --ffmpeg-workaround-bugs=<integer [-2147483648 .. 2147483647]>
                                 Workaround bugs
      --ffmpeg-hurry-up, --no-ffmpeg-hurry-up
                                 Hurry up (default enabled)
      --ffmpeg-skip-frame=<integer [-1 .. 4]>
                                 Skip frame (default=0)
      --ffmpeg-skip-idct=<integer [-1 .. 4]>
                                 Skip idct (default=0)
      --ffmpeg-vismv=<integer [-2147483648 .. 2147483647]>
                                 Visualize motion vectors
      --ffmpeg-lowres=<integer [0 .. 2]>
                                 Low resolution decoding
      --ffmpeg-fast, --no-ffmpeg-fast
                                 Allow speed tricks (default disabled)
      --ffmpeg-skiploopfilter={0 (None), 1 (Non-ref), 2 (Bidir), 3 (Non-key), 4 (All)}
                                 Skip the loop filter for H.264 decoding
      --ffmpeg-debug=<integer [-2147483648 .. 2147483647]>
                                 Debug mask
      --ffmpeg-codec=<string>    Codec name
      --ffmpeg-hw, --no-ffmpeg-hw
                                 Hardware decoding (default disabled)
      --ffmpeg-threads=<integer [-2147483648 .. 2147483647]>
                                 Threads
   Encoding:
      --sout-ffmpeg-codec=<string>
                                 Codec name
      --sout-ffmpeg-hq={rd,bits,simple}
                                 Quality level
      --sout-ffmpeg-keyint=<integer [-2147483648 .. 2147483647]>
                                 Ratio of key frames
      --sout-ffmpeg-bframes=<integer [-2147483648 .. 2147483647]>
                                 Ratio of B frames
      --sout-ffmpeg-hurry-up, --no-sout-ffmpeg-hurry-up
                                 Hurry up (default disabled)
      --sout-ffmpeg-interlace, --no-sout-ffmpeg-interlace
                                 Interlaced encoding (default disabled)
      --sout-ffmpeg-interlace-me, --no-sout-ffmpeg-interlace-me
                                 Interlaced motion estimation (default enabled)
      --sout-ffmpeg-vt=<integer [-2147483648 .. 2147483647]>
                                 Video bitrate tolerance
      --sout-ffmpeg-pre-me, --no-sout-ffmpeg-pre-me
                                 Pre-motion estimation (default disabled)
      --sout-ffmpeg-rc-buffer-size=<integer [-2147483648 .. 2147483647]>
                                 Rate control buffer size
      --sout-ffmpeg-rc-buffer-aggressivity=<float>
                                 Rate control buffer aggressiveness
      --sout-ffmpeg-i-quant-factor=<float>
                                 I quantization factor
      --sout-ffmpeg-noise-reduction=<integer [-2147483648 .. 2147483647]>
                                 Noise reduction
      --sout-ffmpeg-mpeg4-matrix, --no-sout-ffmpeg-mpeg4-matrix
                                 MPEG4 quantization matrix (default disabled)
      --sout-ffmpeg-qmin=<integer [-2147483648 .. 2147483647]>
                                 Minimum video quantizer scale
      --sout-ffmpeg-qmax=<integer [-2147483648 .. 2147483647]>
                                 Maximum video quantizer scale
      --sout-ffmpeg-trellis, --no-sout-ffmpeg-trellis
                                 Trellis quantization (default disabled)
      --sout-ffmpeg-qscale=<float>
                                 Fixed quantizer scale
      --sout-ffmpeg-strict=<integer [-2147483648 .. 2147483647]>
                                 Strict standard compliance
      --sout-ffmpeg-lumi-masking=<float>
                                 Luminance masking
      --sout-ffmpeg-dark-masking=<float>
                                 Darkness masking
      --sout-ffmpeg-p-masking=<float>
                                 Motion masking
      --sout-ffmpeg-border-masking=<float>
                                 Border masking
      --sout-ffmpeg-luma-elim-threshold=<integer [-2147483648 .. 2147483647]>
                                 Luminance elimination
      --sout-ffmpeg-chroma-elim-threshold=<integer [-2147483648 .. 2147483647]>
                                 Chrominance elimination
      --sout-ffmpeg-aac-profile=<string>
                                 Specify AAC audio profile to use
      --ffmpeg-mux=<string>      Avformat mux

 Win32 waveOut extension output
      --waveout-audio-device={wavemapper}
                                 Select Audio Device
      --waveout-float32, --no-waveout-float32
                                 Use float32 output (default enabled)

 File audio output
      --audiofile-file=<string>  Output file
      --audiofile-format={u8,s8,u16,s16,u16_le,s16_le,u16_be,s16_be,fixed32,float32,spdif}
                                 Output format
      --audiofile-channels=<integer [0 .. 6]>
                                 Number of output channels
      --audiofile-wav, --no-audiofile-wav
                                 Add WAVE header (default enabled)

 DirectX audio output
      --directx-audio-device-name={default}
                                 Output device
      --directx-audio-float32, --no-directx-audio-float32
                                 Use float32 output (default disabled)
      --directx-audio-speaker={Windows default,Mono,Stereo,Quad,5.1,7.1}
                                 Speaker configuration

 Audio memory output
      --amem-format=<string>     Sample format
      --amem-rate=<integer [1 .. 192000]>
                                 Sample rate
      --amem-channels=<integer [1 .. 9]>
                                 Channels count

 Speex resampler
      --speex-resampler-quality=<integer [0 .. 10]>
                                 Resampling quality

 Audio Spatializer
      --spatializer-roomsize=<float>
                                 Room size
      --spatializer-width=<float>
                                 Room width
      --spatializer-wet=<float>  Wet
      --spatializer-dry=<float>  Dry
      --spatializer-damp=<float> Damp

 Audio tempo scaler synched with rate
      --scaletempo-stride=<integer [1 .. 2000]>
                                 Stride Length
      --scaletempo-overlap=<float [0.000000 .. 1.000000]>
                                 Overlap Length
      --scaletempo-search=<integer [0 .. 200]>
                                 Search Length

 Secret Rabbit Code (libsamplerate) resampler
      --src-converter-type={0 (Sinc function (best quality)), 1 (Sinc function (medium quality)), 2 (Sinc function (fast)), 3 (Zero Order Hold (fastest)), 4 (Linear (fastest))}
                                 Sample rate converter type

 Parametric Equalizer
      --param-eq-lowf=<float>    Low freq (Hz)
      --param-eq-lowgain=<float [-20.000000 .. 20.000000]>
                                 Low freq gain (dB)
      --param-eq-highf=<float>   High freq (Hz)
      --param-eq-highgain=<float [-20.000000 .. 20.000000]>
                                 High freq gain (dB)
      --param-eq-f1=<float>      Freq 1 (Hz)
      --param-eq-gain1=<float [-20.000000 .. 20.000000]>
                                 Freq 1 gain (dB)
      --param-eq-q1=<float [0.100000 .. 100.000000]>
                                 Freq 1 Q
      --param-eq-f2=<float>      Freq 2 (Hz)
      --param-eq-gain2=<float [-20.000000 .. 20.000000]>
                                 Freq 2 gain (dB)
      --param-eq-q2=<float [0.100000 .. 100.000000]>
                                 Freq 2 Q
      --param-eq-f3=<float>      Freq 3 (Hz)
      --param-eq-gain3=<float [-20.000000 .. 20.000000]>
                                 Freq 3 gain (dB)
      --param-eq-q3=<float [0.100000 .. 100.000000]>
                                 Freq 3 Q

 Volume normalizer
      --norm-buff-size=<integer [-2147483648 .. 2147483647]>
                                 Number of audio buffers
      --norm-max-level=<float>   Maximal volume level

 Audio filter for stereo to mono conversion
      --sout-mono-downmix, --no-sout-mono-downmix
                                 Use downmix algorithm (default enabled)
      --sout-mono-channel={0 (Left), 1 (Right), 4 (Rear left), 5 (Rear right), 7 (Center), 8 (Low-frequency effects), 2 (Side left), 3 (Side right), 6 (Rear center)}
                                 Select channel to keep

 Headphone virtual spatialization effect
 This effect gives you the feeling that you are standing in a room with a complete 7.1 speaker set when using only a headphone, providing a more realistic sound experience. It should also be more comfortable and less tiring when listening to music for long periods of time.
It works with any source format from mono to 7.1.
      --headphone-dim=<integer [-2147483648 .. 2147483647]>
                                 Characteristic dimension
      --headphone-compensate, --no-headphone-compensate
                                 Compensate delay (default disabled)
      --headphone-dolby, --no-headphone-dolby
                                 No decoding of Dolby Surround (default
                                 disabled)

 Equalizer with 10 bands
      --equalizer-preset={flat,classical,club,dance,fullbass,fullbasstreble,fulltreble,headphones,largehall,live,party,pop,reggae,rock,ska,soft,softrock,techno}
                                 Equalizer preset
      --equalizer-bands=<string> Bands gain
      --equalizer-2pass, --no-equalizer-2pass
                                 Two pass (default disabled)
      --equalizer-preamp=<float> Global gain

 DTS Coherent Acoustics audio decoder
      --dts-dynrng, --no-dts-dynrng
                                 DTS dynamic range compression (default
                                 enabled)

 Dynamic range compressor
      --compressor-rms-peak=<float>
                                 RMS/peak
      --compressor-attack=<float>
                                 Attack time
      --compressor-release=<float>
                                 Release time
      --compressor-threshold=<float>
                                 Threshold level
      --compressor-ratio=<float> Ratio
      --compressor-knee=<float>  Knee radius
      --compressor-makeup-gain=<float>
                                 Makeup gain

 Sound Delay
 Add a delay effect to the sound
      --delay-time=<float>       Delay time
      --sweep-depth=<float>      Sweep Depth
      --sweep-rate=<float>       Sweep Rate
      --feedback-gain=<float [-0.900000 .. 0.900000]>
                                 Feedback Gain
      --wet-mix=<float [-0.999000 .. 0.999000]>
                                 Wet mix
      --dry-mix=<float [-0.999000 .. 0.999000]>
                                 Dry Mix

 Audio part of the BarGraph function
      --audiobargraph_a-address=<string>
                                 TCP address to use (default localhost)
      --audiobargraph_a-port=<integer [-2147483648 .. 2147483647]>
                                 TCP port to use (default 12345)
      --audiobargraph_a-bargraph=<integer [-2147483648 .. 2147483647]>
                                 Defines if BarGraph information should be
                                 sent (default 1)
      --audiobargraph_a-bargraph_repetition=<integer [-2147483648 .. 2147483647]>
                                 Sends the barGraph information every n audio
                                 packets (default 4)
      --audiobargraph_a-silence=<integer [-2147483648 .. 2147483647]>
                                 Defines if silence alarm information should
                                 be sent (default 1)
      --audiobargraph_a-time_window=<integer [-2147483648 .. 2147483647]>
                                 Time window to use in ms (default 5000)
      --audiobargraph_a-alarm_threshold=<float>
                                 Minimum Audio level to raise the alarm
                                 (default 0.1)
      --audiobargraph_a-repetition_time=<integer [-2147483648 .. 2147483647]>
                                 Time between two alarm messages in ms
                                 (default 2000)
      --audiobargraph_a-connection_reset=<integer [-2147483648 .. 2147483647]>
                                 Force connection reset regularly (default 1)

 ATSC A/52 (AC-3) audio decoder
      --a52-dynrng, --no-a52-dynrng
                                 A/52 dynamic range compression (default
                                 enabled)
      --a52-upmix, --no-a52-upmix
                                 Enable internal upmixing (default disabled)

 UDP stream output
      --sout-udp-caching=<integer [-2147483648 .. 2147483647]>
                                 Caching value (ms)
      --sout-udp-group=<integer [-2147483648 .. 2147483647]>
                                 Group packets

 IceCAST output
      --sout-shout-name=<string> Stream name
      --sout-shout-description=<string>
                                 Stream description
      --sout-shout-mp3, --no-sout-shout-mp3
                                 Stream MP3 (default disabled)
      --sout-shout-genre=<string>
                                 Genre description
      --sout-shout-url=<string>  URL description
      --sout-shout-bitrate=<string>
                                 Bitrate
      --sout-shout-samplerate=<string>
                                 Samplerate
      --sout-shout-channels=<string>
                                 Number of channels
      --sout-shout-quality=<string>
                                 Ogg Vorbis Quality
      --sout-shout-public, --no-sout-shout-public
                                 Stream public (default disabled)

 HTTP Live streaming output
      --sout-livehttp-seglen=<integer [-2147483648 .. 2147483647]>
                                 Segment length
      --sout-livehttp-numsegs=<integer [-2147483648 .. 2147483647]>
                                 Number of segments
      --sout-livehttp-splitanywhere, --no-sout-livehttp-splitanywhere
                                 Split segments anywhere (default disabled)
      --sout-livehttp-delsegs, --no-sout-livehttp-delsegs
                                 Delete segments (default enabled)
      --sout-livehttp-ratecontrol, --no-sout-livehttp-ratecontrol
                                 Use muxers rate control mechanism (default
                                 disabled)
      --sout-livehttp-index=<string>
                                 Index file
      --sout-livehttp-index-url=<string>
                                 Full URL to put in index file

 HTTP stream output
      --sout-http-user=<string>  Username
      --sout-http-pwd=<string>   Password
      --sout-http-mime=<string>  Mime

 File stream output
      --sout-file-append, --no-sout-file-append
                                 Append to file (default disabled)

 Screen Input
      --screen-fps=<float>       Frame rate
      --screen-top=<integer [-2147483648 .. 2147483647]>
                                 Subscreen top left corner
      --screen-left=<integer [-2147483648 .. 2147483647]>
                                 Subscreen top left corner
      --screen-width=<integer [-2147483648 .. 2147483647]>
                                 Subscreen width
      --screen-height=<integer [-2147483648 .. 2147483647]>
                                 Subscreen height
      --screen-follow-mouse, --no-screen-follow-mouse
                                 Follow the mouse (default disabled)
      --screen-mouse-image=<string>
                                 Mouse pointer image
      --screen-fragment-size=<integer [-2147483648 .. 2147483647]>
                                 Capture fragment size

 Real-Time Protocol (RTP) input
      --rtcp-port=<integer [0 .. 65535]>
                                 RTCP (local) port
      --srtp-key=<string>        SRTP key (hexadecimal)
      --srtp-salt=<string>       SRTP salt (hexadecimal)
      --rtp-max-src=<integer [1 .. 255]>
                                 Maximum RTP sources
      --rtp-timeout=<integer [-2147483648 .. 2147483647]>
                                 RTP source timeout (sec)
      --rtp-max-dropout=<integer [0 .. 32767]>
                                 Maximum RTP sequence number dropout
      --rtp-max-misorder=<integer [0 .. 32767]>
                                 Maximum RTP sequence number misordering
      --rtp-dynamic-pt={theora}  RTP payload format assumed for dynamic
                                 payloads

 File input
   Directory:
      --recursive={none,collapse,expand}
                                 Subdirectory behavior
      --ignore-filetypes=<string>
                                 Ignored extensions

 DVDRead Input (no menu support)
      --dvdread-angle=<integer [-2147483648 .. 2147483647]>
                                 DVD angle

 DVDnav Input
      --dvdnav-angle=<integer [-2147483648 .. 2147483647]>
                                 DVD angle
      --dvdnav-menu, --no-dvdnav-menu
                                 Start directly in menu (default enabled)

 Digital Television and Radio
      --dvb-adapter=<integer [-2147483648 .. 2147483647]>
                                 DVB adapter
      --dvb-network-name=<string>
                                 Network name
      --dvb-create-name=<string> Network name to create
      --dvb-frequency=<integer [0 .. 107999999]>
                                 Frequency (Hz)
      --dvb-inversion={-1 (Automatic), 0 (Off), 1 (On)}
                                 Spectrum inversion
   Terrestrial reception parameters:
      --dvb-bandwidth={0 (Automatic), 10 (10 MHz), 8 (8 MHz), 7 (7 MHz), 6 (6 MHz), 5 (5 MHz), 2 (1.712 MHz)}
                                 Bandwidth (MHz)
      --dvb-transmission={-1 (Automatic), 1 (1k), 2 (2k), 4 (4k), 8 (8k), 16 (16k), 32 (32k)}
                                 Transmission mode
      --dvb-guard={,1/128,1/32,1/16,19/256,1/8,19/128,1/4}
                                 Guard interval
   DVB-T reception parameters:
      --dvb-code-rate-hp={,0,1/2,3/5,2/3,3/4,4/5,5/6,6/7,7/8,8/9,9/10}
                                 High-priority code rate
      --dvb-code-rate-lp={,0,1/2,3/5,2/3,3/4,4/5,5/6,6/7,7/8,8/9,9/10}
                                 Low-priority code rate
      --dvb-hierarchy={-1 (Automatic), 0 (None), 1 (1), 2 (2), 4 (4)}
                                 Hierarchy mode
   ISDB-T reception parameters:
      --dvb-a-modulation={,QAM,16QAM,32QAM,64QAM,128QAM,256QAM,8VSB,16VSB,QPSK,DQPSK,8PSK,16APSK,32APSK}
                                 Layer A modulation
      --dvb-a-fec={,0,1/2,3/5,2/3,3/4,4/5,5/6,6/7,7/8,8/9,9/10}
                                 Layer A code rate
      --dvb-a-count=<integer [0 .. 13]>
                                 Layer A segments count
      --dvb-a-interleaving=<integer [0 .. 3]>
                                 Layer A time interleaving
      --dvb-b-modulation={,QAM,16QAM,32QAM,64QAM,128QAM,256QAM,8VSB,16VSB,QPSK,DQPSK,8PSK,16APSK,32APSK}
                                 Layer B modulation
      --dvb-b-fec={,0,1/2,3/5,2/3,3/4,4/5,5/6,6/7,7/8,8/9,9/10}
                                 Layer B code rate
      --dvb-b-count=<integer [0 .. 13]>
                                 Layer B segments count
      --dvb-b-interleaving=<integer [0 .. 3]>
                                 Layer B time interleaving
      --dvb-c-modulation={,QAM,16QAM,32QAM,64QAM,128QAM,256QAM,8VSB,16VSB,QPSK,DQPSK,8PSK,16APSK,32APSK}
                                 Layer C modulation
      --dvb-c-fec={,0,1/2,3/5,2/3,3/4,4/5,5/6,6/7,7/8,8/9,9/10}
                                 Layer C code rate
      --dvb-c-count=<integer [0 .. 13]>
                                 Layer C segments count
      --dvb-c-interleaving=<integer [0 .. 3]>
                                 Layer C time interleaving
   Cable and satellite reception parameters:
      --dvb-modulation={,QAM,16QAM,32QAM,64QAM,128QAM,256QAM,8VSB,16VSB,QPSK,DQPSK,8PSK,16APSK,32APSK}
                                 Modulation / Constellation
      --dvb-srate=<integer [0 .. 4294967295]>
                                 Symbol rate (bauds)
      --dvb-fec={,0,1/2,3/5,2/3,3/4,4/5,5/6,6/7,7/8,8/9,9/10}
                                 FEC code rate
   DVB-S2 parameters:
      --dvb-pilot={-1 (Automatic), 0 (Off), 1 (On)}
                                 Pilot
      --dvb-rolloff={-1 (Automatic), 35 (0.35 (same as DVB-S)), 20 (0.20), 25 (0.25)}
                                 Roll-off factor
   ISDB-S parameters:
      --dvb-ts-id=<integer [0 .. 65535]>
                                 Transport stream ID
   Satellite equipment control:
      --dvb-polarization={,V,H,R,L}
                                 Polarization (Voltage)
      --dvb-voltage=<integer [0 .. 18]>
                                  
      --dvb-lnb-low=<integer [0 .. 2147483647]>
                                 Local oscillator low frequency (kHz)
      --dvb-lnb-high=<integer [0 .. 2147483647]>
                                 Local oscillator high frequency (kHz)
      --dvb-lnb-switch=<integer [0 .. 2147483647]>
                                 Universal LNB switch frequency (kHz)
      --dvb-network-id=<integer [-2147483648 .. 2147483647]>
                                 Network identifier
      --dvb-azimuth=<integer [-2147483648 .. 2147483647]>
                                 Satellite azimuth
      --dvb-elevation=<integer [-2147483648 .. 2147483647]>
                                 Satellite elevation
      --dvb-longitude=<integer [-2147483648 .. 2147483647]>
                                 Satellite longitude
      --dvb-range=<string>       Satellite range code
   ATSC reception parameters:
      --dvb-major-channel=<integer [-2147483648 .. 2147483647]>
                                 Major channel
      --dvb-minor-channel=<integer [-2147483648 .. 2147483647]>
                                 ATSC minor channel
      --dvb-physical-channel=<integer [-2147483648 .. 2147483647]>
                                 Physical channel

 DirectShow input
      --dshow-vdev={,none}       Video device name
      --dshow-adev={,none}       Audio device name
      --dshow-size=<string>      Video size
      --dshow-aspect-ratio=<string>
                                 Picture aspect-ratio n:m
      --dshow-chroma=<string>    Video input chroma format
      --dshow-fps=<float>        Video input frame rate
      --dshow-config, --no-dshow-config
                                 Device properties (default disabled)
      --dshow-tuner, --no-dshow-tuner
                                 Tuner properties (default disabled)
      --dshow-tuner-channel=<integer [-2147483648 .. 2147483647]>
                                 Tuner TV Channel
      --dshow-tuner-frequency=<integer [-2147483648 .. 2147483647]>
                                 Tuner Frequency
      --dshow-tuner-country=<integer [-2147483648 .. 2147483647]>
                                 Tuner country code
      --dshow-tuner-standard={0 (Default), 1 (NTSC_M), 2 (NTSC_M_J), 4 (NTSC_443), 16 (PAL_B), 32 (PAL_D), 64 (PAL_G), 128 (PAL_H), 256 (PAL_I), 512 (PAL_M), 1024 (PAL_N), 2048 (PAL_60), 4096 (SECAM_B), 8192 (SECAM_D), 16384 (SECAM_G), 32768 (SECAM_H), 65536 (SECAM_K), 131072 (SECAM_K1), 262144 (SECAM_L), 524288 (SECAM_L1), 1048576 (PAL_N_COMBO)}
                                 Video standard
      --dshow-tuner-input={0 (Default), 1 (Cable), 2 (Antenna)}
                                 Tuner input type
      --dshow-video-input=<integer [-2147483648 .. 2147483647]>
                                 Video input pin
      --dshow-video-output=<integer [-2147483648 .. 2147483647]>
                                 Video output pin
      --dshow-audio-input=<integer [-2147483648 .. 2147483647]>
                                 Audio input pin
      --dshow-audio-output=<integer [-2147483648 .. 2147483647]>
                                 Audio output pin
      --dshow-amtuner-mode={0 (Default), 1 (TV), 2 (FM radio), 4 (AM radio), 8 (DSS)}
                                 AM Tuner mode
      --dshow-audio-channels=<integer [-2147483648 .. 2147483647]>
                                 Number of audio channels
      --dshow-audio-samplerate=<integer [-2147483648 .. 2147483647]>
                                 Audio sample rate
      --dshow-audio-bitspersample=<integer [-2147483648 .. 2147483647]>
                                 Audio bits per sample

 Audio CD input
      --cdda-track=<integer [-2147483648 .. 2147483647]>
                                  
      --cdda-first-sector=<integer [-2147483648 .. 2147483647]>
                                  
      --cdda-last-sector=<integer [-2147483648 .. 2147483647]>
                                  
      --cddb-server=<string>     CDDB Server
      --cddb-port=<integer [-2147483648 .. 2147483647]>
                                 CDDB port

 VDR recordings
 Support for VDR recordings (http://www.tvdr.de/).
      --vdr-chapter-offset=<integer [-2147483648 .. 2147483647]>
                                 Chapter offset in ms
      --vdr-fps=<float [1.000000 .. 1000.000000]>
                                 Frame rate

 UDP input

 SMB input
 Samba (Windows network shares) input
      --smb-user=<string>        SMB user name
      --smb-pwd=<string>         SMB password
      --smb-domain=<string>      SMB domain

 Microsoft Media Server (MMS) input
      --mms-timeout=<integer [-2147483648 .. 2147483647]>
                                 TCP/UDP timeout (ms)
      --mms-all, --no-mms-all    Force selection of all streams (default
                                 disabled)
      --mms-maxbitrate=<integer [-2147483648 .. 2147483647]>
                                 Maximum bitrate
      --mmsh-proxy=<string>      HTTP proxy

 Memory input
      --imem-get=<string>        Get function
      --imem-release=<string>    Release function
      --imem-cookie=<string>     Callback cookie string
      --imem-data=<string>       Callback data
      --imem-id=<integer [-2147483648 .. 2147483647]>
                                 ID
      --imem-group=<integer [-2147483648 .. 2147483647]>
                                 Group
      --imem-cat={0 (Unknown), 1 (Audio), 2 (Video), 3 (Subtitle), 4 (Data)}
                                 Category
      --imem-codec=<string>      Codec
      --imem-language=<string>   Language
      --imem-samplerate=<integer [-2147483648 .. 2147483647]>
                                 Sample rate
      --imem-channels=<integer [-2147483648 .. 2147483647]>
                                 Channels count
      --imem-width=<integer [-2147483648 .. 2147483647]>
                                 Width
      --imem-height=<integer [-2147483648 .. 2147483647]>
                                 Height
      --imem-dar=<string>        Display aspect ratio
      --imem-fps=<string>        Frame rate
      --imem-size=<integer [-2147483648 .. 2147483647]>
                                 Size

 HTTP input
      --http-proxy=<string>      HTTP proxy
      --http-proxy-pwd=<string>  HTTP proxy password
      --http-referrer=<string>   HTTP referer value
      --http-user-agent=<string> User Agent
      --http-reconnect, --no-http-reconnect
                                 Auto re-connect (default disabled)
      --http-continuous, --no-http-continuous
                                 Continuous stream (default disabled)
      --http-forward-cookies, --no-http-forward-cookies
                                 Forward Cookies (default enabled)

 FTP input
      --ftp-user=<string>        FTP user name
      --ftp-pwd=<string>         FTP password
      --ftp-account=<string>     FTP account

 Audio
      --audio, --no-audio        Enable audio (default enabled)
      --volume=<integer [0 .. 512]>
                                 Default audio volume
      --volume-step=<integer [0 .. 512]>
                                 Audio output volume step
      --hq-resampling, --no-hq-resampling
                                 High quality audio resampling (default
                                 enabled)
      --spdif, --no-spdif        Use S/PDIF when available (default disabled)
      --force-dolby-surround={0 (Auto), 1 (On), 2 (Off)}
                                 Force detection of Dolby Surround
      --audio-desync=<integer [-2147483648 .. 2147483647]>
                                 Audio desynchronization compensation
      --audio-replay-gain-mode={none,track,album}
                                 Replay gain mode
      --audio-replay-gain-preamp=<float>
                                 Replay preamp
      --audio-replay-gain-default=<float>
                                 Default replay gain
      --audio-replay-gain-peak-protection, --no-audio-replay-gain-peak-protection
                                 Peak protection (default enabled)
      --audio-time-stretch, --no-audio-time-stretch
                                 Enable time stretching audio (default enabled)
  -A, --aout=<string>            Audio output module
      --audio-filter=<string>    Audio filters
      --audio-visual=<string>    Audio visualizations 

 Video
      --video, --no-video        Enable video (default enabled)
      --grayscale, --no-grayscale
                                 Grayscale video output (default disabled)
  -f, --fullscreen, --no-fullscreen
                                 Fullscreen video output (default disabled)
      --embedded-video, --no-embedded-video
                                 Embedded video (default enabled)
      --xlib, --no-xlib           (default enabled)
      --drop-late-frames, --no-drop-late-frames
                                 Drop late frames (default enabled)
      --skip-frames, --no-skip-frames
                                 Skip frames (default enabled)
      --quiet-synchro, --no-quiet-synchro
                                 Quiet synchro (default disabled)
      --keyboard-events, --no-keyboard-events
                                 Key press events (default enabled)
      --mouse-events, --no-mouse-events
                                 Mouse events (default enabled)
      --overlay, --no-overlay    Overlay video output (default enabled)
      --video-on-top, --no-video-on-top
                                 Always on top (default disabled)
      --video-wallpaper, --no-video-wallpaper
                                 Enable wallpaper mode  (default disabled)
      --disable-screensaver, --no-disable-screensaver
                                 Disable screensaver (default enabled)
      --video-title-show, --no-video-title-show
                                 Show media title on video (default enabled)
      --video-title-timeout=<integer [-2147483648 .. 2147483647]>
                                 Show video title for x milliseconds
      --video-title-position={0 (Center), 1 (Left), 2 (Right), 4 (Top), 8 (Bottom), 5 (Top-Left), 6 (Top-Right), 9 (Bottom-Left), 10 (Bottom-Right)}
                                 Position of video title
      --mouse-hide-timeout=<integer [-2147483648 .. 2147483647]>
                                 Hide cursor and fullscreen controller after x
                                 milliseconds
   Snapshot:
      --snapshot-path=<string>   Video snapshot directory (or filename)
      --snapshot-prefix=<string> Video snapshot file prefix
      --snapshot-format={png,jpg}
                                 Video snapshot format
      --snapshot-preview, --no-snapshot-preview
                                 Display video snapshot preview (default
                                 enabled)
      --snapshot-sequential, --no-snapshot-sequential
                                 Use sequential numbers instead of timestamps
                                 (default disabled)
      --snapshot-width=<integer [-2147483648 .. 2147483647]>
                                 Video snapshot width
      --snapshot-height=<integer [-2147483648 .. 2147483647]>
                                 Video snapshot height
   Window properties:
      --width=<integer [-2147483648 .. 2147483647]>
                                 Video width
      --height=<integer [-2147483648 .. 2147483647]>
                                 Video height
      --video-x=<integer [-2147483648 .. 2147483647]>
                                 Video X coordinate
      --video-y=<integer [-2147483648 .. 2147483647]>
                                 Video Y coordinate
      --crop=<string>            Video cropping
      --custom-crop-ratios=<string>
                                 Custom crop ratios list
      --aspect-ratio=<string>    Source aspect ratio
      --autoscale, --no-autoscale
                                 Video Auto Scaling (default enabled)
      --scale=<float>            Video scaling factor
      --monitor-par=<string>     Monitor pixel aspect ratio
      --custom-aspect-ratios=<string>
                                 Custom aspect ratios list
      --hdtv-fix, --no-hdtv-fix  Fix HDTV height (default enabled)
      --video-deco, --no-video-deco
                                 Window decorations (default enabled)
      --video-title=<string>     Video title
      --align={0 (Center), 1 (Left), 2 (Right), 4 (Top), 8 (Bottom), 5 (Top-Left), 6 (Top-Right), 9 (Bottom-Left), 10 (Bottom-Right)}
                                 Video alignment
      --zoom=<float>             Zoom video
      --deinterlace={0 (Off), -1 (Automatic), 1 (On)}
                                 Deinterlace
      --deinterlace-mode={discard,blend,mean,bob,linear,x,yadif,yadif2x,phosphor,ivtc}
                                 Deinterlace mode
  -V, --vout=<string>            Video output module
      --video-filter=<string>    Video filter module
      --video-splitter=<string>  Video splitter module

 Subpictures
   On Screen Display:
      --spu, --no-spu            Enable sub-pictures (default enabled)
      --osd, --no-osd            On Screen Display (default enabled)
      --text-renderer=<string>   Text rendering module
   Subtitles:
      --sub-file=<string>        Use subtitle file
      --sub-autodetect-file, --no-sub-autodetect-file
                                 Autodetect subtitle files (default enabled)
      --sub-autodetect-fuzzy=<integer [-2147483648 .. 2147483647]>
                                 Subtitle autodetection fuzziness
      --sub-autodetect-path=<string>
                                 Subtitle autodetection paths
      --sub-margin=<integer [-2147483648 .. 2147483647]>
                                 Force subtitle position
   Overlays:
      --sub-source=<string>      Subpictures source module
      --sub-filter=<string>      Subpictures filter module
   Track settings:
      --program=<integer [-2147483648 .. 2147483647]>
                                 Program
      --programs=<string>        Programs
      --audio-track=<integer [-2147483648 .. 2147483647]>
                                 Audio track
      --sub-track=<integer [-2147483648 .. 2147483647]>
                                 Subtitles track
      --audio-language=<string>  Audio language
      --sub-language=<string>    Subtitle language
      --audio-track-id=<integer [-2147483648 .. 2147483647]>
                                 Audio track ID
      --sub-track-id=<integer [-2147483648 .. 2147483647]>
                                 Subtitles track ID
      --preferred-resolution={-1 (Best available), 1080 (Full HD (1080p)), 720 (HD (720p)), 576 (Standard Definition (576 or 480 lines)), 320 (Low definition (320 lines))}
                                 Preferred video resolution
   Playback control:
      --input-repeat=<integer [-2147483648 .. 2147483647]>
                                 Input repetitions
      --start-time=<float>       Start time
      --stop-time=<float>        Stop time
      --run-time=<float>         Run time
      --input-fast-seek, --no-input-fast-seek
                                 Fast seek (default disabled)
      --rate=<float>             Playback speed
      --input-list=<string>      Input list
      --input-slave=<string>     Input slave (experimental)
      --bookmarks=<string>       Bookmarks list for a stream
   Default devices:
      --dvd=<string>             DVD device
      --vcd=<string>             VCD device
      --cd-audio=<string>        Audio CD device
   Network settings:
      --mtu=<integer [-2147483648 .. 2147483647]>
                                 MTU of the network interface
      --ipv4-timeout=<integer [-2147483648 .. 2147483647]>
                                 TCP connection timeout
      --http-host=<string>       HTTP server address
      --http-port=<integer [1 .. 65535]>
                                 HTTP server port
      --https-port=<integer [1 .. 65535]>
                                 HTTPS server port
      --rtsp-host=<string>       RTSP server address
      --rtsp-port=<integer [1 .. 65535]>
                                 RTSP server port
      --http-cert=<string>       HTTP/TLS server certificate
      --http-key=<string>        HTTP/TLS server private key
      --http-ca=<string>         HTTP/TLS Certificate Authority
      --http-crl=<string>        HTTP/TLS Certificate Revocation List
   Socks proxy:
      --socks=<string>           SOCKS server
      --socks-user=<string>      SOCKS user name
      --socks-pwd=<string>       SOCKS password
   Metadata:
      --meta-title=<string>      Title metadata
      --meta-author=<string>     Author metadata
      --meta-artist=<string>     Artist metadata
      --meta-genre=<string>      Genre metadata
      --meta-copyright=<string>  Copyright metadata
      --meta-description=<string>
                                 Description metadata
      --meta-date=<string>       Date metadata
      --meta-url=<string>        URL metadata
   Advanced:
      --file-caching=<integer [0 .. 60000]>
                                 File caching (ms)
      --live-caching=<integer [0 .. 60000]>
                                 Live capture caching (ms)
      --disc-caching=<integer [0 .. 60000]>
                                 Disc caching (ms)
      --network-caching=<integer [0 .. 60000]>
                                 Network caching (ms)
      --cr-average=<integer [-2147483648 .. 2147483647]>
                                 Clock reference average counter
      --clock-synchro={-1 (Default), 0 (Disable), 1 (Enable)}
                                 Clock synchronisation
      --clock-jitter=<integer [-2147483648 .. 2147483647]>
                                 Clock jitter
      --network-synchronisation, --no-network-synchronisation
                                 Network synchronisation (default disabled)
      --input-record-path=<string>
                                 Record directory or filename
      --input-record-native, --no-input-record-native
                                 Prefer native stream recording (default
                                 enabled)
      --input-timeshift-path=<string>
                                 Timeshift directory
      --input-timeshift-granularity=<integer [-2147483648 .. 2147483647]>
                                 Timeshift granularity
      --input-title-format=<string>
                                 Change title according to current media

 Decoders
      --codec=<string>           Preferred decoders list
      --encoder=<string>         Preferred encoders list

 Input
      --access=<string>          Access module
      --demux=<string>           Demux module
      --stream-filter=<string>   Stream filter module

 Stream output
      --sout=<string>            Default stream output chain
      --sout-display, --no-sout-display
                                 Display while streaming (default disabled)
      --sout-keep, --no-sout-keep
                                 Keep stream output open (default disabled)
      --sout-all, --no-sout-all  Enable streaming of all ES (default disabled)
      --sout-audio, --no-sout-audio
                                 Enable audio stream output (default enabled)
      --sout-video, --no-sout-video
                                 Enable video stream output (default enabled)
      --sout-spu, --no-sout-spu  Enable SPU stream output (default enabled)
      --sout-mux-caching=<integer [-2147483648 .. 2147483647]>
                                 Stream output muxer caching (ms)
   VLM:
      --vlm-conf=<string>        VLM configuration file
      --mux=<string>             Mux module
      --access_output=<string>   Access output module
      --ttl=<integer [-2147483648 .. 2147483647]>
                                 Hop limit (TTL)
      --miface=<string>          Multicast output interface
      --dscp=<integer [-2147483648 .. 2147483647]>
                                 DiffServ Code Point
      --packetizer=<string>      Preferred packetizer list
      --sap-interval=<integer [-2147483648 .. 2147483647]>
                                 SAP announcement interval

 CPU

 Miscellaneous
   Special modules:
      --memcpy=<string>          Memory copy module
      --vod-server=<string>      VoD server module
   Plugins:
      --plugins-cache, --no-plugins-cache
                                 Use a plugins cache (default enabled)
      --data-path=<string>       Data search path
   Performance options:
      --one-instance, --no-one-instance
                                 Allow only one running instance (default
                                 disabled)
      --started-from-file, --no-started-from-file
                                 VLC is started from file association (default
                                 disabled)
      --one-instance-when-started-from-file, --no-one-instance-when-started-from-file
                                 One instance when started from file (default
                                 enabled)
      --playlist-enqueue, --no-playlist-enqueue
                                 Enqueue items to playlist when in one
                                 instance mode (default enabled)
      --high-priority, --no-high-priority
                                 Increase the priority of the process (default
                                 disabled)

 Playlist
  -Z, --random, --no-random      Play files randomly forever (default enabled)
  -L, --loop, --no-loop          Repeat all (default disabled)
  -R, --repeat, --no-repeat      Repeat current item (default disabled)
      --play-and-exit, --no-play-and-exit
                                 Play and exit (default disabled)
      --play-and-stop, --no-play-and-stop
                                 Play and stop (default disabled)
      --play-and-pause, --no-play-and-pause
                                 Play and pause (default disabled)
      --playlist-autostart, --no-playlist-autostart
                                 Auto start (default enabled)
      --media-library, --no-media-library
                                 Use media library (default disabled)
      --playlist-tree, --no-playlist-tree
                                 Display playlist tree (default disabled)
      --open=<string>            Default stream
      --auto-preparse, --no-auto-preparse
                                 Automatically preparse files (default enabled)
      --album-art={0 (Manual download only), 1 (When track starts playing), 2 (As soon as track is added)}
                                 Album art policy
  -S, --services-discovery=<string>
                                 Services discovery modules
  -v, --verbose=<integer [-2147483648 .. 2147483647]>
                                 Verbosity (0,1,2)
      --verbose-objects=<string> Choose which objects should print debug
                                 message
  -q, --quiet, --no-quiet        Be quiet (default disabled)
      --file-logging, --no-file-logging
                                 Log to file (default disabled)
      --language={auto,en,ar,bn,pt_BR,en_GB,el,bg,ca,zh_TW,cs,da,nl,fi,et,eu,fr,ga,gl,ka,de,he,hr,hu,hy,is,id,it,ja,ko,lt,mn,ms,nb,nn,kk,km,ne,oc,fa,pl,pt_PT,pa,ro,ru,zh_CN,si,sr,sk,sl,ckb,es,sv,te,tr,uk,vi,wa}
                                 Language
      --color, --no-color        Color messages (default enabled)
      --advanced, --no-advanced  Show advanced options (default disabled)
      --interact, --no-interact  Interface interaction (default enabled)
      --stats, --no-stats        Locally collect statistics (default enabled)
  -I, --intf=<string>            Interface module
      --extraintf=<string>       Extra interface modules
      --control=<string>         Control interfaces

 Hot keys
      --global-key-toggle-fullscreen=<string>
                                 Fullscreen
      --key-toggle-fullscreen=<string>
                                 Fullscreen
      --global-key-leave-fullscreen=<string>
                                 Leave fullscreen
      --key-leave-fullscreen=<string>
                                 Leave fullscreen
      --global-key-play-pause=<string>
                                 Play/Pause
      --key-play-pause=<string>  Play/Pause
      --global-key-pause=<string>
                                 Pause only
      --key-pause=<string>       Pause only
      --global-key-play=<string> Play only
      --key-play=<string>        Play only
      --global-key-faster=<string>
                                 Faster
      --key-faster=<string>      Faster
      --global-key-slower=<string>
                                 Slower
      --key-slower=<string>      Slower
      --global-key-rate-normal=<string>
                                 Normal rate
      --key-rate-normal=<string> Normal rate
      --global-key-rate-faster-fine=<string>
                                 Faster (fine)
      --key-rate-faster-fine=<string>
                                 Faster (fine)
      --global-key-rate-slower-fine=<string>
                                 Slower (fine)
      --key-rate-slower-fine=<string>
                                 Slower (fine)
      --global-key-next=<string> Next
      --key-next=<string>        Next
      --global-key-prev=<string> Previous
      --key-prev=<string>        Previous
      --global-key-stop=<string> Stop
      --key-stop=<string>        Stop
      --global-key-position=<string>
                                 Position
      --key-position=<string>    Position
      --global-key-jump-extrashort=<string>
                                 Very short backwards jump
      --key-jump-extrashort=<string>
                                 Very short backwards jump
      --global-key-jump+extrashort=<string>
                                 Very short forward jump
      --key-jump+extrashort=<string>
                                 Very short forward jump
      --global-key-jump-short=<string>
                                 Short backwards jump
      --key-jump-short=<string>  Short backwards jump
      --global-key-jump+short=<string>
                                 Short forward jump
      --key-jump+short=<string>  Short forward jump
      --global-key-jump-medium=<string>
                                 Medium backwards jump
      --key-jump-medium=<string> Medium backwards jump
      --global-key-jump+medium=<string>
                                 Medium forward jump
      --key-jump+medium=<string> Medium forward jump
      --global-key-jump-long=<string>
                                 Long backwards jump
      --key-jump-long=<string>   Long backwards jump
      --global-key-jump+long=<string>
                                 Long forward jump
      --key-jump+long=<string>   Long forward jump
      --global-key-frame-next=<string>
                                 Next frame
      --key-frame-next=<string>  Next frame
      --global-key-nav-activate=<string>
                                 Activate
      --key-nav-activate=<string>
                                 Activate
      --global-key-nav-up=<string>
                                 Navigate up
      --key-nav-up=<string>      Navigate up
      --global-key-nav-down=<string>
                                 Navigate down
      --key-nav-down=<string>    Navigate down
      --global-key-nav-left=<string>
                                 Navigate left
      --key-nav-left=<string>    Navigate left
      --global-key-nav-right=<string>
                                 Navigate right
      --key-nav-right=<string>   Navigate right
      --global-key-disc-menu=<string>
                                 Go to the DVD menu
      --key-disc-menu=<string>   Go to the DVD menu
      --global-key-title-prev=<string>
                                 Select previous DVD title
      --key-title-prev=<string>  Select previous DVD title
      --global-key-title-next=<string>
                                 Select next DVD title
      --key-title-next=<string>  Select next DVD title
      --global-key-chapter-prev=<string>
                                 Select prev DVD chapter
      --key-chapter-prev=<string>
                                 Select prev DVD chapter
      --global-key-chapter-next=<string>
                                 Select next DVD chapter
      --key-chapter-next=<string>
                                 Select next DVD chapter
      --global-key-quit=<string> Quit
      --key-quit=<string>        Quit
      --global-key-vol-up=<string>
                                 Volume up
      --key-vol-up=<string>      Volume up
      --global-key-vol-down=<string>
                                 Volume down
      --key-vol-down=<string>    Volume down
      --global-key-vol-mute=<string>
                                 Mute
      --key-vol-mute=<string>    Mute
      --global-key-subdelay-up=<string>
                                 Subtitle delay up
      --key-subdelay-up=<string> Subtitle delay up
      --global-key-subdelay-down=<string>
                                 Subtitle delay down
      --key-subdelay-down=<string>
                                 Subtitle delay down
      --global-key-subpos-up=<string>
                                 Subtitle position up
      --key-subpos-up=<string>   Subtitle position up
      --global-key-subpos-down=<string>
                                 Subtitle position down
      --key-subpos-down=<string> Subtitle position down
      --global-key-audiodelay-up=<string>
                                 Audio delay up
      --key-audiodelay-up=<string>
                                 Audio delay up
      --global-key-audiodelay-down=<string>
                                 Audio delay down
      --key-audiodelay-down=<string>
                                 Audio delay down
      --global-key-audio-track=<string>
                                 Cycle audio track
      --key-audio-track=<string> Cycle audio track
      --global-key-audiodevice-cycle=<string>
                                 Cycle through audio devices
      --key-audiodevice-cycle=<string>
                                 Cycle through audio devices
      --global-key-subtitle-track=<string>
                                 Cycle subtitle track
      --key-subtitle-track=<string>
                                 Cycle subtitle track
      --global-key-aspect-ratio=<string>
                                 Cycle source aspect ratio
      --key-aspect-ratio=<string>
                                 Cycle source aspect ratio
      --global-key-crop=<string> Cycle video crop
      --key-crop=<string>        Cycle video crop
      --global-key-toggle-autoscale=<string>
                                 Toggle autoscaling
      --key-toggle-autoscale=<string>
                                 Toggle autoscaling
      --global-key-incr-scalefactor=<string>
                                 Increase scale factor
      --key-incr-scalefactor=<string>
                                 Increase scale factor
      --global-key-decr-scalefactor=<string>
                                 Decrease scale factor
      --key-decr-scalefactor=<string>
                                 Decrease scale factor
      --global-key-deinterlace=<string>
                                 Cycle deinterlace modes
      --key-deinterlace=<string> Cycle deinterlace modes
      --global-key-intf-show=<string>
                                 Show controller in fullscreen
      --key-intf-show=<string>   Show controller in fullscreen
      --global-key-intf-boss=<string>
                                 Boss key
      --key-intf-boss=<string>   Boss key
      --global-key-snapshot=<string>
                                 Take video snapshot
      --key-snapshot=<string>    Take video snapshot
      --global-key-record=<string>
                                 Record
      --key-record=<string>      Record
      --global-key-zoom=<string> Zoom
      --key-zoom=<string>        Zoom
      --global-key-unzoom=<string>
                                 Un-Zoom
      --key-unzoom=<string>      Un-Zoom
      --global-key-wallpaper=<string>
                                 Toggle wallpaper mode in video output
      --key-wallpaper=<string>   Toggle wallpaper mode in video output
      --global-key-menu-on=<string>
                                 Display OSD menu on top of video output
      --key-menu-on=<string>     Display OSD menu on top of video output
      --global-key-menu-off=<string>
                                 Do not display OSD menu on video output
      --key-menu-off=<string>    Do not display OSD menu on video output
      --global-key-menu-right=<string>
                                 Highlight widget on the right
      --key-menu-right=<string>  Highlight widget on the right
      --global-key-menu-left=<string>
                                 Highlight widget on the left
      --key-menu-left=<string>   Highlight widget on the left
      --global-key-menu-up=<string>
                                 Highlight widget on top
      --key-menu-up=<string>     Highlight widget on top
      --global-key-menu-down=<string>
                                 Highlight widget below
      --key-menu-down=<string>   Highlight widget below
      --global-key-menu-select=<string>
                                 Select current widget
      --key-menu-select=<string> Select current widget
      --global-key-crop-top=<string>
                                 Crop one pixel from the top of the video
      --key-crop-top=<string>    Crop one pixel from the top of the video
      --global-key-uncrop-top=<string>
                                 Uncrop one pixel from the top of the video
      --key-uncrop-top=<string>  Uncrop one pixel from the top of the video
      --global-key-crop-left=<string>
                                 Crop one pixel from the left of the video
      --key-crop-left=<string>   Crop one pixel from the left of the video
      --global-key-uncrop-left=<string>
                                 Uncrop one pixel from the left of the video
      --key-uncrop-left=<string> Uncrop one pixel from the left of the video
      --global-key-crop-bottom=<string>
                                 Crop one pixel from the bottom of the video
      --key-crop-bottom=<string> Crop one pixel from the bottom of the video
      --global-key-uncrop-bottom=<string>
                                 Uncrop one pixel from the bottom of the video
      --key-uncrop-bottom=<string>
                                 Uncrop one pixel from the bottom of the video
      --global-key-crop-right=<string>
                                 Crop one pixel from the right of the video
      --key-crop-right=<string>  Crop one pixel from the right of the video
      --global-key-uncrop-right=<string>
                                 Uncrop one pixel from the right of the video
      --key-uncrop-right=<string>
                                 Uncrop one pixel from the right of the video
      --global-key-random=<string>
                                 Random
      --key-random=<string>      Random
      --global-key-loop=<string> Normal/Repeat/Loop
      --key-loop=<string>        Normal/Repeat/Loop
   Zoom:
      --global-key-zoom-quarter=<string>
                                 1:4 Quarter
      --key-zoom-quarter=<string>
                                 1:4 Quarter
      --global-key-zoom-half=<string>
                                 1:2 Half
      --key-zoom-half=<string>   1:2 Half
      --global-key-zoom-original=<string>
                                 1:1 Original
      --key-zoom-original=<string>
                                 1:1 Original
      --global-key-zoom-double=<string>
                                 2:1 Double
      --key-zoom-double=<string> 2:1 Double
   Jump sizes:
      --extrashort-jump-size=<integer [-2147483648 .. 2147483647]>
                                 Very short jump length
      --short-jump-size=<integer [-2147483648 .. 2147483647]>
                                 Short jump length
      --medium-jump-size=<integer [-2147483648 .. 2147483647]>
                                 Medium jump length
      --long-jump-size=<integer [-2147483648 .. 2147483647]>
                                 Long jump length
      --global-key-set-bookmark1=<string>
                                 Set playlist bookmark 1
      --key-set-bookmark1=<string>
                                 Set playlist bookmark 1
      --global-key-set-bookmark2=<string>
                                 Set playlist bookmark 2
      --key-set-bookmark2=<string>
                                 Set playlist bookmark 2
      --global-key-set-bookmark3=<string>
                                 Set playlist bookmark 3
      --key-set-bookmark3=<string>
                                 Set playlist bookmark 3
      --global-key-set-bookmark4=<string>
                                 Set playlist bookmark 4
      --key-set-bookmark4=<string>
                                 Set playlist bookmark 4
      --global-key-set-bookmark5=<string>
                                 Set playlist bookmark 5
      --key-set-bookmark5=<string>
                                 Set playlist bookmark 5
      --global-key-set-bookmark6=<string>
                                 Set playlist bookmark 6
      --key-set-bookmark6=<string>
                                 Set playlist bookmark 6
      --global-key-set-bookmark7=<string>
                                 Set playlist bookmark 7
      --key-set-bookmark7=<string>
                                 Set playlist bookmark 7
      --global-key-set-bookmark8=<string>
                                 Set playlist bookmark 8
      --key-set-bookmark8=<string>
                                 Set playlist bookmark 8
      --global-key-set-bookmark9=<string>
                                 Set playlist bookmark 9
      --key-set-bookmark9=<string>
                                 Set playlist bookmark 9
      --global-key-set-bookmark10=<string>
                                 Set playlist bookmark 10
      --key-set-bookmark10=<string>
                                 Set playlist bookmark 10
      --global-key-play-bookmark1=<string>
                                 Play playlist bookmark 1
      --key-play-bookmark1=<string>
                                 Play playlist bookmark 1
      --global-key-play-bookmark2=<string>
                                 Play playlist bookmark 2
      --key-play-bookmark2=<string>
                                 Play playlist bookmark 2
      --global-key-play-bookmark3=<string>
                                 Play playlist bookmark 3
      --key-play-bookmark3=<string>
                                 Play playlist bookmark 3
      --global-key-play-bookmark4=<string>
                                 Play playlist bookmark 4
      --key-play-bookmark4=<string>
                                 Play playlist bookmark 4
      --global-key-play-bookmark5=<string>
                                 Play playlist bookmark 5
      --key-play-bookmark5=<string>
                                 Play playlist bookmark 5
      --global-key-play-bookmark6=<string>
                                 Play playlist bookmark 6
      --key-play-bookmark6=<string>
                                 Play playlist bookmark 6
      --global-key-play-bookmark7=<string>
                                 Play playlist bookmark 7
      --key-play-bookmark7=<string>
                                 Play playlist bookmark 7
      --global-key-play-bookmark8=<string>
                                 Play playlist bookmark 8
      --key-play-bookmark8=<string>
                                 Play playlist bookmark 8
      --global-key-play-bookmark9=<string>
                                 Play playlist bookmark 9
      --key-play-bookmark9=<string>
                                 Play playlist bookmark 9
      --global-key-play-bookmark10=<string>
                                 Play playlist bookmark 10
      --key-play-bookmark10=<string>
                                 Play playlist bookmark 10
      --bookmark1=<string>       Playlist bookmark 1
      --bookmark2=<string>       Playlist bookmark 2
      --bookmark3=<string>       Playlist bookmark 3
      --bookmark4=<string>       Playlist bookmark 4
      --bookmark5=<string>       Playlist bookmark 5
      --bookmark6=<string>       Playlist bookmark 6
      --bookmark7=<string>       Playlist bookmark 7
      --bookmark8=<string>       Playlist bookmark 8
      --bookmark9=<string>       Playlist bookmark 9
      --bookmark10=<string>      Playlist bookmark 10
  -h, --help, --no-help          print help for VLC (can be combined with
                                 --advanced and --help-verbose) (default
                                 disabled)
  -H, --full-help, --no-full-help
                                 Exhaustive help for VLC and its modules
                                 (default disabled)
      --longhelp, --no-longhelp  print help for VLC and all its modules (can
                                 be combined with --advanced and
                                 --help-verbose) (default disabled)
      --help-verbose, --no-help-verbose
                                 ask for extra verbosity when displaying help
                                 (default disabled)
  -l, --list, --no-list          print a list of available modules (default
                                 disabled)
      --list-verbose, --no-list-verbose
                                 print a list of available modules with extra
                                 detail (default disabled)
  -p, --module=<string>          print help on a specific module (can be
                                 combined with --advanced and --help-verbose).
                                 Prefix the module name with = for strict
                                 matches.
      --ignore-config, --no-ignore-config
                                 no configuration option will be loaded nor
                                 saved to config file (default enabled)
      --reset-config, --no-reset-config
                                 reset the current config to the default
                                 values (default disabled)
      --reset-plugins-cache, --no-reset-plugins-cache
                                 resets the current plugins cache (default
                                 disabled)
      --version, --no-version    print version information (default disabled)
      --config=<string>          use alternate config file

To get exhaustive help, use '-H'.
|#