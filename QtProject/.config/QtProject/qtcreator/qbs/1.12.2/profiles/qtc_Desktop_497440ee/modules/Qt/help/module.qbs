import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Help"
    Depends { name: "Qt"; submodules: ["core", "gui", "widgets", "sql"]}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5Help"
    libNameForLinkerRelease: "Qt5Help"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5Help.so.5.12.0"
    cpp.defines: ["QT_HELP_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtHelp"]
    cpp.libraryPaths: []
    Group {
        files: [Qt["help"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}