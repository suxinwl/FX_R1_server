.class public Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
.super Ljava/io/IOException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrmSessionException"
.end annotation


# instance fields
.field public final errorCode:I


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;I)V
    .registers 3

    .line 69
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 70
    iput p2, p0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;->errorCode:I

    return-void
.end method
