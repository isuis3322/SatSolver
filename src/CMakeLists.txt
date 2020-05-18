# Generic test that uses conan libs
add_executable(sat_solver main.cpp)
target_link_libraries(
  sat_solver PRIVATE project_options project_warnings CONAN_PKG::docopt.cpp
                CONAN_PKG::fmt CONAN_PKG::spdlog)
