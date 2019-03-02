import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "EglFsKmsSupport"
    Depends { name: "Qt"; submodules: ["core", "gui"]}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/usr/lib/libQt5EglFSDeviceIntegration.so.5.12.0", "/usr/lib/libQt5EventDispatcherSupport.a", "gthread-2.0", "glib-2.0", "/usr/lib/libQt5ServiceSupport.a", "/usr/lib/libQt5ThemeSupport.a", "/usr/lib/libQt5FontDatabaseSupport.a", "fontconfig", "freetype", "/usr/lib/libQt5FbSupport.a", "/usr/lib/libQt5EglSupport.a", "Xext", "X11", "m", "EGL", "/usr/lib/libQt5InputSupport.a", "mtdev", "input", "xkbcommon", "/usr/lib/libQt5PlatformCompositorSupport.a", "/usr/lib/libQt5KmsSupport.a", "GL", "/usr/lib/libQt5DeviceDiscoverySupport.a", "udev", "/usr/lib/libQt5EdidSupport.a", "/usr/lib/libQt5DBus.so.5.12.0", "drm", "dl", "ts"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5EglFsKmsSupport"
    libNameForLinkerRelease: "Qt5EglFsKmsSupport"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5EglFsKmsSupport.so.5.12.0"
    cpp.defines: ["QT_EGLFS_KMS_SUPPORT_LIB"]
    cpp.includePaths: []
    cpp.libraryPaths: []
    Group {
        files: [Qt["eglfs_kms_support-private"].libFilePath]
        filesAreTargets: true
        fileTags: ["dynamiclibrary"]
    }
}
