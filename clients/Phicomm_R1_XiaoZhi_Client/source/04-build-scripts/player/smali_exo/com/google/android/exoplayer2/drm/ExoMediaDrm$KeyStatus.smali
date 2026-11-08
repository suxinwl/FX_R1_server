.class public final Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyStatus;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/ExoMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyStatus"
.end annotation


# instance fields
.field private final keyId:[B

.field private final statusCode:I


# direct methods
.method public constructor <init>(I[B)V
    .registers 3

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput p1, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyStatus;->statusCode:I

    .line 204
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyStatus;->keyId:[B

    return-void
.end method


# virtual methods
.method public getKeyId()[B
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyStatus;->keyId:[B

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    .line 209
    iget v0, p0, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyStatus;->statusCode:I

    return v0
.end method
