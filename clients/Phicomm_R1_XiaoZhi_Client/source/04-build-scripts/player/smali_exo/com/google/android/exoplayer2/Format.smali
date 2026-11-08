.class public final Lcom/google/android/exoplayer2/Format;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/Format$FieldNumber;,
        Lcom/google/android/exoplayer2/Format$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT:Lcom/google/android/exoplayer2/Format;

.field private static final FIELD_ACCESSIBILITY_CHANNEL:I = 0x1c

.field private static final FIELD_AVERAGE_BITRATE:I = 0x5

.field private static final FIELD_CHANNEL_COUNT:I = 0x17

.field private static final FIELD_CODECS:I = 0x7

.field private static final FIELD_COLOR_INFO:I = 0x16

.field private static final FIELD_CONTAINER_MIME_TYPE:I = 0x9

.field private static final FIELD_CRYPTO_TYPE:I = 0x1d

.field private static final FIELD_DRM_INIT_DATA:I = 0xd

.field private static final FIELD_ENCODER_DELAY:I = 0x1a

.field private static final FIELD_ENCODER_PADDING:I = 0x1b

.field private static final FIELD_FRAME_RATE:I = 0x11

.field private static final FIELD_HEIGHT:I = 0x10

.field private static final FIELD_ID:I = 0x0

.field private static final FIELD_INITIALIZATION_DATA:I = 0xc

.field private static final FIELD_LABEL:I = 0x1

.field private static final FIELD_LANGUAGE:I = 0x2

.field private static final FIELD_MAX_INPUT_SIZE:I = 0xb

.field private static final FIELD_METADATA:I = 0x8

.field private static final FIELD_PCM_ENCODING:I = 0x19

.field private static final FIELD_PEAK_BITRATE:I = 0x6

.field private static final FIELD_PIXEL_WIDTH_HEIGHT_RATIO:I = 0x13

.field private static final FIELD_PROJECTION_DATA:I = 0x14

.field private static final FIELD_ROLE_FLAGS:I = 0x4

.field private static final FIELD_ROTATION_DEGREES:I = 0x12

.field private static final FIELD_SAMPLE_MIME_TYPE:I = 0xa

.field private static final FIELD_SAMPLE_RATE:I = 0x18

.field private static final FIELD_SELECTION_FLAGS:I = 0x3

.field private static final FIELD_STEREO_MODE:I = 0x15

.field private static final FIELD_SUBSAMPLE_OFFSET_US:I = 0xe

.field private static final FIELD_WIDTH:I = 0xf

.field public static final NO_VALUE:I = -0x1

.field public static final OFFSET_SAMPLE_RELATIVE:J = 0x7fffffffffffffffL


# instance fields
.field public final accessibilityChannel:I

.field public final averageBitrate:I

.field public final bitrate:I

.field public final channelCount:I

.field public final codecs:Ljava/lang/String;

.field public final colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

.field public final containerMimeType:Ljava/lang/String;

.field public final cryptoType:I

.field public final drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field public final encoderDelay:I

.field public final encoderPadding:I

.field public final frameRate:F

.field private hashCode:I

.field public final height:I

.field public final id:Ljava/lang/String;

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final label:Ljava/lang/String;

.field public final language:Ljava/lang/String;

.field public final maxInputSize:I

.field public final metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

.field public final pcmEncoding:I

.field public final peakBitrate:I

.field public final pixelWidthHeightRatio:F

.field public final projectionData:[B

.field public final roleFlags:I

.field public final rotationDegrees:I

.field public final sampleMimeType:Ljava/lang/String;

.field public final sampleRate:I

.field public final selectionFlags:I

.field public final stereoMode:I

.field public final subsampleOffsetUs:J

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 617
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    .line 1547
    sget-object v0, Lcom/google/android/exoplayer2/-$$Lambda$Format$ZX55XDPga2MnLOKNeC4U1ivqqGc;->INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$Format$ZX55XDPga2MnLOKNeC4U1ivqqGc;

    sput-object v0, Lcom/google/android/exoplayer2/Format;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/Format$Builder;)V
    .registers 6

    .line 944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 945
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->id:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$100(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    .line 946
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->label:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$200(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    .line 947
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->language:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$300(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 948
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->selectionFlags:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$400(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    .line 949
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->roleFlags:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$500(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    .line 950
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->averageBitrate:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$600(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    .line 951
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->peakBitrate:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$700(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_35

    goto :goto_37

    .line 952
    :cond_35
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    :goto_37
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    .line 953
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->codecs:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$800(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 954
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$900(Lcom/google/android/exoplayer2/Format$Builder;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 956
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->containerMimeType:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$1000(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 958
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->sampleMimeType:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$1100(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 959
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->maxInputSize:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$1200(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    .line 961
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$1300(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_62

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_66

    :cond_62
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->initializationData:Ljava/util/List;
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$1300(Lcom/google/android/exoplayer2/Format$Builder;)Ljava/util/List;

    move-result-object v0

    :goto_66
    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    .line 962
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$1400(Lcom/google/android/exoplayer2/Format$Builder;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 963
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->subsampleOffsetUs:J
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$1500(Lcom/google/android/exoplayer2/Format$Builder;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    .line 965
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->width:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$1600(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->width:I

    .line 966
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->height:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$1700(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->height:I

    .line 967
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->frameRate:F
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$1800(Lcom/google/android/exoplayer2/Format$Builder;)F

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 968
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->rotationDegrees:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$1900(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8f

    const/4 v0, 0x0

    goto :goto_93

    :cond_8f
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->rotationDegrees:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$1900(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v0

    :goto_93
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    .line 970
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->pixelWidthHeightRatio:F
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$2000(Lcom/google/android/exoplayer2/Format$Builder;)F

    move-result v0

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_a2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_a6

    :cond_a2
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->pixelWidthHeightRatio:F
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$2000(Lcom/google/android/exoplayer2/Format$Builder;)F

    move-result v0

    :goto_a6
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    .line 971
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->projectionData:[B
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$2100(Lcom/google/android/exoplayer2/Format$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    .line 972
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->stereoMode:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$2200(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    .line 973
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$2300(Lcom/google/android/exoplayer2/Format$Builder;)Lcom/google/android/exoplayer2/video/ColorInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 975
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->channelCount:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$2400(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    .line 976
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->sampleRate:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$2500(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    .line 977
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->pcmEncoding:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$2600(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    .line 978
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->encoderDelay:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$2700(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v0

    if-ne v0, v1, :cond_d4

    const/4 v0, 0x0

    goto :goto_d8

    :cond_d4
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->encoderDelay:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$2700(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v0

    :goto_d8
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    .line 979
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->encoderPadding:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$2800(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v0

    if-ne v0, v1, :cond_e1

    goto :goto_e5

    :cond_e1
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->encoderPadding:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$2800(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v2

    :goto_e5
    iput v2, p0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    .line 981
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->accessibilityChannel:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$2900(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    .line 983
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->cryptoType:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$3000(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result v0

    if-nez v0, :cond_fb

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz v0, :cond_fb

    const/4 p1, 0x1

    .line 985
    iput p1, p0, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    goto :goto_101

    .line 987
    :cond_fb
    # getter for: Lcom/google/android/exoplayer2/Format$Builder;->cryptoType:I
    invoke-static {p1}, Lcom/google/android/exoplayer2/Format$Builder;->access$3000(Lcom/google/android/exoplayer2/Format$Builder;)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    :goto_101
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/Format$Builder;Lcom/google/android/exoplayer2/Format$1;)V
    .registers 3

    .line 118
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/Format;-><init>(Lcom/google/android/exoplayer2/Format$Builder;)V

    return-void
.end method

.method public static createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 889
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 890
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 891
    invoke-virtual {p0, p11}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 892
    invoke-virtual {p0, p10}, Lcom/google/android/exoplayer2/Format$Builder;->setSelectionFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 893
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 894
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 895
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 896
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 897
    invoke-virtual {p0, p4}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 898
    invoke-virtual {p0, p8}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 899
    invoke-virtual {p0, p9}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 900
    invoke-virtual {p0, p5}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 901
    invoke-virtual {p0, p6}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 902
    invoke-virtual {p0, p7}, Lcom/google/android/exoplayer2/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 903
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 856
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 857
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 858
    invoke-virtual {p0, p10}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 859
    invoke-virtual {p0, p9}, Lcom/google/android/exoplayer2/Format$Builder;->setSelectionFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 860
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 861
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 862
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 863
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 864
    invoke-virtual {p0, p4}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 865
    invoke-virtual {p0, p7}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 866
    invoke-virtual {p0, p8}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 867
    invoke-virtual {p0, p5}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 868
    invoke-virtual {p0, p6}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 869
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static createContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 922
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 923
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 924
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 925
    invoke-virtual {p0, p8}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 926
    invoke-virtual {p0, p6}, Lcom/google/android/exoplayer2/Format$Builder;->setSelectionFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 927
    invoke-virtual {p0, p7}, Lcom/google/android/exoplayer2/Format$Builder;->setRoleFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 928
    invoke-virtual {p0, p5}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 929
    invoke-virtual {p0, p5}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 930
    invoke-virtual {p0, p4}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 931
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 932
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 933
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static createSampleFormat(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 941
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;IF",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 821
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 822
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 823
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 824
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 825
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 826
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 827
    invoke-virtual {p0, p4}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 828
    invoke-virtual {p0, p8}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 829
    invoke-virtual {p0, p11}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 830
    invoke-virtual {p0, p5}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 831
    invoke-virtual {p0, p6}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 832
    invoke-virtual {p0, p7}, Lcom/google/android/exoplayer2/Format$Builder;->setFrameRate(F)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 833
    invoke-virtual {p0, p9}, Lcom/google/android/exoplayer2/Format$Builder;->setRotationDegrees(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 834
    invoke-virtual {p0, p10}, Lcom/google/android/exoplayer2/Format$Builder;->setPixelWidthHeightRatio(F)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 835
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 789
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 790
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 791
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 792
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 793
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 794
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 795
    invoke-virtual {p0, p4}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 796
    invoke-virtual {p0, p8}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 797
    invoke-virtual {p0, p9}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 798
    invoke-virtual {p0, p5}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 799
    invoke-virtual {p0, p6}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 800
    invoke-virtual {p0, p7}, Lcom/google/android/exoplayer2/Format$Builder;->setFrameRate(F)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 801
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method private static defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_3

    goto :goto_4

    :cond_3
    move-object p0, p1

    :goto_4
    return-object p0
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Format;
    .registers 6

    .line 1550
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 1551
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/BundleableUtil;->ensureClassLoader(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    .line 1553
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    iget-object v3, v3, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/Format;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 1554
    invoke-static {v3}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/Format;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    const/4 v3, 0x2

    .line 1555
    invoke-static {v3}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/Format;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    const/4 v3, 0x3

    .line 1557
    invoke-static {v3}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1556
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setSelectionFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    const/4 v3, 0x4

    .line 1558
    invoke-static {v3}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setRoleFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    const/4 v3, 0x5

    .line 1560
    invoke-static {v3}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1559
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    const/4 v3, 0x6

    .line 1561
    invoke-static {v3}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    const/4 v3, 0x7

    .line 1562
    invoke-static {v3}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/Format;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    const/16 v3, 0x8

    .line 1564
    invoke-static {v3}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    sget-object v4, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/Format;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 1563
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    const/16 v3, 0x9

    .line 1568
    invoke-static {v3}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 1567
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/Format;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1566
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    const/16 v3, 0xa

    .line 1573
    invoke-static {v3}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1572
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/Format;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1571
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    const/16 v3, 0xb

    .line 1574
    invoke-static {v3}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    iget v4, v4, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 1576
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1578
    :goto_106
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForInitializationData(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_248

    .line 1585
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    const/16 v2, 0xd

    .line 1586
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    const/16 v2, 0xe

    .line 1588
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1587
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setSubsampleOffsetUs(J)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    const/16 v2, 0xf

    .line 1590
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    const/16 v2, 0x10

    .line 1591
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    const/16 v2, 0x11

    .line 1592
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->frameRate:F

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setFrameRate(F)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    const/16 v2, 0x12

    .line 1594
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1593
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setRotationDegrees(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    const/16 v2, 0x13

    .line 1597
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    .line 1596
    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 1595
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setPixelWidthHeightRatio(F)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    const/16 v2, 0x14

    .line 1598
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setProjectionData([B)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    const/16 v2, 0x15

    .line 1599
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setStereoMode(I)Lcom/google/android/exoplayer2/Format$Builder;

    const/16 v1, 0x16

    .line 1600
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1c6

    .line 1602
    sget-object v2, Lcom/google/android/exoplayer2/video/ColorInfo;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setColorInfo(Lcom/google/android/exoplayer2/video/ColorInfo;)Lcom/google/android/exoplayer2/Format$Builder;

    :cond_1c6
    const/16 v1, 0x17

    .line 1606
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    const/16 v2, 0x18

    .line 1607
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    const/16 v2, 0x19

    .line 1608
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    const/16 v2, 0x1a

    .line 1609
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setEncoderDelay(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    const/16 v2, 0x1b

    .line 1611
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1610
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setEncoderPadding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    const/16 v2, 0x1c

    .line 1614
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1613
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setAccessibilityChannel(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    const/16 v2, 0x1d

    .line 1616
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/Format;->DEFAULT:Lcom/google/android/exoplayer2/Format;

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/Format$Builder;->setCryptoType(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 1618
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0

    .line 1582
    :cond_248
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_106
.end method

.method private static keyForField(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x24

    .line 1622
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static keyForInitializationData(I)Ljava/lang/String;
    .registers 3

    .line 1626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x24

    .line 1628
    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$ZX55XDPga2MnLOKNeC4U1ivqqGc(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Format;
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/Format;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public static toLogString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .registers 9

    if-nez p0, :cond_5

    const-string p0, "null"

    return-object p0

    .line 1307
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    .line 1308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2d

    const-string v1, ", bitrate="

    .line 1310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1312
    :cond_2d
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    if-eqz v1, :cond_3b

    const-string v1, ", codecs="

    .line 1313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    :cond_3b
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/16 v3, 0x2c

    if-eqz v1, :cond_c8

    .line 1316
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v4, 0x0

    .line 1317
    :goto_47
    iget-object v5, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget v5, v5, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDataCount:I

    if-ge v4, v5, :cond_b7

    .line 1318
    iget-object v5, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/drm/DrmInitData;->get(I)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 1319
    sget-object v6, Lcom/google/android/exoplayer2/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    const-string v5, "cenc"

    .line 1320
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b4

    .line 1321
    :cond_63
    sget-object v6, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_71

    const-string v5, "clearkey"

    .line 1322
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b4

    .line 1323
    :cond_71
    sget-object v6, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7f

    const-string v5, "playready"

    .line 1324
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b4

    .line 1325
    :cond_7f
    sget-object v6, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8d

    const-string v5, "widevine"

    .line 1326
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b4

    .line 1327
    :cond_8d
    sget-object v6, Lcom/google/android/exoplayer2/C;->UUID_NIL:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9b

    const-string v5, "universal"

    .line 1328
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b4

    .line 1330
    :cond_9b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_b4
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    :cond_b7
    const-string v4, ", drm=["

    .line 1333
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    invoke-static {v3}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 1335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1337
    :cond_c8
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq v1, v2, :cond_e4

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    if-eq v1, v2, :cond_e4

    const-string v1, ", res="

    .line 1338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1340
    :cond_e4
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_f6

    const-string v1, ", fps="

    .line 1341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1343
    :cond_f6
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-eq v1, v2, :cond_104

    const-string v1, ", channels="

    .line 1344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1346
    :cond_104
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-eq v1, v2, :cond_112

    const-string v1, ", sample_rate="

    .line 1347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1349
    :cond_112
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    if-eqz v1, :cond_120

    const-string v1, ", language="

    .line 1350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    :cond_120
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    if-eqz v1, :cond_12e

    const-string v1, ", label="

    .line 1353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    :cond_12e
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    const-string v2, "]"

    if-eqz v1, :cond_169

    .line 1356
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1358
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_144

    const-string v4, "auto"

    .line 1359
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1361
    :cond_144
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_14f

    const-string v4, "default"

    .line 1362
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1364
    :cond_14f
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_15a

    const-string v4, "forced"

    .line 1365
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15a
    const-string v4, ", selectionFlags=["

    .line 1367
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    invoke-static {v3}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 1369
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    :cond_169
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    if-eqz v1, :cond_226

    .line 1373
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1374
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_17d

    const-string v4, "main"

    .line 1375
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1377
    :cond_17d
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_188

    const-string v4, "alt"

    .line 1378
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1380
    :cond_188
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_193

    const-string v4, "supplementary"

    .line 1381
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1383
    :cond_193
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_19e

    const-string v4, "commentary"

    .line 1384
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1386
    :cond_19e
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_1a9

    const-string v4, "dub"

    .line 1387
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1389
    :cond_1a9
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_1b4

    const-string v4, "emergency"

    .line 1390
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1392
    :cond_1b4
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1bf

    const-string v4, "caption"

    .line 1393
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1395
    :cond_1bf
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1ca

    const-string v4, "subtitle"

    .line 1396
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1398
    :cond_1ca
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_1d5

    const-string v4, "sign"

    .line 1399
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1401
    :cond_1d5
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_1e0

    const-string v4, "describes-video"

    .line 1402
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1404
    :cond_1e0
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_1eb

    const-string v4, "describes-music"

    .line 1405
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1407
    :cond_1eb
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_1f6

    const-string v4, "enhanced-intelligibility"

    .line 1408
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1410
    :cond_1f6
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_201

    const-string v4, "transcribes-dialog"

    .line 1411
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1413
    :cond_201
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_20c

    const-string v4, "easy-read"

    .line 1414
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1416
    :cond_20c
    iget p0, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 p0, p0, 0x4000

    if-eqz p0, :cond_217

    const-string p0, "trick-play"

    .line 1417
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_217
    const-string p0, ", roleFlags=["

    .line 1419
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1420
    invoke-static {v3}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 1421
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1423
    :cond_226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplayer2/Format$Builder;
    .registers 3

    .line 993
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/Format$Builder;-><init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format$1;)V

    return-object v0
.end method

.method public copyWithBitrate(I)Lcom/google/android/exoplayer2/Format;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1134
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method

.method public copyWithCryptoType(I)Lcom/google/android/exoplayer2/Format;
    .registers 3

    .line 1148
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setCryptoType(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method

.method public copyWithDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1117
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method

.method public copyWithFrameRate(F)Lcom/google/android/exoplayer2/Format;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1109
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setFrameRate(F)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method

.method public copyWithGaplessInfo(II)Lcom/google/android/exoplayer2/Format;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1101
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setEncoderDelay(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setEncoderPadding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method

.method public copyWithLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1017
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method

.method public copyWithManifestFormatInfo(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1025
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Format;->withManifestFormatInfo(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method

.method public copyWithMaxInputSize(I)Lcom/google/android/exoplayer2/Format;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1001
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method

.method public copyWithMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1125
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method

.method public copyWithSubsampleOffsetUs(J)Lcom/google/android/exoplayer2/Format;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1009
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setSubsampleOffsetUs(J)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method

.method public copyWithVideoSize(II)Lcom/google/android/exoplayer2/Format;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1143
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_109

    .line 1240
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_109

    .line 1243
    :cond_13
    check-cast p1, Lcom/google/android/exoplayer2/Format;

    .line 1244
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->hashCode:I

    if-eqz v2, :cond_20

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->hashCode:I

    if-eqz v3, :cond_20

    if-eq v2, v3, :cond_20

    return v1

    .line 1248
    :cond_20
    iget v2, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    if-ne v2, v3, :cond_107

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    if-ne v2, v3, :cond_107

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    if-ne v2, v3, :cond_107

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    if-ne v2, v3, :cond_107

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    if-ne v2, v3, :cond_107

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_107

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->width:I

    if-ne v2, v3, :cond_107

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->height:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne v2, v3, :cond_107

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    if-ne v2, v3, :cond_107

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    if-ne v2, v3, :cond_107

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ne v2, v3, :cond_107

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-ne v2, v3, :cond_107

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    if-ne v2, v3, :cond_107

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    if-ne v2, v3, :cond_107

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    if-ne v2, v3, :cond_107

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    if-ne v2, v3, :cond_107

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    if-ne v2, v3, :cond_107

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 1265
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_107

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    .line 1266
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_107

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    .line 1267
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_107

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    .line 1268
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_107

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 1269
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_107

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 1270
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_107

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1271
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_107

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 1272
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_107

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    .line 1273
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_107

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 1274
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_107

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    .line 1275
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_107

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 1276
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_107

    .line 1277
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Format;->initializationDataEquals(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    if-eqz p1, :cond_107

    goto :goto_108

    :cond_107
    const/4 v0, 0x0

    :goto_108
    return v0

    :cond_109
    :goto_109
    return v1
.end method

.method public getPixelCount()I
    .registers 4

    .line 1156
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->height:I

    if-ne v2, v1, :cond_a

    goto :goto_c

    :cond_a
    mul-int v1, v0, v2

    :cond_c
    :goto_c
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 1191
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->hashCode:I

    if-nez v0, :cond_c9

    const/16 v0, 0x20f

    .line 1194
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_d

    const/4 v1, 0x0

    goto :goto_11

    :cond_d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1195
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1196
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    if-nez v1, :cond_27

    const/4 v1, 0x0

    goto :goto_2b

    :cond_27
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1197
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1198
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1199
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1200
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1201
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    if-nez v1, :cond_48

    const/4 v1, 0x0

    goto :goto_4c

    :cond_48
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1202
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v1, :cond_55

    const/4 v1, 0x0

    goto :goto_59

    :cond_55
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->hashCode()I

    move-result v1

    :goto_59
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1204
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    if-nez v1, :cond_62

    const/4 v1, 0x0

    goto :goto_66

    :cond_62
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_66
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1206
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v1, :cond_6e

    goto :goto_72

    :cond_6e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_72
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1207
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1210
    iget-wide v1, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1212
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1213
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1214
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1215
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1216
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1218
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1221
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1222
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1223
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1224
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1225
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1227
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1229
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    add-int/2addr v0, v1

    .line 1230
    iput v0, p0, Lcom/google/android/exoplayer2/Format;->hashCode:I

    .line 1232
    :cond_c9
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->hashCode:I

    return v0
.end method

.method public initializationDataEquals(Lcom/google/android/exoplayer2/Format;)Z
    .registers 6

    .line 1289
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    return v2

    :cond_10
    const/4 v0, 0x0

    .line 1292
    :goto_11
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 1293
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_33
    const/4 p1, 0x1

    return p1
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 5

    .line 1497
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 1498
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1499
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 1500
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 1501
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x4

    .line 1502
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x5

    .line 1503
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x6

    .line 1504
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x7

    .line 1505
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 1509
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v2, 0x9

    .line 1511
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa

    .line 1513
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb

    .line 1514
    invoke-static {v2}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1515
    :goto_81
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9b

    .line 1516
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForInitializationData(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_81

    :cond_9b
    const/16 v1, 0xd

    .line 1520
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v1, 0xe

    .line 1521
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v1, 0xf

    .line 1523
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x10

    .line 1524
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x11

    .line 1525
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const/16 v1, 0x12

    .line 1526
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x13

    .line 1527
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const/16 v1, 0x14

    .line 1528
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 v1, 0x15

    .line 1529
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1530
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    if-eqz v1, :cond_111

    const/16 v1, 0x16

    .line 1531
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->colorInfo:Lcom/google/android/exoplayer2/video/ColorInfo;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/video/ColorInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_111
    const/16 v1, 0x17

    .line 1534
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x18

    .line 1535
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x19

    .line 1536
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x1a

    .line 1537
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x1b

    .line 1538
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x1c

    .line 1540
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x1d

    .line 1542
    invoke-static {v1}, Lcom/google/android/exoplayer2/Format;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Format("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withManifestFormatInfo(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .registers 13

    if-ne p0, p1, :cond_3

    return-object p0

    .line 1035
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    .line 1038
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    .line 1041
    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    if-eqz v2, :cond_10

    goto :goto_12

    :cond_10
    iget-object v2, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    .line 1042
    :goto_12
    iget-object v3, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v0, v4, :cond_1a

    if-ne v0, v5, :cond_1f

    .line 1043
    :cond_1a
    iget-object v4, p1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    if-eqz v4, :cond_1f

    move-object v3, v4

    .line 1049
    :cond_1f
    iget v4, p0, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_26

    iget v4, p1, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    .line 1051
    :cond_26
    iget v7, p0, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    if-ne v7, v6, :cond_2c

    iget v7, p1, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    .line 1052
    :cond_2c
    iget-object v6, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    if-nez v6, :cond_3e

    .line 1056
    iget-object v8, p1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v8, v0}, Lcom/google/android/exoplayer2/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 1057
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Util;->splitCodecs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-ne v9, v5, :cond_3e

    move-object v6, v8

    .line 1063
    :cond_3e
    iget-object v5, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v5, :cond_45

    iget-object v5, p1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    goto :goto_4b

    :cond_45
    iget-object v8, p1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 1066
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v5

    .line 1068
    :goto_4b
    iget v8, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v9, v8, v9

    if-nez v9, :cond_58

    const/4 v9, 0x2

    if-ne v0, v9, :cond_58

    .line 1070
    iget v8, p1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 1074
    :cond_58
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    iget v9, p1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    or-int/2addr v0, v9

    .line 1075
    iget v9, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    iget v10, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    or-int/2addr v9, v10

    .line 1077
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-object v10, p0, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 1078
    invoke-static {p1, v10}, Lcom/google/android/exoplayer2/drm/DrmInitData;->createSessionCreationData(Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object p1

    .line 1080
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v10

    .line 1081
    invoke-virtual {v10, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 1082
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 1083
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 1084
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setSelectionFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1085
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setRoleFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1086
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1087
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1088
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1089
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1090
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    .line 1091
    invoke-virtual {p1, v8}, Lcom/google/android/exoplayer2/Format$Builder;->setFrameRate(F)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    .line 1092
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method
