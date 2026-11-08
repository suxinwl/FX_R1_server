# tools/ —— 构建工具链（不随包提供，自己放）

两个构建脚本会在这一层找工具链。按下面的文件名放进去就能直接构建；
也可以不放这里，改用环境变量 `R1_TOOLS=<某个目录>` 指向别处。

```
tools/
├─ jdk/                 JDK 17 解压后的根目录（下面要有 bin/javac.exe、bin/java.exe）
├─ android.jar          Android SDK 的 android.jar（API 21 以上都行，原作者用 API 33 那份）
├─ r8.jar               R8/D8，来自 Android SDK build-tools
└─ smali/
   ├─ smali-2.5.2.jar
   ├─ baksmali-2.5.2.jar
   ├─ dexlib2-2.5.2.jar
   ├─ util-2.5.2.jar
   ├─ guava-25.1-android.jar
   ├─ jcommander-1.72.jar
   ├─ commons-cli-1.4.jar
   └─ antlr-runtime-3.5.2.jar
```

**版本不能随便换**：smali/baksmali 固定 2.5.2（脚本里 `BCP`/`SCP` 写死了这几个文件名），
JDK 固定 17（`-source 8 -target 8` 编译，JDK 21 起对 `-source 8` 已有告警、路径行为也有差异）。

怎么拿到这些文件，见 `../环境说明.md`。放好后跑一次 `bash ../build_check.sh` 自检。
