.class public final synthetic Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$AsynchronousMediaCodecAdapter$Factory$J2hfzOzLrDVdFIYTMASAK0qWmWw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$AsynchronousMediaCodecAdapter$Factory$J2hfzOzLrDVdFIYTMASAK0qWmWw;->f$0:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/-$$Lambda$AsynchronousMediaCodecAdapter$Factory$J2hfzOzLrDVdFIYTMASAK0qWmWw;->f$0:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;->lambda$new$0(I)Landroid/os/HandlerThread;

    move-result-object v0

    return-object v0
.end method
