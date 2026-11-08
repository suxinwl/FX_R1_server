.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayer$Builder$EX4J0JrxJ9ARFphqxnR-ZO2uUkg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayer$Builder$EX4J0JrxJ9ARFphqxnR-ZO2uUkg;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayer$Builder$EX4J0JrxJ9ARFphqxnR-ZO2uUkg;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->lambda$new$3(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object v0

    return-object v0
.end method
