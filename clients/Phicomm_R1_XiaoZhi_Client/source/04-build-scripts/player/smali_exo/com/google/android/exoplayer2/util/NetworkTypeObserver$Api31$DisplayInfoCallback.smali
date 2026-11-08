.class final Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Api31$DisplayInfoCallback;
.super Landroid/telephony/TelephonyCallback;

# interfaces
.implements Landroid/telephony/TelephonyCallback$DisplayInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Api31;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayInfoCallback"
.end annotation


# instance fields
.field private final instance:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;)V
    .registers 2

    .line 248
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 249
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Api31$DisplayInfoCallback;->instance:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    return-void
.end method


# virtual methods
.method public onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .registers 4

    .line 254
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result p1

    const/4 v0, 0x5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_10

    const/4 v1, 0x4

    if-eq p1, v1, :cond_10

    if-ne p1, v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p1, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 p1, 0x1

    .line 259
    :goto_11
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Api31$DisplayInfoCallback;->instance:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    if-eqz p1, :cond_17

    const/16 v0, 0xa

    :cond_17
    # invokes: Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->updateNetworkType(I)V
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->access$200(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;I)V

    return-void
.end method
