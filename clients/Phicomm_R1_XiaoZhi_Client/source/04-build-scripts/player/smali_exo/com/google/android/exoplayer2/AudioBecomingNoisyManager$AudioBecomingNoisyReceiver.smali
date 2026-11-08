.class final Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;
.super Landroid/content/BroadcastReceiver;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AudioBecomingNoisyReceiver"
.end annotation


# instance fields
.field private final eventHandler:Landroid/os/Handler;

.field private final listener:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$EventListener;

.field final synthetic this$0:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;Landroid/os/Handler;Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$EventListener;)V
    .registers 4

    .line 62
    iput-object p1, p0, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->this$0:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->eventHandler:Landroid/os/Handler;

    .line 64
    iput-object p3, p0, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->listener:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$EventListener;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 70
    iget-object p1, p0, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->eventHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_11
    return-void
.end method

.method public run()V
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->this$0:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

    # getter for: Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->receiverRegistered:Z
    invoke-static {v0}, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->access$000(Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;->listener:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$EventListener;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$EventListener;->onAudioBecomingNoisy()V

    :cond_d
    return-void
.end method
