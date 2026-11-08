.class public final synthetic Lcom/google/android/exoplayer2/drm/-$$Lambda$FrameworkMediaDrm$ZS7zk6_etzj1vQq8b0VCYr8Vtck;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaDrm$OnExpirationUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnExpirationUpdateListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnExpirationUpdateListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$FrameworkMediaDrm$ZS7zk6_etzj1vQq8b0VCYr8Vtck;->f$0:Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$FrameworkMediaDrm$ZS7zk6_etzj1vQq8b0VCYr8Vtck;->f$1:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnExpirationUpdateListener;

    return-void
.end method


# virtual methods
.method public final onExpirationUpdate(Landroid/media/MediaDrm;[BJ)V
    .registers 11

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$FrameworkMediaDrm$ZS7zk6_etzj1vQq8b0VCYr8Vtck;->f$0:Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$FrameworkMediaDrm$ZS7zk6_etzj1vQq8b0VCYr8Vtck;->f$1:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnExpirationUpdateListener;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->lambda$setOnExpirationUpdateListener$3$FrameworkMediaDrm(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnExpirationUpdateListener;Landroid/media/MediaDrm;[BJ)V

    return-void
.end method
