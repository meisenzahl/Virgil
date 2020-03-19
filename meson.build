# Initial project
project ('virgil', ['vala', 'c'], version: '0.0.1')

add_project_arguments(['--vapidir', join_paths(meson.current_source_dir(), 'vapi')], language: 'vala')

# Variables
vapi_dir = join_paths(meson.current_source_dir(), 'vapi')

# Library Dependencies
glib = dependency('glib-2.0')
gobject = dependency('gobject-2.0')

sdl2_lib = meson.get_compiler('c').find_library('SDL2')
sdl2_vapi = meson.get_compiler('vala').find_library('sdl2', dirs: vapi_dir)

sdl2gfx_lib = meson.get_compiler('c').find_library('SDL2_gfx')
sdl2gfx_vapi = meson.get_compiler('vala').find_library('sdl2-gfx', dirs: vapi_dir)

# Dependencies
lib_dependencies = [
    glib,
    gobject,
    sdl2_lib,
    sdl2_vapi,
    sdl2gfx_lib,
    sdl2gfx_vapi
]

#subdirectories
subdir('src')

executable(meson.project_name(), sources, dependencies: lib_dependencies)
