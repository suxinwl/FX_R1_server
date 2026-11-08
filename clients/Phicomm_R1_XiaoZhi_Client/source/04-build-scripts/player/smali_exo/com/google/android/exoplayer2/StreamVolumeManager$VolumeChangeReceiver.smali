.class final Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/StreamVolumeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/StreamVolumeManager;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/StreamVolumeManager;)V
    .registers 2

    .line 210
    iput-object p1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;->this$0:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/StreamVolumeManager;Lcom/google/android/exoplayer2/StreamVolumeManager$1;)V
    .registers 3

    .line 210
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;-><init>(Lcom/google/android/exoplayer2/StreamVolumeManager;)V

    return-void
.end method

.method static synthetic lambda$onReceive$0(Lcom/google/android/exoplayer2/StreamVolumeManager;)V
    .registers 1

    .line 214
    # invokes: Lcom/google/android/exoplayer2/StreamVolumeManager;->updateVolumeAndNotifyIfChanged()V
    invoke-static {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->access$200(Lcom/google/android/exoplayer2/StreamVolumeManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 214
    iget-object p1, p0, Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;->this$0:Lcom/google/android/exoplayer2/StreamVolumeManager;

    # getter for: Lcom/google/android/exoplayer2/StreamVolumeManager;->eventHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/google/android/exoplayer2/StreamVolumeManager;->access$100(Lcom/google/android/exoplayer2/StreamVolumeManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/StreamVolumeManager$VolumeChangeReceiver;->this$0:Lcom/google/android/exoplayer2/StreamVolumeManager;

    new-instance v0, Lcom/google/android/exoplayer2/-$$Lambda$StreamVolumeManager$VolumeChangeReceiver$GBSF2uV8cR7F4Lk01XPY3pSaLFQ;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/-$$Lambda$StreamVolumeManager$VolumeChangeReceiver$GBSF2uV8cR7F4Lk01XPY3pSaLFQ;-><init>(Lcom/google/android/exoplayer2/StreamVolumeManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
