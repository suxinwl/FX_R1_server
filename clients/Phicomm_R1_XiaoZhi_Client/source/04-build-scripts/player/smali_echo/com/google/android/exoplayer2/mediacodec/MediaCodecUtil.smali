.class public final Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;,
        Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
    }
.end annotation


# static fields
.field private static final AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

.field private static final AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

.field private static final CODEC_ID_AVC1:Ljava/lang/String; = "avc1"

.field private static final CODEC_ID_AVC2:Ljava/lang/String; = "avc2"

.field private static final CODEC_ID_HEV1:Ljava/lang/String; = "hev1"

.field private static final CODEC_ID_HVC1:Ljava/lang/String; = "hvc1"

.field private static final GOOGLE_RAW_DECODER_NAME:Ljava/lang/String; = "OMX.google.raw.decoder"

.field private static final HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MTK_RAW_DECODER_NAME:Ljava/lang/String; = "OMX.MTK.AUDIO.DECODER.RAW"

.field private static final PASSTHROUGH_DECODER_INFO:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

.field private static final PROFILE_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "MediaCodecUtil"

.field private static final decoderInfosCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static maxH264DecodableFrameSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x20

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 61
    const-string v0, "OMX.google.raw.decoder"

    .line 62
    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->newPassthroughInstance(Ljava/lang/String;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->PASSTHROUGH_DECODER_INFO:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 63
    const-string v0, "^\\D?(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    .line 79
    const/4 v0, -0x1

    sput v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    .line 624
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    .line 625
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 626
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 627
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x58

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 628
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 630
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    .line 631
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 633
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 634
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 635
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 636
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 637
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x15

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 638
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x16

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 639
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x1e

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 640
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x1f

    const/16 v2, 0x200

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 641
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x400

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 642
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x28

    const/16 v2, 0x800

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 643
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x29

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 644
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x2a

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 645
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x32

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 646
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x33

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 647
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    const/16 v1, 0x34

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 649
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    .line 650
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v1, "L30"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v1, "L60"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v1, "L63"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v1, "L90"

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v1, "L93"

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v1, "L120"

    const/16 v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v1, "L123"

    const/16 v2, 0x1000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v1, "L150"

    const/16 v2, 0x4000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v1, "L153"

    const/high16 v2, 0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v1, "L156"

    const/high16 v2, 0x40000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v1, "L180"

    const/high16 v2, 0x100000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v1, "L183"

    const/high16 v2, 0x400000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v1, "L186"

    const/high16 v2, 0x1000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v1, "H30"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v1, "H60"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v1, "H63"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v1, "H90"

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v1, "H93"

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v1, "H120"

    const/16 v2, 0x800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v1, "H123"

    const/16 v2, 0x2000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v1, "H150"

    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v1, "H153"

    const/high16 v2, 0x20000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v1, "H156"

    const/high16 v2, 0x80000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v1, "H180"

    const/high16 v2, 0x200000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v1, "H183"

    const/high16 v2, 0x800000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const-string v1, "H186"

    const/high16 v2, 0x2000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyWorkarounds(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    const/4 v4, 0x0

    .line 369
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_3b

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3b

    const-string v3, "OMX.MTK.AUDIO.DECODER.RAW"

    .line 370
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 372
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3b

    .line 373
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    .line 374
    .local v0, "decoderInfo":Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    const-string v2, "OMX.google.raw.decoder"

    iget-object v3, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 375
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 376
    invoke-interface {p0, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 381
    .end local v0    # "decoderInfo":Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .end local v1    # "i":I
    :cond_3b
    return-void

    .line 372
    .restart local v0    # "decoderInfo":Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .restart local v1    # "i":I
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f
.end method

.method private static avcLevelToMaxFrameSize(I)I
    .registers 6
    .param p0, "avcLevel"    # I

    .prologue
    const/high16 v4, 0x900000

    const/high16 v3, 0x200000

    const v2, 0x65400

    const/16 v0, 0x6300

    const v1, 0x18c00

    .line 474
    sparse-switch p0, :sswitch_data_36

    .line 491
    const/4 v0, -0x1

    :goto_10
    :sswitch_10
    return v0

    :sswitch_11
    move v0, v1

    .line 477
    goto :goto_10

    :sswitch_13
    move v0, v1

    .line 478
    goto :goto_10

    :sswitch_15
    move v0, v1

    .line 479
    goto :goto_10

    .line 480
    :sswitch_17
    const v0, 0x31800

    goto :goto_10

    :sswitch_1b
    move v0, v2

    .line 481
    goto :goto_10

    :sswitch_1d
    move v0, v2

    .line 482
    goto :goto_10

    .line 483
    :sswitch_1f
    const v0, 0xe1000

    goto :goto_10

    .line 484
    :sswitch_23
    const/high16 v0, 0x140000

    goto :goto_10

    :sswitch_26
    move v0, v3

    .line 485
    goto :goto_10

    :sswitch_28
    move v0, v3

    .line 486
    goto :goto_10

    .line 487
    :sswitch_2a
    const/high16 v0, 0x220000

    goto :goto_10

    .line 488
    :sswitch_2d
    const v0, 0x564000

    goto :goto_10

    :sswitch_31
    move v0, v4

    .line 489
    goto :goto_10

    :sswitch_33
    move v0, v4

    .line 490
    goto :goto_10

    .line 474
    nop

    :sswitch_data_36
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_10
        0x8 -> :sswitch_11
        0x10 -> :sswitch_13
        0x20 -> :sswitch_15
        0x40 -> :sswitch_17
        0x80 -> :sswitch_1b
        0x100 -> :sswitch_1d
        0x200 -> :sswitch_1f
        0x400 -> :sswitch_23
        0x800 -> :sswitch_26
        0x1000 -> :sswitch_28
        0x2000 -> :sswitch_2a
        0x4000 -> :sswitch_2d
        0x8000 -> :sswitch_31
        0x10000 -> :sswitch_33
    .end sparse-switch
.end method

.method private static codecNeedsDisableAdaptationWorkaround(Ljava/lang/String;)Z
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 391
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_2c

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "ODROID-XU3"

    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "Nexus 10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_1a
    const-string v0, "OMX.Exynos.AVC.Decoder"

    .line 393
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "OMX.Exynos.AVC.Decoder.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_2a
    const/4 v0, 0x1

    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method private static getAvcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 11
    .param p0, "codec"    # Ljava/lang/String;
    .param p1, "codecsParts"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    .line 427
    array-length v6, p1

    if-ge v6, v7, :cond_1e

    .line 429
    const-string v6, "MediaCodecUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring malformed AVC codec string: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :goto_1d
    return-object v5

    .line 435
    :cond_1e
    const/4 v6, 0x1

    :try_start_1f
    aget-object v6, p1, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_76

    .line 437
    const/4 v6, 0x1

    aget-object v6, p1, v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 438
    .local v4, "profileInteger":Ljava/lang/Integer;
    const/4 v6, 0x1

    aget-object v6, p1, v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_4c
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_4c} :catch_ab

    move-result-object v2

    .line 453
    .local v2, "levelInteger":Ljava/lang/Integer;
    :goto_4d
    sget-object v6, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_PROFILE_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 454
    .local v3, "profile":Ljava/lang/Integer;
    if-nez v3, :cond_c6

    .line 455
    const-string v6, "MediaCodecUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown AVC profile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 439
    .end local v2    # "levelInteger":Ljava/lang/Integer;
    .end local v3    # "profile":Ljava/lang/Integer;
    .end local v4    # "profileInteger":Ljava/lang/Integer;
    :cond_76
    :try_start_76
    array-length v6, p1

    const/4 v7, 0x3

    if-lt v6, v7, :cond_91

    .line 441
    const/4 v6, 0x1

    aget-object v6, p1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 442
    .restart local v4    # "profileInteger":Ljava/lang/Integer;
    const/4 v6, 0x2

    aget-object v6, p1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .restart local v2    # "levelInteger":Ljava/lang/Integer;
    goto :goto_4d

    .line 445
    .end local v2    # "levelInteger":Ljava/lang/Integer;
    .end local v4    # "profileInteger":Ljava/lang/Integer;
    :cond_91
    const-string v6, "MediaCodecUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring malformed AVC codec string: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catch Ljava/lang/NumberFormatException; {:try_start_76 .. :try_end_a9} :catch_ab

    goto/16 :goto_1d

    .line 448
    :catch_ab
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v6, "MediaCodecUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring malformed AVC codec string: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 458
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "levelInteger":Ljava/lang/Integer;
    .restart local v3    # "profile":Ljava/lang/Integer;
    .restart local v4    # "profileInteger":Ljava/lang/Integer;
    :cond_c6
    sget-object v6, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->AVC_LEVEL_NUMBER_TO_CONST:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 459
    .local v1, "level":Ljava/lang/Integer;
    if-nez v1, :cond_f0

    .line 460
    const-string v6, "MediaCodecUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown AVC level: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 463
    :cond_f0
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1d
.end method

.method public static getCodecProfileAndLevel(Ljava/lang/String;)Landroid/util/Pair;
    .registers 7
    .param p0, "codec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 197
    if-nez p0, :cond_5

    .line 209
    :goto_4
    return-object v1

    .line 200
    :cond_5
    const-string v3, "\\."

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "parts":[Ljava/lang/String;
    aget-object v4, v0, v2

    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_4c

    :cond_15
    move v2, v3

    :goto_16
    packed-switch v2, :pswitch_data_5e

    goto :goto_4

    .line 204
    :pswitch_1a
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getHevcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_4

    .line 201
    :sswitch_1f
    const-string v5, "hev1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_16

    :sswitch_28
    const-string v2, "hvc1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :sswitch_32
    const-string v2, "avc1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x2

    goto :goto_16

    :sswitch_3c
    const-string v2, "avc2"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x3

    goto :goto_16

    .line 207
    :pswitch_46
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getAvcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_4

    .line 201
    nop

    :sswitch_data_4c
    .sparse-switch
        0x2ddf23 -> :sswitch_32
        0x2ddf24 -> :sswitch_3c
        0x30d038 -> :sswitch_1f
        0x310dbc -> :sswitch_28
    .end sparse-switch

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1a
        :pswitch_46
        :pswitch_46
    .end packed-switch
.end method

.method public static getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .registers 4
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "secure"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 126
    .local v0, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    goto :goto_b
.end method

.method public static declared-synchronized getDecoderInfos(Ljava/lang/String;Z)Ljava/util/List;
    .registers 10
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "secure"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x15

    .line 142
    const-class v5, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;

    monitor-enter v5

    :try_start_5
    new-instance v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;

    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;-><init>(Ljava/lang/String;Z)V

    .line 143
    .local v2, "key":Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;
    sget-object v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_86

    .line 144
    .local v0, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    if-eqz v0, :cond_17

    move-object v1, v0

    .line 163
    .end local v0    # "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    .local v1, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    :goto_15
    monitor-exit v5

    return-object v1

    .line 147
    .end local v1    # "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    .restart local v0    # "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    :cond_17
    :try_start_17
    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v4, v6, :cond_7f

    new-instance v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;

    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;-><init>(Z)V

    .line 149
    .local v3, "mediaCodecList":Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;
    :goto_20
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfosInternal(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/List;

    move-result-object v0

    .line 150
    if-eqz p1, :cond_71

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_71

    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-gt v6, v4, :cond_71

    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v6, 0x17

    if-gt v4, v6, :cond_71

    .line 153
    new-instance v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;

    .end local v3    # "mediaCodecList":Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;
    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$1;)V

    .line 154
    .restart local v3    # "mediaCodecList":Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfosInternal(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/List;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_71

    .line 156
    const-string v6, "MediaCodecUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MediaCodecList API didn\'t list secure decoder for: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ". Assuming: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v4, 0x0

    .line 157
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object v4, v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 156
    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_71
    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->applyWorkarounds(Ljava/util/List;)V

    .line 161
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 162
    sget-object v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 163
    .end local v0    # "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    .restart local v1    # "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    goto :goto_15

    .line 147
    .end local v1    # "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    .end local v3    # "mediaCodecList":Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;
    .restart local v0    # "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    :cond_7f
    new-instance v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$1;)V
    :try_end_85
    .catchall {:try_start_17 .. :try_end_85} :catchall_86

    goto :goto_20

    .line 142
    .end local v0    # "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    .end local v2    # "key":Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;
    :catchall_86
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static getDecoderInfosInternal(Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/List;
    .registers 22
    .param p0, "key"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;
    .param p1, "mediaCodecList"    # Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    .line 218
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v5, "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    .line 220
    .local v9, "mimeType":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;->getCodecCount()I

    move-result v10

    .line 221
    .local v10, "numberOfCodecs":I
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;->secureDecodersExplicit()Z

    move-result v12

    .line 223
    .local v12, "secureDecodersExplicit":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_12
    if-ge v8, v10, :cond_94

    .line 224
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 225
    .local v3, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, "codecName":Ljava/lang/String;
    invoke-static {v3, v4, v12}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->isCodecUsableDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_f8

    .line 227
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v15

    array-length v0, v15

    move/from16 v16, v0

    const/4 v14, 0x0

    :goto_2c
    move/from16 v0, v16

    if-ge v14, v0, :cond_f8

    aget-object v13, v15, v14

    .line 228
    .local v13, "supportedType":Ljava/lang/String;
    invoke-virtual {v13, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_c7

    move-result v17

    if-eqz v17, :cond_69

    .line 230
    :try_start_38
    invoke-virtual {v3, v13}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v2

    .line 231
    .local v2, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    move-object/from16 v0, p1

    invoke-interface {v0, v9, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isSecurePlaybackSupported(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v11

    .line 232
    .local v11, "secure":Z
    invoke-static {v4}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->codecNeedsDisableAdaptationWorkaround(Ljava/lang/String;)Z

    move-result v7

    .line 233
    .local v7, "forceDisableAdaptive":Z
    if-eqz v12, :cond_52

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v11, :cond_5c

    :cond_52
    if-nez v12, :cond_6c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    move/from16 v17, v0

    if-nez v17, :cond_6c

    .line 235
    :cond_5c
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v9, v2, v7, v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    .end local v2    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v7    # "forceDisableAdaptive":Z
    .end local v11    # "secure":Z
    :cond_69
    :goto_69
    add-int/lit8 v14, v14, 0x1

    goto :goto_2c

    .line 237
    .restart local v2    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .restart local v7    # "forceDisableAdaptive":Z
    .restart local v11    # "secure":Z
    :cond_6c
    if-nez v12, :cond_69

    if-eqz v11, :cond_69

    .line 238
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".secure"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v9, v2, v7, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_94} :catch_95

    .line 258
    .end local v2    # "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    .end local v3    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v4    # "codecName":Ljava/lang/String;
    .end local v7    # "forceDisableAdaptive":Z
    .end local v11    # "secure":Z
    .end local v13    # "supportedType":Ljava/lang/String;
    :cond_94
    return-object v5

    .line 243
    .restart local v3    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v4    # "codecName":Ljava/lang/String;
    .restart local v13    # "supportedType":Ljava/lang/String;
    :catch_95
    move-exception v6

    .line 244
    .local v6, "e":Ljava/lang/Exception;
    :try_start_96
    sget v17, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v18, 0x17

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_cf

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_cf

    .line 246
    const-string v17, "MediaCodecUtil"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Skipping codec "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " (failed to query capabilities)"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_c6} :catch_c7

    goto :goto_69

    .line 259
    .end local v3    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v4    # "codecName":Ljava/lang/String;
    .end local v5    # "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "i":I
    .end local v9    # "mimeType":Ljava/lang/String;
    .end local v10    # "numberOfCodecs":I
    .end local v12    # "secureDecodersExplicit":Z
    .end local v13    # "supportedType":Ljava/lang/String;
    :catch_c7
    move-exception v6

    .line 262
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v14, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;

    const/4 v15, 0x0

    invoke-direct {v14, v6, v15}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;-><init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$1;)V

    throw v14

    .line 250
    .restart local v3    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v4    # "codecName":Ljava/lang/String;
    .restart local v5    # "decoderInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;>;"
    .restart local v8    # "i":I
    .restart local v9    # "mimeType":Ljava/lang/String;
    .restart local v10    # "numberOfCodecs":I
    .restart local v12    # "secureDecodersExplicit":Z
    .restart local v13    # "supportedType":Ljava/lang/String;
    :cond_cf
    :try_start_cf
    const-string v14, "MediaCodecUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to query codec "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    throw v6
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_f8} :catch_c7

    .line 223
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v13    # "supportedType":Ljava/lang/String;
    :cond_f8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_12
.end method

.method private static getHevcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 11
    .param p0, "codec"    # Ljava/lang/String;
    .param p1, "parts"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 397
    array-length v5, p1

    const/4 v6, 0x4

    if-ge v5, v6, :cond_1f

    .line 399
    const-string v5, "MediaCodecUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring malformed HEVC codec string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :goto_1e
    return-object v4

    .line 403
    :cond_1f
    sget-object v5, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    aget-object v6, p1, v8

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 404
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_46

    .line 405
    const-string v5, "MediaCodecUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring malformed HEVC codec string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 408
    :cond_46
    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 410
    .local v3, "profileString":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 411
    const/4 v2, 0x1

    .line 418
    .local v2, "profile":I
    :goto_53
    sget-object v5, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->HEVC_CODEC_STRING_TO_PROFILE_LEVEL:Ljava/util/Map;

    const/4 v6, 0x3

    aget-object v6, p1, v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 419
    .local v0, "level":Ljava/lang/Integer;
    if-nez v0, :cond_a1

    .line 420
    const-string v5, "MediaCodecUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown HEVC level string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 412
    .end local v0    # "level":Ljava/lang/Integer;
    .end local v2    # "profile":I
    :cond_7d
    const-string v5, "2"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_87

    .line 413
    const/4 v2, 0x2

    .restart local v2    # "profile":I
    goto :goto_53

    .line 415
    .end local v2    # "profile":I
    :cond_87
    const-string v5, "MediaCodecUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown HEVC profile string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 423
    .restart local v0    # "level":Ljava/lang/Integer;
    .restart local v2    # "profile":I
    :cond_a1
    new-instance v4, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1e
.end method

.method public static getPassthroughDecoderInfo()Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    .registers 1

    .prologue
    .line 110
    sget-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->PASSTHROUGH_DECODER_INFO:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    return-object v0
.end method

.method private static isCodecUsableDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;Z)Z
    .registers 9
    .param p0, "info"    # Landroid/media/MediaCodecInfo;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "secureDecodersExplicit"    # Z

    .prologue
    const/16 v5, 0x13

    const/16 v4, 0x12

    const/16 v3, 0x10

    const/4 v0, 0x0

    .line 271
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v1

    if-nez v1, :cond_17

    if-nez p2, :cond_18

    const-string v1, ".secure"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 359
    :cond_17
    :goto_17
    return v0

    .line 276
    :cond_18
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_4e

    const-string v1, "CIPAACDecoder"

    .line 277
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "CIPMP3Decoder"

    .line 278
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "CIPVorbisDecoder"

    .line 279
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "CIPAMRNBDecoder"

    .line 280
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "AACDecoder"

    .line 281
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "MP3Decoder"

    .line 282
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 287
    :cond_4e
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ge v1, v4, :cond_5a

    const-string v1, "OMX.SEC.MP3.Decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 293
    :cond_5a
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ge v1, v4, :cond_84

    const-string v1, "OMX.MTK.AUDIO.DECODER.AAC"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    const-string v1, "a70"

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 294
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "Xiaomi"

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 295
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "HM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 301
    :cond_84
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ne v1, v3, :cond_108

    const-string v1, "OMX.qcom.audio.decoder.mp3"

    .line 302
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_108

    const-string v1, "dlxu"

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 303
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "protou"

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 304
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "ville"

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "villeplus"

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 306
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "villec2"

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "gee"

    .line 308
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "C6602"

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 309
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "C6603"

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 310
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "C6606"

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 311
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "C6616"

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 312
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "L36h"

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 313
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "SO-02E"

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 314
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 319
    :cond_108
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ne v1, v3, :cond_13c

    const-string v1, "OMX.qcom.audio.decoder.aac"

    .line 320
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13c

    const-string v1, "C1504"

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 321
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "C1505"

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 322
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "C1604"

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 323
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "C1605"

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 324
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 329
    :cond_13c
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_1ac

    const-string v1, "OMX.SEC.aac.dec"

    .line 330
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_152

    const-string v1, "OMX.Exynos.AAC.Decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ac

    :cond_152
    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "samsung"

    .line 331
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ac

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "zeroflte"

    .line 332
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "zerolte"

    .line 333
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "zenlte"

    .line 334
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "SC-05G"

    .line 335
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "marinelteatt"

    .line 336
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "404SC"

    .line 337
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "SC-04G"

    .line 338
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "SCV31"

    .line 339
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 345
    :cond_1ac
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-gt v1, v5, :cond_1f4

    const-string v1, "OMX.SEC.vp8.dec"

    .line 346
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f4

    const-string v1, "samsung"

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f4

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "d2"

    .line 347
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "serrano"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "jflte"

    .line 348
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "santos"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "t0"

    .line 349
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 354
    :cond_1f4
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-gt v1, v5, :cond_20a

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "jflte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20a

    const-string v1, "OMX.qcom.video.decoder.vp8"

    .line 355
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 359
    :cond_20a
    const/4 v0, 0x1

    goto/16 :goto_17
.end method

.method public static maxH264DecodableFrameSize()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 172
    sget v4, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_34

    .line 173
    const/4 v2, 0x0

    .line 174
    .local v2, "result":I
    const-string v4, "video/avc"

    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    move-result-object v0

    .line 175
    .local v0, "decoderInfo":Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;
    if-eqz v0, :cond_32

    .line 176
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v4

    array-length v5, v4

    :goto_14
    if-ge v3, v5, :cond_25

    aget-object v1, v4, v3

    .line 177
    .local v1, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    iget v6, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->avcLevelToMaxFrameSize(I)I

    move-result v6

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 176
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 181
    .end local v1    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_25
    sget v3, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_37

    const v3, 0x54600

    :goto_2e
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 183
    :cond_32
    sput v2, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    .line 185
    :cond_34
    sget v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    return v3

    .line 181
    :cond_37
    const v3, 0x2a300

    goto :goto_2e
.end method

.method public static warmDecoderInfoCache(Ljava/lang/String;Z)V
    .registers 5
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "secure"    # Z

    .prologue
    .line 95
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_3
    .catch Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_3} :catch_4

    .line 100
    :goto_3
    return-void

    .line 96
    :catch_4
    move-exception v0

    .line 98
    .local v0, "e":Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
    const-string v1, "MediaCodecUtil"

    const-string v2, "Codec warming failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method
