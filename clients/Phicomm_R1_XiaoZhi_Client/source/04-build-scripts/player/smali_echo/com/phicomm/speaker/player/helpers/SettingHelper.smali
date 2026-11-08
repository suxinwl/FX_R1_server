.class public Lcom/phicomm/speaker/player/helpers/SettingHelper;
.super Ljava/lang/Object;
.source "SettingHelper.java"


# static fields
.field private static final ECHO_SCENE_FOR_INTERRUPT:Ljava/lang/String; = "echo_scene_for_interrupt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceState(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_11

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "echo_scene_for_interrupt"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 27
    :cond_11
    return v0
.end method

.method public static setDeviceState(Landroid/content/Context;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # I

    .prologue
    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_f

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "echo_scene_for_interrupt"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 21
    :cond_f
    return-void
.end method
