.class public final Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/drm/ExoMediaDrm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$Api31;
    }
.end annotation


# static fields
.field private static final CENC_SCHEME_MIME_TYPE:Ljava/lang/String; = "cenc"

.field public static final DEFAULT_PROVIDER:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;

.field private static final MOCK_LA_URL:Ljava/lang/String; = "<LA_URL>https://x</LA_URL>"

.field private static final MOCK_LA_URL_VALUE:Ljava/lang/String; = "https://x"

.field private static final TAG:Ljava/lang/String; = "FrameworkMediaDrm"

.field private static final UTF_16_BYTES_PER_CHARACTER:I = 0x2


# instance fields
.field private final mediaDrm:Landroid/media/MediaDrm;

.field private referenceCount:I

.field private final uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 63
    sget-object v0, Lcom/google/android/exoplayer2/drm/-$$Lambda$FrameworkMediaDrm$-fyEvj-dXZtw4JXHhoyBbC_yZqs;->INSTANCE:Lcom/google/android/exoplayer2/drm/-$$Lambda$FrameworkMediaDrm$-fyEvj-dXZtw4JXHhoyBbC_yZqs;

    sput-object v0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->DEFAULT_PROVIDER:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;

    return-void
.end method

.method private constructor <init>(Ljava/util/UUID;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/google/android/exoplayer2/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Use C.CLEARKEY_UUID instead"

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 112
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    .line 113
    new-instance v0, Landroid/media/MediaDrm;

    invoke-static {p1}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->adjustUuid(Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    .line 115
    iput v1, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->referenceCount:I

    .line 116
    sget-object v0, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    invoke-static {}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->needsForceWidevineL3Workaround()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 117
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-static {p1}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->forceWidevineL3(Landroid/media/MediaDrm;)V

    :cond_35
    return-void
.end method

.method private static addLaUrlAttributeIfMissing([B)[B
    .registers 8

    .line 482
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 485
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v1

    .line 486
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v2

    .line 487
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v3

    const-string v4, "FrameworkMediaDrm"

    const/4 v5, 0x1

    if-ne v2, v5, :cond_85

    if-eq v3, v5, :cond_19

    goto :goto_85

    .line 492
    :cond_19
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v5

    .line 493
    sget-object v6, Lcom/google/common/base/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v5, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "<LA_URL>"

    .line 494
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2c

    return-object p0

    :cond_2c
    const-string p0, "</DATA>"

    .line 499
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v5, -0x1

    if-ne p0, v5, :cond_3a

    const-string v5, "Could not find the </DATA> tag. Skipping LA_URL workaround."

    .line 501
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :cond_3a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    .line 504
    invoke-virtual {v0, v5, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<LA_URL>https://x</LA_URL>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v1, 0x34

    .line 508
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 509
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 510
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    int-to-short v1, v2

    .line 511
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    int-to-short v1, v3

    .line 512
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 513
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 514
    sget-object v1, Lcom/google/common/base/Charsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 515
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    :cond_85
    :goto_85
    const-string v0, "Unexpected record count or type. Skipping LA_URL workaround."

    .line 489
    invoke-static {v4, v0}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static adjustRequestData(Ljava/util/UUID;[B)[B
    .registers 3

    .line 456
    sget-object v0, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 457
    invoke-static {p1}, Lcom/google/android/exoplayer2/drm/ClearKeyUtil;->adjustRequestData([B)[B

    move-result-object p0

    return-object p0

    :cond_d
    return-object p1
.end method

.method private static adjustRequestInitData(Ljava/util/UUID;[B)[B
    .registers 4

    .line 411
    sget-object v0, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 412
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->parseSchemeSpecificData([BLjava/util/UUID;)[B

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_10

    :cond_f
    move-object p1, v0

    .line 417
    :goto_10
    sget-object v0, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 419
    invoke-static {p1}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->addLaUrlAttributeIfMissing([B)[B

    move-result-object p1

    .line 418
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[B)[B

    move-result-object p1

    .line 429
    :cond_1a
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_28

    sget-object v0, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    :cond_28
    sget-object v0, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 430
    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    .line 431
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "AFTB"

    .line 432
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "AFTS"

    .line 433
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "AFTM"

    .line 434
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "AFTT"

    .line 435
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 436
    :cond_62
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->parseSchemeSpecificData([BLjava/util/UUID;)[B

    move-result-object p0

    if-eqz p0, :cond_69

    return-object p0

    :cond_69
    return-object p1
.end method

.method private static adjustRequestMimeType(Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 447
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_21

    sget-object v0, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    .line 448
    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    const-string p0, "video/mp4"

    .line 449
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    const-string p0, "audio/mp4"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    :cond_1e
    const-string p0, "cenc"

    return-object p0

    :cond_21
    return-object p1
.end method

.method private static adjustUuid(Ljava/util/UUID;)Ljava/util/UUID;
    .registers 3

    .line 406
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1b

    if-ge v0, v1, :cond_10

    sget-object v0, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object p0, Lcom/google/android/exoplayer2/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    :cond_10
    return-object p0
.end method

.method private static forceWidevineL3(Landroid/media/MediaDrm;)V
    .registers 3

    const-string v0, "securityLevel"

    const-string v1, "L3"

    .line 463
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getSchemeData(Ljava/util/UUID;Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;"
        }
    .end annotation

    .line 351
    sget-object v0, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_10

    .line 353
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    return-object p0

    .line 356
    :cond_10
    sget p0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x1

    if-lt p0, v1, :cond_82

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v2, :cond_82

    .line 358
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 361
    :goto_25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5a

    .line 362
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 363
    iget-object v5, v4, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 364
    iget-object v6, v4, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    iget-object v4, v4, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 365
    invoke-static {v4, v6}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 366
    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->isPsshAtom([B)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 367
    array-length v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_58
    const/4 v1, 0x0

    goto :goto_5b

    :cond_5a
    const/4 v1, 0x1

    :goto_5b
    if-eqz v1, :cond_82

    .line 374
    new-array v1, v3, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 376
    :goto_61
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_7d

    .line 377
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 378
    iget-object v4, v4, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 379
    array-length v5, v4

    .line 380
    invoke-static {v4, v0, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    .line 384
    :cond_7d
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->copyWithData([B)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object p0

    return-object p0

    :cond_82
    const/4 p0, 0x0

    .line 390
    :goto_83
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_ae

    .line 391
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 392
    iget-object v3, v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->parseVersion([B)I

    move-result v3

    .line 393
    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_a4

    if-nez v3, :cond_a4

    return-object v1

    .line 395
    :cond_a4
    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v4, v5, :cond_ab

    if-ne v3, v2, :cond_ab

    return-object v1

    :cond_ab
    add-int/lit8 p0, p0, 0x1

    goto :goto_83

    .line 401
    :cond_ae
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    return-object p0
.end method

.method public static isCryptoSchemeSupported(Ljava/util/UUID;)Z
    .registers 1

    .line 88
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->adjustUuid(Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object p0

    invoke-static {p0}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$static$0(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/ExoMediaDrm;
    .registers 3

    .line 66
    :try_start_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->newInstance(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    move-result-object p0
    :try_end_4
    .catch Lcom/google/android/exoplayer2/drm/UnsupportedDrmException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 68
    :catch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to instantiate a FrameworkMediaDrm for uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FrameworkMediaDrm"

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance p0, Lcom/google/android/exoplayer2/drm/DummyExoMediaDrm;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DummyExoMediaDrm;-><init>()V

    return-object p0
.end method

.method private static needsForceWidevineL3Workaround()Z
    .registers 2

    .line 472
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "ASUS_Z00AD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static newInstance(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;
        }
    .end annotation

    .line 101
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;-><init>(Ljava/util/UUID;)V
    :try_end_5
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_5} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception p0

    .line 105
    new-instance v0, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;-><init>(ILjava/lang/Exception;)V

    throw v0

    :catch_e
    move-exception p0

    .line 103
    new-instance v0, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;-><init>(ILjava/lang/Exception;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized acquire()V
    .registers 3

    monitor-enter p0

    .line 288
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->referenceCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 289
    iget v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->referenceCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->referenceCount:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 290
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public closeSession([B)V
    .registers 3

    .line 186
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->closeSession([B)V

    return-void
.end method

.method public bridge synthetic createCryptoConfig([B)Lcom/google/android/exoplayer2/decoder/CryptoConfig;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->createCryptoConfig([B)Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;

    move-result-object p1

    return-object p1
.end method

.method public createCryptoConfig([B)Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation

    .line 337
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_20

    sget-object v0, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    .line 339
    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "securityLevel"

    .line 340
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "L3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 341
    :goto_21
    new-instance v1, Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    .line 342
    invoke-static {v2}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->adjustUuid(Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lcom/google/android/exoplayer2/drm/FrameworkCryptoConfig;-><init>(Ljava/util/UUID;[BZ)V

    return-object v1
.end method

.method public getCryptoType()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public getKeyRequest([BLjava/util/List;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_22

    .line 213
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->getSchemeData(Ljava/util/UUID;Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v0

    .line 214
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    iget-object v1, v0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {p2, v1}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->adjustRequestInitData(Ljava/util/UUID;[B)[B

    move-result-object p2

    .line 215
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    iget-object v2, v0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->adjustRequestMimeType(Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, p2

    move-object v5, v1

    goto :goto_24

    :cond_22
    move-object v4, v0

    move-object v5, v4

    .line 217
    :goto_24
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    move-object v3, p1

    move v6, p3

    move-object v7, p4

    .line 218
    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p1

    .line 220
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-virtual {p1}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object p3

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->adjustRequestData(Ljava/util/UUID;[B)[B

    move-result-object p2

    .line 222
    invoke-virtual {p1}, Landroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object p3

    const-string p4, "https://x"

    .line 223
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_45

    const-string p3, ""

    .line 226
    :cond_45
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_57

    if-eqz v0, :cond_57

    iget-object p4, v0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 228
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_57

    .line 229
    iget-object p3, v0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 233
    :cond_57
    sget p4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p4, v0, :cond_62

    .line 234
    invoke-virtual {p1}, Landroid/media/MediaDrm$KeyRequest;->getRequestType()I

    move-result p1

    goto :goto_64

    :cond_62
    const/high16 p1, -0x80000000

    .line 236
    :goto_64
    new-instance p4, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    invoke-direct {p4, p2, p3, p1}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;-><init>([BLjava/lang/String;I)V

    return-object p4
.end method

.method public getMetrics()Landroid/os/PersistableBundle;
    .registers 3

    .line 307
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 310
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyByteArray(Ljava/lang/String;)[B
    .registers 3

    .line 320
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 315
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProvisionRequest()Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;
    .registers 4

    .line 252
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    .line 253
    new-instance v1, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public synthetic lambda$setOnEventListener$1$FrameworkMediaDrm(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;Landroid/media/MediaDrm;[BII[B)V
    .registers 13

    move-object v0, p1

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 127
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;->onEvent(Lcom/google/android/exoplayer2/drm/ExoMediaDrm;[BII[B)V

    return-void
.end method

.method public synthetic lambda$setOnExpirationUpdateListener$3$FrameworkMediaDrm(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnExpirationUpdateListener;Landroid/media/MediaDrm;[BJ)V
    .registers 6

    .line 175
    invoke-interface {p1, p0, p3, p4, p5}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnExpirationUpdateListener;->onExpirationUpdate(Lcom/google/android/exoplayer2/drm/ExoMediaDrm;[BJ)V

    return-void
.end method

.method public synthetic lambda$setOnKeyStatusChangeListener$2$FrameworkMediaDrm(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;Landroid/media/MediaDrm;[BLjava/util/List;Z)V
    .registers 9

    .line 148
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 149
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_9
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaDrm$KeyStatus;

    .line 150
    new-instance v1, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyStatus;

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyStatus;->getStatusCode()I

    move-result v2

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyStatus;->getKeyId()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyStatus;-><init>(I[B)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 152
    :cond_26
    invoke-interface {p1, p0, p3, p2, p5}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;->onKeyStatusChange(Lcom/google/android/exoplayer2/drm/ExoMediaDrm;[BLjava/util/List;Z)V

    return-void
.end method

.method public openSession()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaDrmException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v0

    return-object v0
.end method

.method public provideKeyResponse([B[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 243
    sget-object v0, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 244
    invoke-static {p2}, Lcom/google/android/exoplayer2/drm/ClearKeyUtil;->adjustResponseData([B)[B

    move-result-object p2

    .line 247
    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public provideProvisionResponse([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    return-void
.end method

.method public queryKeyStatus([B)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->queryKeyStatus([B)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized release()V
    .registers 2

    monitor-enter p0

    .line 294
    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->referenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->referenceCount:I

    if-nez v0, :cond_e

    .line 295
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 297
    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requiresSecureDecoder([BLjava/lang/String;)Z
    .registers 5

    .line 268
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_d

    .line 269
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$Api31;->requiresSecureDecoder(Landroid/media/MediaDrm;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 274
    :cond_d
    :try_start_d
    new-instance v0, Landroid/media/MediaCrypto;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-direct {v0, v1, p1}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V
    :try_end_14
    .catch Landroid/media/MediaCryptoException; {:try_start_d .. :try_end_14} :catch_21

    .line 280
    :try_start_14
    invoke-virtual {v0, p2}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result p1
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_1c

    .line 282
    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    return p1

    :catchall_1c
    move-exception p1

    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    throw p1

    :catch_21
    const/4 p1, 0x1

    return p1
.end method

.method public restoreKeys([B[B)V
    .registers 4

    .line 301
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->restoreKeys([B[B)V

    return-void
.end method

.method public setOnEventListener(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;)V
    .registers 4

    .line 123
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    :cond_6
    new-instance v1, Lcom/google/android/exoplayer2/drm/-$$Lambda$FrameworkMediaDrm$ZhqohC_ggz8O8ICABXcUug2FsgA;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/drm/-$$Lambda$FrameworkMediaDrm$ZhqohC_ggz8O8ICABXcUug2FsgA;-><init>(Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;)V

    move-object p1, v1

    :goto_c
    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    return-void
.end method

.method public setOnExpirationUpdateListener(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnExpirationUpdateListener;)V
    .registers 5

    .line 167
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_16

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    const/4 v1, 0x0

    if-nez p1, :cond_d

    move-object v2, v1

    goto :goto_12

    :cond_d
    new-instance v2, Lcom/google/android/exoplayer2/drm/-$$Lambda$FrameworkMediaDrm$ZS7zk6_etzj1vQq8b0VCYr8Vtck;

    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplayer2/drm/-$$Lambda$FrameworkMediaDrm$ZS7zk6_etzj1vQq8b0VCYr8Vtck;-><init>(Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnExpirationUpdateListener;)V

    :goto_12
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaDrm;->setOnExpirationUpdateListener(Landroid/media/MediaDrm$OnExpirationUpdateListener;Landroid/os/Handler;)V

    return-void

    .line 168
    :cond_16
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setOnKeyStatusChangeListener(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;)V
    .registers 5

    .line 140
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_16

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    const/4 v1, 0x0

    if-nez p1, :cond_d

    move-object v2, v1

    goto :goto_12

    :cond_d
    new-instance v2, Lcom/google/android/exoplayer2/drm/-$$Lambda$FrameworkMediaDrm$FRubkfdaAJXhD5lYFCf_Ks_2U1Y;

    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplayer2/drm/-$$Lambda$FrameworkMediaDrm$FRubkfdaAJXhD5lYFCf_Ks_2U1Y;-><init>(Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;)V

    :goto_12
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaDrm;->setOnKeyStatusChangeListener(Landroid/media/MediaDrm$OnKeyStatusChangeListener;Landroid/os/Handler;)V

    return-void

    .line 141
    :cond_16
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setPlayerIdForSession([BLcom/google/android/exoplayer2/analytics/PlayerId;)V
    .registers 5

    .line 191
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_13

    .line 193
    :try_start_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$Api31;->setLogSessionIdOnMediaDrmSession(Landroid/media/MediaDrm;[BLcom/google/android/exoplayer2/analytics/PlayerId;)V
    :try_end_b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_13

    :catch_c
    const-string p1, "FrameworkMediaDrm"

    const-string p2, "setLogSessionId failed."

    .line 195
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public setPropertyByteArray(Ljava/lang/String;[B)V
    .registers 4

    .line 330
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->setPropertyByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 325
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
