.class public final Lcom/google/android/exoplayer2/util/RepeatModeUtil;
.super Ljava/lang/Object;
.source "RepeatModeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/RepeatModeUtil$RepeatToggleModes;
    }
.end annotation


# static fields
.field public static final REPEAT_TOGGLE_MODE_ALL:I = 0x2

.field public static final REPEAT_TOGGLE_MODE_NONE:I = 0x0

.field public static final REPEAT_TOGGLE_MODE_ONE:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static getNextRepeatMode(II)I
    .registers 5
    .param p0, "currentMode"    # I
    .param p1, "enabledModes"    # I

    .prologue
    .line 61
    const/4 v0, 0x1

    .local v0, "offset":I
    :goto_1
    const/4 v2, 0x2

    if-gt v0, v2, :cond_12

    .line 62
    add-int v2, p0, v0

    rem-int/lit8 v1, v2, 0x3

    .line 63
    .local v1, "proposedMode":I
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/RepeatModeUtil;->isRepeatModeEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 67
    .end local v1    # "proposedMode":I
    :goto_e
    return v1

    .line 61
    .restart local v1    # "proposedMode":I
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "proposedMode":I
    :cond_12
    move v1, p0

    .line 67
    goto :goto_e
.end method

.method public static isRepeatModeEnabled(II)Z
    .registers 5
    .param p0, "repeatMode"    # I
    .param p1, "enabledModes"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    packed-switch p0, :pswitch_data_14

    move v0, v1

    .line 86
    :cond_6
    :goto_6
    :pswitch_6
    return v0

    .line 82
    :pswitch_7
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_6

    .line 84
    :pswitch_d
    and-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_6

    move v0, v1

    goto :goto_6

    .line 78
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_d
    .end packed-switch
.end method
