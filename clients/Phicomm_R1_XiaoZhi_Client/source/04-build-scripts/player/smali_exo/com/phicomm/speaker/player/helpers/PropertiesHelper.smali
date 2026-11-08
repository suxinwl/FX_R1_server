.class public Lcom/phicomm/speaker/player/helpers/PropertiesHelper;
.super Ljava/lang/Object;
.source "PropertiesHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/phicomm/speaker/player/helpers/PropertiesHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/helpers/PropertiesHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readProperties(Ljava/lang/String;)V
    .registers 10
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 56
    .local v6, "props":Ljava/util/Properties;
    const/4 v3, 0x0

    .line 58
    .local v3, "in":Ljava/io/InputStream;
    :try_start_6
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_6a
    .catchall {:try_start_6 .. :try_end_10} :catchall_5b

    .line 59
    .end local v3    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    :try_start_10
    invoke-virtual {v6, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 60
    invoke-virtual {v6}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v2

    .line 61
    .local v2, "en":Ljava/util/Enumeration;
    :goto_17
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_49

    .line 62
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 63
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "Property":Ljava/lang/String;
    sget-object v7, Lcom/phicomm/speaker/player/helpers/PropertiesHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3d} :catch_3e
    .catchall {:try_start_10 .. :try_end_3d} :catchall_67

    goto :goto_17

    .line 66
    .end local v0    # "Property":Ljava/lang/String;
    .end local v2    # "en":Ljava/util/Enumeration;
    .end local v5    # "key":Ljava/lang/String;
    :catch_3e
    move-exception v1

    move-object v3, v4

    .line 67
    .end local v4    # "in":Ljava/io/InputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "in":Ljava/io/InputStream;
    :goto_40
    :try_start_40
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_5b

    .line 69
    if-eqz v3, :cond_48

    .line 71
    :try_start_45
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_56

    .line 77
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_48
    :goto_48
    return-void

    .line 69
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "en":Ljava/util/Enumeration;
    .restart local v4    # "in":Ljava/io/InputStream;
    :cond_49
    if-eqz v4, :cond_6c

    .line 71
    :try_start_4b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_50

    move-object v3, v4

    .line 74
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_48

    .line 72
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_50
    move-exception v1

    .line 73
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 74
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_48

    .line 72
    .end local v2    # "en":Ljava/util/Enumeration;
    .local v1, "e":Ljava/lang/Exception;
    :catch_56
    move-exception v1

    .line 73
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_48

    .line 69
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_5b
    move-exception v7

    :goto_5c
    if-eqz v3, :cond_61

    .line 71
    :try_start_5e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    .line 74
    :cond_61
    :goto_61
    throw v7

    .line 72
    :catch_62
    move-exception v1

    .line 73
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_61

    .line 69
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catchall_67
    move-exception v7

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_5c

    .line 66
    :catch_6a
    move-exception v1

    goto :goto_40

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "en":Ljava/util/Enumeration;
    .restart local v4    # "in":Ljava/io/InputStream;
    :cond_6c
    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_48
.end method

.method public static readValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 26
    .local v4, "props":Ljava/util/Properties;
    const/4 v1, 0x0

    .line 27
    .local v1, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 29
    .local v3, "isr":Ljava/io/InputStreamReader;
    :try_start_7
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_5e
    .catchall {:try_start_7 .. :try_end_11} :catchall_6f

    .line 31
    .end local v1    # "in":Ljava/io/InputStream;
    .local v2, "in":Ljava/io/InputStream;
    if-nez v2, :cond_21

    .line 32
    :try_start_13
    const-string v5, ""
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_15} :catch_7e
    .catchall {:try_start_13 .. :try_end_15} :catchall_7b

    .line 43
    if-eqz v2, :cond_1a

    .line 45
    :try_start_17
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1c

    :cond_1a
    :goto_1a
    move-object v1, v2

    .line 48
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    :cond_1b
    :goto_1b
    return-object v5

    .line 46
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :catch_1c
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a

    .line 35
    .end local v0    # "e":Ljava/io/IOException;
    :cond_21
    :try_start_21
    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 36
    const-string v6, ""

    invoke-virtual {v4, p1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 37
    .local v5, "value":Ljava/lang/String;
    sget-object v6, Lcom/phicomm/speaker/player/helpers/PropertiesHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "value:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_52} :catch_7e
    .catchall {:try_start_21 .. :try_end_52} :catchall_7b

    .line 43
    if-eqz v2, :cond_57

    .line 45
    :try_start_54
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_59

    :cond_57
    :goto_57
    move-object v1, v2

    .line 48
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    goto :goto_1b

    .line 46
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :catch_59
    move-exception v0

    .line 47
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_57

    .line 39
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v5    # "value":Ljava/lang/String;
    .restart local v1    # "in":Ljava/io/InputStream;
    :catch_5e
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    :goto_5f
    :try_start_5f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    const-string v5, ""
    :try_end_64
    .catchall {:try_start_5f .. :try_end_64} :catchall_6f

    .line 43
    if-eqz v1, :cond_1b

    .line 45
    :try_start_66
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_1b

    .line 46
    :catch_6a
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b

    .line 43
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_6f
    move-exception v6

    :goto_70
    if-eqz v1, :cond_75

    .line 45
    :try_start_72
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    .line 48
    :cond_75
    :goto_75
    throw v6

    .line 46
    :catch_76
    move-exception v0

    .line 47
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_75

    .line 43
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :catchall_7b
    move-exception v6

    move-object v1, v2

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    goto :goto_70

    .line 39
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :catch_7e
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "in":Ljava/io/InputStream;
    goto :goto_5f
.end method

.method public static writeProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "parameterValue"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 82
    .local v6, "prop":Ljava/util/Properties;
    const/4 v2, 0x0

    .line 83
    .local v2, "fis":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 85
    .local v4, "fos":Ljava/io/OutputStream;
    :try_start_7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_15

    .line 87
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 89
    :cond_15
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1a} :catch_5d
    .catchall {:try_start_7 .. :try_end_1a} :catchall_9b

    .line 91
    .end local v2    # "fis":Ljava/io/InputStream;
    .local v3, "fis":Ljava/io/InputStream;
    :try_start_1a
    invoke-virtual {v6, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 94
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_22} :catch_b8
    .catchall {:try_start_1a .. :try_end_22} :catchall_b1

    .line 95
    .end local v4    # "fos":Ljava/io/OutputStream;
    .local v5, "fos":Ljava/io/OutputStream;
    :try_start_22
    invoke-virtual {v6, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Update \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' value"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_44} :catch_bb
    .catchall {:try_start_22 .. :try_end_44} :catchall_b4

    .line 103
    if-eqz v3, :cond_49

    .line 105
    :try_start_46
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_51

    .line 110
    :cond_49
    :goto_49
    if-eqz v5, :cond_bf

    .line 112
    :try_start_4b
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_56

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    move-object v2, v3

    .line 118
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fis":Ljava/io/InputStream;
    .restart local v2    # "fis":Ljava/io/InputStream;
    :cond_50
    :goto_50
    return-void

    .line 106
    .end local v2    # "fis":Ljava/io/InputStream;
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fis":Ljava/io/InputStream;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catch_51
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49

    .line 113
    .end local v0    # "e":Ljava/io/IOException;
    :catch_56
    move-exception v0

    .line 114
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    move-object v2, v3

    .line 115
    .end local v3    # "fis":Ljava/io/InputStream;
    .restart local v2    # "fis":Ljava/io/InputStream;
    goto :goto_50

    .line 100
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    :catch_5d
    move-exception v0

    .line 101
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_5e
    :try_start_5e
    sget-object v7, Lcom/phicomm/speaker/player/helpers/PropertiesHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Visit "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for updating "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " value error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_5e .. :try_end_86} :catchall_9b

    .line 103
    if-eqz v2, :cond_8b

    .line 105
    :try_start_88
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_96

    .line 110
    :cond_8b
    :goto_8b
    if-eqz v4, :cond_50

    .line 112
    :try_start_8d
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_91

    goto :goto_50

    .line 113
    :catch_91
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_50

    .line 106
    :catch_96
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8b

    .line 103
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_9b
    move-exception v7

    :goto_9c
    if-eqz v2, :cond_a1

    .line 105
    :try_start_9e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_a7

    .line 110
    :cond_a1
    :goto_a1
    if-eqz v4, :cond_a6

    .line 112
    :try_start_a3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_ac

    .line 115
    :cond_a6
    :goto_a6
    throw v7

    .line 106
    :catch_a7
    move-exception v0

    .line 107
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a1

    .line 113
    .end local v0    # "e":Ljava/io/IOException;
    :catch_ac
    move-exception v0

    .line 114
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a6

    .line 103
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/InputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fis":Ljava/io/InputStream;
    :catchall_b1
    move-exception v7

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/InputStream;
    .restart local v2    # "fis":Ljava/io/InputStream;
    goto :goto_9c

    .end local v2    # "fis":Ljava/io/InputStream;
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fis":Ljava/io/InputStream;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catchall_b4
    move-exception v7

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/InputStream;
    .restart local v2    # "fis":Ljava/io/InputStream;
    goto :goto_9c

    .line 100
    .end local v2    # "fis":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/InputStream;
    :catch_b8
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/InputStream;
    .restart local v2    # "fis":Ljava/io/InputStream;
    goto :goto_5e

    .end local v2    # "fis":Ljava/io/InputStream;
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fis":Ljava/io/InputStream;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catch_bb
    move-exception v0

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/InputStream;
    .restart local v2    # "fis":Ljava/io/InputStream;
    goto :goto_5e

    .end local v2    # "fis":Ljava/io/InputStream;
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fis":Ljava/io/InputStream;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :cond_bf
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/InputStream;
    .restart local v2    # "fis":Ljava/io/InputStream;
    goto :goto_50
.end method
