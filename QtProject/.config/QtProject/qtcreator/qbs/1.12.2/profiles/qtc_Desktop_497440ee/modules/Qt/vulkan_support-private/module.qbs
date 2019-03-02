import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "VulkanSupport"
    Depends { name: "Qt"; submodules: ["core-private", "gui-private"]}

    architectures: ["x86_64"]
    targetPlatform: "linux"
    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["GL"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5VulkanSupport"
    libNameForLinkerRelease: "Qt5VulkanSupport"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5VulkanSupport.a"
    cpp.defines: ["QT_VULKAN_SUPPORT_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtVulkanSupport", "/usr/include/qt/QtVulkanSupport/5.12.0", "/usr/include/qt/QtVulkanSupport/5.12.0/QtVulkanSupport"]
    cpp.libraryPaths: []
    isStaticLibrary: true
Group {
        files: [Qt["vulkan_support-private"].libFilePath]
        filesAreTargets: true
        fileTags: ["staticlibrary"]
    }
}
