project ('vgl_test', ['vala', 'c'], version: '0.0.1')

add_project_arguments(['--vapidir', join_paths(meson.current_source_dir(), 'vapi')], language: 'vala')

glib = dependency('glib-2.0')
gobject = dependency('gobject-2.0')

sdl2_lib = meson.get_compiler('c').find_library('SDL2')
sdl2_vapi = meson.get_compiler('vala').find_library('sdl2', dirs: join_paths(meson.current_source_dir(), 'vapi'))
sdl2_dep = declare_dependency(dependencies: [ sdl2_lib, sdl2_vapi])


sdl2gfx_lib = meson.get_compiler('c').find_library('SDL2_gfx')
sdl2gfx_vapi = meson.get_compiler('vala').find_library('sdl2-gfx', dirs: join_paths(meson.current_source_dir(), 'vapi'))
sdl2gfx_dep = declare_dependency(dependencies: [ sdl2gfx_lib, sdl2gfx_vapi])

subdir('src')

executable('vgl_test', sources, dependencies: [glib, gobject, sdl2_dep, sdl2gfx_dep])