.class public final synthetic Lcom/google/android/exoplayer2/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$2M7Ela7Sr-eErGPpo6cRRmyi-9Y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$2M7Ela7Sr-eErGPpo6cRRmyi-9Y;->f$0:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$2M7Ela7Sr-eErGPpo6cRRmyi-9Y;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$2M7Ela7Sr-eErGPpo6cRRmyi-9Y;->f$0:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$2M7Ela7Sr-eErGPpo6cRRmyi-9Y;->f$1:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->lambda$positionAdvancing$3$AudioRendererEventListener$EventDispatcher(J)V

    return-void
.end method
