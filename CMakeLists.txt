cmake_minimum_required(VERSION 3.8.2)
PROJECT(PICSL_MALF)

FIND_PACKAGE(ITK REQUIRED)
INCLUDE(${ITK_USE_FILE})

ADD_EXECUTABLE(jointfusion ./JointFusion/LabelFusion.cxx)
ADD_EXECUTABLE(sa ./CorrectiveLearning/segAdapter.cxx)
ADD_EXECUTABLE(bl ./CorrectiveLearning/BiasLearn.cxx)

TARGET_LINK_LIBRARIES(jointfusion ${ITK_LIBRARIES}) 
TARGET_LINK_LIBRARIES(sa ${ITK_LIBRARIES})
TARGET_LINK_LIBRARIES(bl ${ITK_LIBRARIES})
