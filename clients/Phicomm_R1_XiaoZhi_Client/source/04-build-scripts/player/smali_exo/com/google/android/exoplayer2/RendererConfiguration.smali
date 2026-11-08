.class public final Lcom/google/android/exoplayer2/RendererConfiguration;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT:Lcom/google/android/exoplayer2/RendererConfiguration;


# instance fields
.field public final tunneling:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/google/android/exoplayer2/RendererConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/RendererConfiguration;-><init>(Z)V

    sput-object v0, Lcom/google/android/exoplayer2/RendererConfiguration;->DEFAULT:Lcom/google/android/exoplayer2/RendererConfiguration;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/RendererConfiguration;->tunneling:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1d

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1d

    .line 45
    :cond_12
    check-cast p1, Lcom/google/android/exoplayer2/RendererConfiguration;

    .line 46
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/RendererConfiguration;->tunneling:Z

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/RendererConfiguration;->tunneling:Z

    if-ne v2, p1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0

    :cond_1d
    :goto_1d
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 51
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/RendererConfiguration;->tunneling:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
