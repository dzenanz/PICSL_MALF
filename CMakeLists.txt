cmake_minimum_required(VERSION 2.6)
# This project is designed to be built outside the Insight source tree.
PROJECT(PICSL_MALF)

# Find ITK.
FIND_PACKAGE(ITK)
IF(ITK_FOUND)
  INCLUDE(${ITK_USE_FILE})
ELSE(ITK_FOUND)
  MESSAGE(FATAL_ERROR
          "Cannot build without ITK.  Please set ITK_DIR.")
ENDIF(ITK_FOUND)

ADD_EXECUTABLE(jointfusion ./JointFusion/LabelFusion.cxx)
ADD_EXECUTABLE(sa ./CorrectiveLearning/segAdapter.cxx)
ADD_EXECUTABLE(bl ./CorrectiveLearning/BiasLearn.cxx)

TARGET_LINK_LIBRARIES(jointfusion ITKNumerics ITKIO ITKStatistics) 
TARGET_LINK_LIBRARIES(sa ITKNumerics ITKIO ITKStatistics)
TARGET_LINK_LIBRARIES(bl ITKNumerics ITKIO ITKStatistics)

