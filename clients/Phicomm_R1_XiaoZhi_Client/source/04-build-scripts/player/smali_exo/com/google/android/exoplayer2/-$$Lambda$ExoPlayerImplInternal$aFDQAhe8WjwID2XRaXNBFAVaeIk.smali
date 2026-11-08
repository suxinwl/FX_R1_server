.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImplInternal$aFDQAhe8WjwID2XRaXNBFAVaeIk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImplInternal$aFDQAhe8WjwID2XRaXNBFAVaeIk;->f$0:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImplInternal$aFDQAhe8WjwID2XRaXNBFAVaeIk;->f$0:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->lambda$release$0$ExoPlayerImplInternal()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
