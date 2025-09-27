cmake_minimum_required(VERSION 3.16)

project(untitled VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appuntitled
    main.cpp
)

qt_add_qml_module(appuntitled
    URI untitled
    VERSION 1.0
    QML_FILES
        Main.qml
    RESOURCES
        "src/images/right panel.png"
        "src/images/bgImg.jpg"
        #buttons
        "src/buttons/button-icon-clicked.svg"
        "src/buttons/button-icon-default.svg"
        "src/buttons/button-icon-hover.svg"

        "src/buttons/button-lg-clicked.svg"
        "src/buttons/button-lg-default.svg"
        "src/buttons/button-lg-hover.svg"

        "src/buttons/button-md-clicked.svg"
        "src/buttons/button-md-default.svg"
        "src/buttons/button-md-hover.svg"

        "src/buttons/button-sm-clicked.svg"
        "src/buttons/button-sm-default.svg"
        "src/buttons/button-sm-hover.svg"

        "src/buttons/button-icon-clicked.png"
        "src/buttons/button-icon-default.png"
        "src/buttons/button-icon-hover.png"

        "src/buttons/button-lg-clicked.png"
        "src/buttons/button-lg-default.png"
        "src/buttons/button-lg-hover.png"

        "src/buttons/button-md-clicked.png"
        "src/buttons/button-md-default.png"
        "src/buttons/button-md-hover.png"

        "src/buttons/button-sm-clicked.png"
        "src/buttons/button-sm-default.png"
        "src/buttons/button-sm-hover.png"
    RESOURCE_PREFIX /
    QML_FILES Poly_button.qml
    QML_FILES Buttons.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appuntitled PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appuntitled
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appuntitled
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appuntitled
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
