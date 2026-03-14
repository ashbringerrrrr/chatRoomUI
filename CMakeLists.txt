cmake_minimum_required(VERSION 3.16)

project(chatRoomUI VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

find_package(Qt5 REQUIRED COMPONENTS Core Gui Qml Quick)
find_package(Boost REQUIRED COMPONENTS system)

set(PROJECT_SOURCES
    src/main.cpp
    src/core/AuthService.cpp
    src/core/AuthService.h
    src/viewmodel/LoginViewModel.cpp
    src/viewmodel/LoginViewModel.h
)

set (RESOURCE_FILES
    src/ui/resources.qrc
)

add_executable(${PROJECT_NAME}
    ${PROJECT_SOURCES}
    ${RESOURCE_FILES}
)

target_link_libraries(${PROJECT_NAME}
    PRIVATE Qt5::Core Qt5::Gui Qt5::Qml Qt5::Quick Boost::system
)

target_link_directories(${PROJECT_NAME} PRIVATE ${CMAKE_SOURCE_DIR}/src)
