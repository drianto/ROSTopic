# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ROSTopic: 1 messages, 0 services")

set(MSG_I_FLAGS "-IROSTopic:/home/andri/ROSTopic/src/ROSTopic/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ROSTopic_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/andri/ROSTopic/src/ROSTopic/msg/topic.msg" NAME_WE)
add_custom_target(_ROSTopic_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ROSTopic" "/home/andri/ROSTopic/src/ROSTopic/msg/topic.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ROSTopic
  "/home/andri/ROSTopic/src/ROSTopic/msg/topic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ROSTopic
)

### Generating Services

### Generating Module File
_generate_module_cpp(ROSTopic
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ROSTopic
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ROSTopic_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ROSTopic_generate_messages ROSTopic_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/andri/ROSTopic/src/ROSTopic/msg/topic.msg" NAME_WE)
add_dependencies(ROSTopic_generate_messages_cpp _ROSTopic_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ROSTopic_gencpp)
add_dependencies(ROSTopic_gencpp ROSTopic_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ROSTopic_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ROSTopic
  "/home/andri/ROSTopic/src/ROSTopic/msg/topic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ROSTopic
)

### Generating Services

### Generating Module File
_generate_module_eus(ROSTopic
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ROSTopic
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ROSTopic_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ROSTopic_generate_messages ROSTopic_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/andri/ROSTopic/src/ROSTopic/msg/topic.msg" NAME_WE)
add_dependencies(ROSTopic_generate_messages_eus _ROSTopic_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ROSTopic_geneus)
add_dependencies(ROSTopic_geneus ROSTopic_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ROSTopic_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ROSTopic
  "/home/andri/ROSTopic/src/ROSTopic/msg/topic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ROSTopic
)

### Generating Services

### Generating Module File
_generate_module_lisp(ROSTopic
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ROSTopic
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ROSTopic_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ROSTopic_generate_messages ROSTopic_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/andri/ROSTopic/src/ROSTopic/msg/topic.msg" NAME_WE)
add_dependencies(ROSTopic_generate_messages_lisp _ROSTopic_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ROSTopic_genlisp)
add_dependencies(ROSTopic_genlisp ROSTopic_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ROSTopic_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ROSTopic
  "/home/andri/ROSTopic/src/ROSTopic/msg/topic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ROSTopic
)

### Generating Services

### Generating Module File
_generate_module_nodejs(ROSTopic
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ROSTopic
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ROSTopic_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ROSTopic_generate_messages ROSTopic_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/andri/ROSTopic/src/ROSTopic/msg/topic.msg" NAME_WE)
add_dependencies(ROSTopic_generate_messages_nodejs _ROSTopic_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ROSTopic_gennodejs)
add_dependencies(ROSTopic_gennodejs ROSTopic_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ROSTopic_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ROSTopic
  "/home/andri/ROSTopic/src/ROSTopic/msg/topic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ROSTopic
)

### Generating Services

### Generating Module File
_generate_module_py(ROSTopic
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ROSTopic
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ROSTopic_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ROSTopic_generate_messages ROSTopic_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/andri/ROSTopic/src/ROSTopic/msg/topic.msg" NAME_WE)
add_dependencies(ROSTopic_generate_messages_py _ROSTopic_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ROSTopic_genpy)
add_dependencies(ROSTopic_genpy ROSTopic_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ROSTopic_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ROSTopic)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ROSTopic
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ROSTopic_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ROSTopic)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ROSTopic
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ROSTopic_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ROSTopic)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ROSTopic
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ROSTopic_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ROSTopic)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ROSTopic
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ROSTopic_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ROSTopic)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ROSTopic\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ROSTopic
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ROSTopic_generate_messages_py std_msgs_generate_messages_py)
endif()
