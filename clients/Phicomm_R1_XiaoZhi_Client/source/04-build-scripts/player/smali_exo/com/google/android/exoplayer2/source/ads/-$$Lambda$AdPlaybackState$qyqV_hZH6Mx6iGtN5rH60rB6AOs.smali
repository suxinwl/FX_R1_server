.class public final synthetic Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdPlaybackState$qyqV_hZH6Mx6iGtN5rH60rB6AOs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdPlaybackState$qyqV_hZH6Mx6iGtN5rH60rB6AOs;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdPlaybackState$qyqV_hZH6Mx6iGtN5rH60rB6AOs;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdPlaybackState$qyqV_hZH6Mx6iGtN5rH60rB6AOs;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdPlaybackState$qyqV_hZH6Mx6iGtN5rH60rB6AOs;->INSTANCE:Lcom/google/android/exoplayer2/source/ads/-$$Lambda$AdPlaybackState$qyqV_hZH6Mx6iGtN5rH60rB6AOs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .registers 2

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->lambda$qyqV_hZH6Mx6iGtN5rH60rB6AOs(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object p1

    return-object p1
.end method
