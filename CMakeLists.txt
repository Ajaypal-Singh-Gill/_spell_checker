cmake_minimum_required(VERSION 3.7)

project(spell_checker)

SET(CMAKE_INCLUDE_PATH ${CMAKE_INCLUDE_PATH} "/opt/homebrew/Cellar/boost/1.76.0/include/boost")
SET(CMAKE_LIBRARY_PATH ${CMAKE_LIBRARY_PATH} "/opt/homebrew/Cellar/boost/1.76.0/lib")

set(CMAKE_CXX_STANDARD 11)
set(THREADS_PREFER_PTHREAD_FLAG ON)

find_package(Boost COMPONENTS system filesystem REQUIRED)
find_package(Threads)

include_directories(${Boost_INCLUDE_DIRS})
add_executable(spell_checker main.cpp)
target_link_libraries(spell_checker ${Boost_LIBRARIES} Threads::Threads)
