.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$StreamVolumeManager$VolumeChangeReceiver$GBSF2uV8cR7F4Lk01XPY3pSaLFQ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/StreamVolumeManager;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/StreamVolumeManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/-$$Lambda$StreamVolumeManager$VolumeChangeReceiver$GBSF2uV8cR7F4Lk01XPY3pSaLFQ;->f$0:Lcom/google/android/exoplayer2/StreamVolumeManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/-$$Lambda$StreamVolumeManager$VolumeChangeReceiver$GBSF2uV8cR7F4Lk01XPY3pSaLFQ;->f$0:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;->lambda$onReceive$0(Lcom/google/android/exoplayer2/StreamVolumeManager;)V

    return-void
.end method
