.class public Lcom/google/android/exoplayer2/PlaybackException;
.super Ljava/lang/Exception;

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/PlaybackException$ErrorCode;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/PlaybackException;",
            ">;"
        }
    .end annotation
.end field

.field public static final CUSTOM_ERROR_CODE_BASE:I = 0xf4240

.field public static final ERROR_CODE_AUDIO_TRACK_INIT_FAILED:I = 0x1389

.field public static final ERROR_CODE_AUDIO_TRACK_WRITE_FAILED:I = 0x138a

.field public static final ERROR_CODE_BEHIND_LIVE_WINDOW:I = 0x3ea

.field public static final ERROR_CODE_DECODER_INIT_FAILED:I = 0xfa1

.field public static final ERROR_CODE_DECODER_QUERY_FAILED:I = 0xfa2

.field public static final ERROR_CODE_DECODING_FAILED:I = 0xfa3

.field public static final ERROR_CODE_DECODING_FORMAT_EXCEEDS_CAPABILITIES:I = 0xfa4

.field public static final ERROR_CODE_DECODING_FORMAT_UNSUPPORTED:I = 0xfa5

.field public static final ERROR_CODE_DRM_CONTENT_ERROR:I = 0x1773

.field public static final ERROR_CODE_DRM_DEVICE_REVOKED:I = 0x1777

.field public static final ERROR_CODE_DRM_DISALLOWED_OPERATION:I = 0x1775

.field public static final ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED:I = 0x1774

.field public static final ERROR_CODE_DRM_LICENSE_EXPIRED:I = 0x1778

.field public static final ERROR_CODE_DRM_PROVISIONING_FAILED:I = 0x1772

.field public static final ERROR_CODE_DRM_SCHEME_UNSUPPORTED:I = 0x1771

.field public static final ERROR_CODE_DRM_SYSTEM_ERROR:I = 0x1776

.field public static final ERROR_CODE_DRM_UNSPECIFIED:I = 0x1770

.field public static final ERROR_CODE_FAILED_RUNTIME_CHECK:I = 0x3ec

.field public static final ERROR_CODE_IO_BAD_HTTP_STATUS:I = 0x7d4

.field public static final ERROR_CODE_IO_CLEARTEXT_NOT_PERMITTED:I = 0x7d7

.field public static final ERROR_CODE_IO_FILE_NOT_FOUND:I = 0x7d5

.field public static final ERROR_CODE_IO_INVALID_HTTP_CONTENT_TYPE:I = 0x7d3

.field public static final ERROR_CODE_IO_NETWORK_CONNECTION_FAILED:I = 0x7d1

.field public static final ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT:I = 0x7d2

.field public static final ERROR_CODE_IO_NO_PERMISSION:I = 0x7d6

.field public static final ERROR_CODE_IO_READ_POSITION_OUT_OF_RANGE:I = 0x7d8

.field public static final ERROR_CODE_IO_UNSPECIFIED:I = 0x7d0

.field public static final ERROR_CODE_PARSING_CONTAINER_MALFORMED:I = 0xbb9

.field public static final ERROR_CODE_PARSING_CONTAINER_UNSUPPORTED:I = 0xbbb

.field public static final ERROR_CODE_PARSING_MANIFEST_MALFORMED:I = 0xbba

.field public static final ERROR_CODE_PARSING_MANIFEST_UNSUPPORTED:I = 0xbbc

.field public static final ERROR_CODE_REMOTE_ERROR:I = 0x3e9

.field public static final ERROR_CODE_TIMEOUT:I = 0x3eb

.field public static final ERROR_CODE_UNSPECIFIED:I = 0x3e8

.field protected static final FIELD_CUSTOM_ID_BASE:I = 0x3e8

.field private static final FIELD_INT_ERROR_CODE:I = 0x0

.field private static final FIELD_LONG_TIMESTAMP_MS:I = 0x1

.field private static final FIELD_STRING_CAUSE_CLASS_NAME:I = 0x3

.field private static final FIELD_STRING_CAUSE_MESSAGE:I = 0x4

.field private static final FIELD_STRING_MESSAGE:I = 0x2


# instance fields
.field public final errorCode:I

.field public final timestampMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 416
    sget-object v0, Lcom/google/android/exoplayer2/-$$Lambda$_TNbpzxdf4mF--qqZ6N0idYO0xg;->INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$_TNbpzxdf4mF--qqZ6N0idYO0xg;

    sput-object v0, Lcom/google/android/exoplayer2/PlaybackException;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Bundle;)V
    .registers 9

    const/4 v0, 0x2

    .line 346
    invoke-static {v0}, Lcom/google/android/exoplayer2/PlaybackException;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-static {p1}, Lcom/google/android/exoplayer2/PlaybackException;->getCauseFromBundle(Landroid/os/Bundle;)Ljava/lang/Throwable;

    move-result-object v3

    const/4 v0, 0x0

    .line 349
    invoke-static {v0}, Lcom/google/android/exoplayer2/PlaybackException;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    .line 348
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v0, 0x1

    .line 351
    invoke-static {v0}, Lcom/google/android/exoplayer2/PlaybackException;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 350
    invoke-virtual {p1, v0, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, p0

    .line 345
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/PlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .registers 11

    .line 340
    sget-object v0, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/PlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V
    .registers 6

    .line 361
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 362
    iput p3, p0, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    .line 363
    iput-wide p4, p0, Lcom/google/android/exoplayer2/PlaybackException;->timestampMs:J

    return-void
.end method

.method private static createRemoteException(Ljava/lang/String;)Landroid/os/RemoteException;
    .registers 2

    .line 454
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0, p0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static createThrowable(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 448
    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    return-object p0
.end method

.method private static getCauseFromBundle(Landroid/os/Bundle;)Ljava/lang/Throwable;
    .registers 5

    const/4 v0, 0x3

    .line 459
    invoke-static {v0}, Lcom/google/android/exoplayer2/PlaybackException;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    .line 460
    invoke-static {v1}, Lcom/google/android/exoplayer2/PlaybackException;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 462
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_37

    const/4 v1, 0x1

    .line 464
    :try_start_1a
    const-class v3, Lcom/google/android/exoplayer2/PlaybackException;

    .line 466
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 465
    invoke-static {v0, v1, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 467
    const-class v1, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 468
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/PlaybackException;->createThrowable(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_33

    move-object v2, v0

    :cond_31
    if-nez v2, :cond_37

    .line 477
    :catchall_33
    invoke-static {p0}, Lcom/google/android/exoplayer2/PlaybackException;->createRemoteException(Ljava/lang/String;)Landroid/os/RemoteException;

    move-result-object v2

    :cond_37
    return-object v2
.end method

.method public static getErrorCodeName(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x1389

    if-eq p0, v0, :cond_85

    const/16 v0, 0x138a

    if-eq p0, v0, :cond_82

    packed-switch p0, :pswitch_data_88

    packed-switch p0, :pswitch_data_96

    packed-switch p0, :pswitch_data_ac

    packed-switch p0, :pswitch_data_b8

    packed-switch p0, :pswitch_data_c6

    const v0, 0xf4240

    if-lt p0, v0, :cond_1f

    const-string p0, "custom error code"

    return-object p0

    :cond_1f
    const-string p0, "invalid error code"

    return-object p0

    :pswitch_22
    const-string p0, "ERROR_CODE_DRM_LICENSE_EXPIRED"

    return-object p0

    :pswitch_25
    const-string p0, "ERROR_CODE_DRM_DEVICE_REVOKED"

    return-object p0

    :pswitch_28
    const-string p0, "ERROR_CODE_DRM_SYSTEM_ERROR"

    return-object p0

    :pswitch_2b
    const-string p0, "ERROR_CODE_DRM_DISALLOWED_OPERATION"

    return-object p0

    :pswitch_2e
    const-string p0, "ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED"

    return-object p0

    :pswitch_31
    const-string p0, "ERROR_CODE_DRM_CONTENT_ERROR"

    return-object p0

    :pswitch_34
    const-string p0, "ERROR_CODE_DRM_PROVISIONING_FAILED"

    return-object p0

    :pswitch_37
    const-string p0, "ERROR_CODE_DRM_SCHEME_UNSUPPORTED"

    return-object p0

    :pswitch_3a
    const-string p0, "ERROR_CODE_DRM_UNSPECIFIED"

    return-object p0

    :pswitch_3d
    const-string p0, "ERROR_CODE_DECODING_FORMAT_UNSUPPORTED"

    return-object p0

    :pswitch_40
    const-string p0, "ERROR_CODE_DECODING_FORMAT_EXCEEDS_CAPABILITIES"

    return-object p0

    :pswitch_43
    const-string p0, "ERROR_CODE_DECODING_FAILED"

    return-object p0

    :pswitch_46
    const-string p0, "ERROR_CODE_DECODER_QUERY_FAILED"

    return-object p0

    :pswitch_49
    const-string p0, "ERROR_CODE_DECODER_INIT_FAILED"

    return-object p0

    :pswitch_4c
    const-string p0, "ERROR_CODE_PARSING_MANIFEST_UNSUPPORTED"

    return-object p0

    :pswitch_4f
    const-string p0, "ERROR_CODE_PARSING_CONTAINER_UNSUPPORTED"

    return-object p0

    :pswitch_52
    const-string p0, "ERROR_CODE_PARSING_MANIFEST_MALFORMED"

    return-object p0

    :pswitch_55
    const-string p0, "ERROR_CODE_PARSING_CONTAINER_MALFORMED"

    return-object p0

    :pswitch_58
    const-string p0, "ERROR_CODE_IO_READ_POSITION_OUT_OF_RANGE"

    return-object p0

    :pswitch_5b
    const-string p0, "ERROR_CODE_IO_CLEARTEXT_NOT_PERMITTED"

    return-object p0

    :pswitch_5e
    const-string p0, "ERROR_CODE_IO_NO_PERMISSION"

    return-object p0

    :pswitch_61
    const-string p0, "ERROR_CODE_IO_FILE_NOT_FOUND"

    return-object p0

    :pswitch_64
    const-string p0, "ERROR_CODE_IO_BAD_HTTP_STATUS"

    return-object p0

    :pswitch_67
    const-string p0, "ERROR_CODE_IO_INVALID_HTTP_CONTENT_TYPE"

    return-object p0

    :pswitch_6a
    const-string p0, "ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT"

    return-object p0

    :pswitch_6d
    const-string p0, "ERROR_CODE_IO_NETWORK_CONNECTION_FAILED"

    return-object p0

    :pswitch_70
    const-string p0, "ERROR_CODE_IO_UNSPECIFIED"

    return-object p0

    :pswitch_73
    const-string p0, "ERROR_CODE_FAILED_RUNTIME_CHECK"

    return-object p0

    :pswitch_76
    const-string p0, "ERROR_CODE_TIMEOUT"

    return-object p0

    :pswitch_79
    const-string p0, "ERROR_CODE_BEHIND_LIVE_WINDOW"

    return-object p0

    :pswitch_7c
    const-string p0, "ERROR_CODE_REMOTE_ERROR"

    return-object p0

    :pswitch_7f
    const-string p0, "ERROR_CODE_UNSPECIFIED"

    return-object p0

    :cond_82
    const-string p0, "ERROR_CODE_AUDIO_TRACK_WRITE_FAILED"

    return-object p0

    :cond_85
    const-string p0, "ERROR_CODE_AUDIO_TRACK_INIT_FAILED"

    return-object p0

    :pswitch_data_88
    .packed-switch 0x3e8
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
        :pswitch_73
    .end packed-switch

    :pswitch_data_96
    .packed-switch 0x7d0
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_64
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
    .end packed-switch

    :pswitch_data_ac
    .packed-switch 0xbb9
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
    .end packed-switch

    :pswitch_data_b8
    .packed-switch 0xfa1
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
    .end packed-switch

    :pswitch_data_c6
    .packed-switch 0x1770
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
    .end packed-switch
.end method

.method protected static keyForField(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x24

    .line 441
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public errorInfoEquals(Lcom/google/android/exoplayer2/PlaybackException;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_60

    .line 377
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_60

    .line 381
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/PlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 382
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v2, :cond_3c

    if-eqz v3, :cond_3c

    .line 384
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    return v1

    .line 387
    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    return v1

    :cond_3c
    if-nez v2, :cond_60

    if-eqz v3, :cond_41

    goto :goto_60

    .line 393
    :cond_41
    iget v2, p0, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    iget v3, p1, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    if-ne v2, v3, :cond_5e

    .line 394
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/PlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    iget-wide v2, p0, Lcom/google/android/exoplayer2/PlaybackException;->timestampMs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/PlaybackException;->timestampMs:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 v0, 0x0

    :goto_5f
    return v0

    :cond_60
    :goto_60
    return v1
.end method

.method public final getErrorCodeName()Ljava/lang/String;
    .registers 2

    .line 321
    iget v0, p0, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/PlaybackException;->getErrorCodeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 5

    .line 421
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 422
    invoke-static {v1}, Lcom/google/android/exoplayer2/PlaybackException;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    .line 423
    invoke-static {v1}, Lcom/google/android/exoplayer2/PlaybackException;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/PlaybackException;->timestampMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x2

    .line 424
    invoke-static {v1}, Lcom/google/android/exoplayer2/PlaybackException;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/PlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/PlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_47

    const/4 v2, 0x3

    .line 427
    invoke-static {v2}, Lcom/google/android/exoplayer2/PlaybackException;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 428
    invoke-static {v2}, Lcom/google/android/exoplayer2/PlaybackException;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    return-object v0
.end method
