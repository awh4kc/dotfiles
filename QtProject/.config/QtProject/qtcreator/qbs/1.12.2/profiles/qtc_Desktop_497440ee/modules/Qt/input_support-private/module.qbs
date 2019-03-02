import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "InputSupport"
    Depends { name: "Qt"; submodules: ["core-private", "gui-private", "devicediscovery_support-private"]}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["ts", "GL", "mtdev", "input", "xkbcommon"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5InputSupport"
    libNameForLinkerRelease: "Qt5InputSupport"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5InputSupport.a"
    cpp.defines: ["QT_INPUT_SUPPORT_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtInputSupport", "/usr/include/qt/QtInputSupport/5.12.0", "/usr/include/qt/QtInputSupport/5.12.0/QtInputSupport"]
    cpp.libraryPaths: []
    isStaticLibrary: true
Group {
        files: [Qt["input_support-private"].libFilePath]
        filesAreTargets: true
        fileTags: ["staticlibrary"]
    }
}
