.class public Lcom/xiaofei/server;
.super Ljava/lang/Object;


# direct methods
# 桩：小飞的 MultiExoPlayer 只用到这两个静态方法。
# exists_FLAC 返回 false ⇒ 不注册 FLAC 解码器（我们没有 libflacJNI.so 的装载路径）。
.method public static exists_FLAC()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static get_unisound_SharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    const-string v0, "unisound"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
