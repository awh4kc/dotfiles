import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "EventDispatcherSupport"
    Depends { name: "Qt"; submodules: ["core-private", "gui-private"]}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["GL", "gthread-2.0", "glib-2.0"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5EventDispatcherSupport"
    libNameForLinkerRelease: "Qt5EventDispatcherSupport"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5EventDispatcherSupport.a"
    cpp.defines: ["QT_EVENTDISPATCHER_SUPPORT_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtEventDispatcherSupport", "/usr/include/qt/QtEventDispatcherSupport/5.12.0", "/usr/include/qt/QtEventDispatcherSupport/5.12.0/QtEventDispatcherSupport"]
    cpp.libraryPaths: []
    isStaticLibrary: true
Group {
        files: [Qt["eventdispatcher_support-private"].libFilePath]
        filesAreTargets: true
        fileTags: ["staticlibrary"]
    }
}
