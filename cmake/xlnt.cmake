project(xlnt)

include_directories(../include)
include_directories(../source)
include_directories(../third-party/miniz)
include_directories(../third-party/pugixml/src)

FILE(GLOB ROOT_HEADERS ../include/xlnt/*.hpp)
FILE(GLOB CELL_HEADERS ../include/xlnt/cell/*.hpp)
FILE(GLOB CHARTS_HEADERS ../include/xlnt/charts/*.hpp)
FILE(GLOB CHARTSHEET_HEADERS ../include/xlnt/chartsheet/*.hpp)
FILE(GLOB DRAWING_HEADERS ../include/xlnt/drawing/*.hpp)
FILE(GLOB FORUMULA_HEADERS ../include/xlnt/formula/*.hpp)
FILE(GLOB PACKAGING_HEADERS ../include/xlnt/packaging/*.hpp)
FILE(GLOB SERIALIZATION_HEADERS ../include/xlnt/serialization/*.hpp)
FILE(GLOB STYLES_HEADERS ../include/xlnt/styles/*.hpp)
FILE(GLOB UTILS_HEADERS ../include/xlnt/utils/*.hpp)
FILE(GLOB WORKBOOK_HEADERS ../include/xlnt/workbook/*.hpp)
FILE(GLOB WORKSHEET_HEADERS ../include/xlnt/worksheet/*.hpp)
FILE(GLOB DETAIL_HEADERS ../source/detail/*.hpp)

SET(HEADERS ${ROOT_HEADERS} ${CELL_HEADERS} ${CHARTS_HEADERS} ${CHARTSHEET_HEADERS} ${DRAWING_HEADERS} ${FORMULA_HEADERS} ${PACKAGING_HEADERS} ${SERIALIZATION_HEADERS} ${STYLES_HEADERS} ${UTILS_HEADERS} ${WORKBOOK_HEADERS} ${WORKSHEET_HEADERS} ${DETAIL_HEADERS})

FILE(GLOB CELL_SOURCES ../source/cell/*.cpp)
FILE(GLOB CHARTS_SOURCES ../source/charts/*.cpp)
FILE(GLOB CHARTSHEET_SOURCES ../source/chartsheet/*.cpp)
FILE(GLOB DRAWING_SOURCES ../source/drawing/*.cpp)
FILE(GLOB FORUMULA_SOURCES ../source/formula/*.cpp)
FILE(GLOB PACKAGING_SOURCES ../source/packaging/*.cpp)
FILE(GLOB SERIALIZATION_SOURCES ../source/serialization/*.cpp)
FILE(GLOB STYLES_SOURCES ../source/styles/*.cpp)
FILE(GLOB UTILS_SOURCES ../source/utils/*.cpp)
FILE(GLOB WORKBOOK_SOURCES ../source/workbook/*.cpp)
FILE(GLOB WORKSHEET_SOURCES ../source/worksheet/*.cpp)
FILE(GLOB DETAIL_SOURCES ../source/detail/*.cpp)

SET(SOURCES ${CELL_SOURCES} ${CHARTS_SOURCES} ${CHARTSHEET_SOURCES} ${DRAWING_SOURCES} ${FORMULA_SOURCES} ${PACKAGING_SOURCES} ${SERIALIZATION_SOURCES} ${STYLES_SOURCES} ${UTILS_SOURCES} ${WORKBOOK_SOURCES} ${WORKSHEET_SOURCES} ${DETAIL_SOURCES})

SET(MINIZ ../third-party/miniz/miniz.c ../third-party/miniz/miniz.h)

SET(PUGIXML ../third-party/pugixml/src/pugixml.hpp ../third-party/pugixml/src/pugixml.cpp ../third-party/pugixml/src/pugiconfig.hpp)

add_library(xlnt STATIC ${HEADERS} ${SOURCES} ${MINIZ} ${PUGIXML})

source_group(xlnt FILES ${ROOT_HEADERS})
source_group(detail FILES ${DETAIL_HEADERS} ${DETAIL_SOURCES})
source_group(cell FILES ${CELL_HEADERS} ${CELL_SOURCES})
source_group(charts FILES ${CHARTS_HEADERS} ${CHARTS_SOURCES})
source_group(chartsheet FILES ${CHARTSHEET_HEADERS} ${CHARTSHEET_SOURCES})
source_group(drawing FILES ${DRAWING_HEADERS} ${DRAWING_SOURCES})
source_group(formula FILES ${FORUMULA_HEADERS} ${FORUMULA_SOURCES})
source_group(packaging FILES ${PACKAGING_HEADERS} ${PACKAGING_SOURCES})
source_group(serialization FILES ${SERIALIZATION_HEADERS} ${SERIALIZATION_SOURCES})
source_group(styles FILES ${STYLES_HEADERS} ${STYLES_SOURCES})
source_group(utils FILES ${UTILS_HEADERS} ${UTILS_SOURCES})
source_group(workbook FILES ${WORKBOOK_HEADERS} ${WORKBOOK_SOURCES})
source_group(worksheet FILES ${WORKSHEET_HEADERS} ${WORKSHEET_SOURCES})
source_group(third-party\\miniz FILES ${MINIZ})
source_group(third-party\\pugixml FILES ${PUGIXML})
