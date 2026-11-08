.class final Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StreamEventCallbackV29"
.end annotation


# instance fields
.field private final callback:Landroid/media/AudioTrack$StreamEventCallback;

.field private final handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)V
    .registers 3

    .line 1853
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1854
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->handler:Landroid/os/Handler;

    .line 1858
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29$1;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->callback:Landroid/media/AudioTrack$StreamEventCallback;

    return-void
.end method

.method public static synthetic lambda$LfzJt661qZfn2w-6SYHFbD3aMy0(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public register(Landroid/media/AudioTrack;)V
    .registers 4

    .line 1885
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/exoplayer2/audio/-$$Lambda$DefaultAudioSink$StreamEventCallbackV29$LfzJt661qZfn2w-6SYHFbD3aMy0;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/audio/-$$Lambda$DefaultAudioSink$StreamEventCallbackV29$LfzJt661qZfn2w-6SYHFbD3aMy0;-><init>(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->callback:Landroid/media/AudioTrack$StreamEventCallback;

    invoke-virtual {p1, v1, v0}, Landroid/media/AudioTrack;->registerStreamEventCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$StreamEventCallback;)V

    return-void
.end method

.method public unregister(Landroid/media/AudioTrack;)V
    .registers 3

    .line 1889
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->callback:Landroid/media/AudioTrack$StreamEventCallback;

    invoke-virtual {p1, v0}, Landroid/media/AudioTrack;->unregisterStreamEventCallback(Landroid/media/AudioTrack$StreamEventCallback;)V

    .line 1890
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$StreamEventCallbackV29;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
