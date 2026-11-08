.class public Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider;
.super Ljava/lang/Object;
.source "MediaSourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;
    }
.end annotation


# static fields
.field protected static final USER_AGENT_FORMAT:Ljava/lang/String; = "ExoMedia %s (%d) / Android %s / %s"


# instance fields
.field protected userAgent:Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "ExoMedia %s (%d) / Android %s / %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "0.2.5"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x186b9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider;->userAgent:Ljava/lang/String;

    .line 69
    return-void
.end method

.method protected static findByExtension(Ljava/lang/String;)Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;
    .registers 5
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 46
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_9
    move-object v1, v2

    .line 56
    :goto_a
    return-object v1

    .line 50
    :cond_b
    sget-object v3, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->sourceTypeBuilders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;

    .line 51
    .local v1, "sourceTypeBuilder":Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;
    iget-object v3, v1, Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;->extension:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_a

    .end local v1    # "sourceTypeBuilder":Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;
    :cond_26
    move-object v1, v2

    .line 56
    goto :goto_a
.end method

.method protected static findByLooseComparison(Landroid/net/Uri;)Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;
    .registers 5
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 60
    sget-object v2, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->sourceTypeBuilders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;

    .line 61
    .local v1, "sourceTypeBuilder":Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;
    iget-object v2, v1, Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;->looseComparisonRegex:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;->looseComparisonRegex:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 66
    .end local v1    # "sourceTypeBuilder":Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;
    :goto_22
    return-object v1

    :cond_23
    const/4 v1, 0x0

    goto :goto_22
.end method


# virtual methods
.method public generate(Landroid/content/Context;Landroid/os/Handler;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/source/MediaSource;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener",
            "<-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/MediaSource;"
        }
    .end annotation

    .prologue
    .line 32
    .local p4, "transferListener":Lcom/google/android/exoplayer2/upstream/TransferListener;, "Lcom/google/android/exoplayer2/upstream/TransferListener<-Lcom/google/android/exoplayer2/upstream/DataSource;>;"
    invoke-static {p3}, Lcom/phicomm/speaker/player/exomedia/util/MediaSourceUtil;->getExtension(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 35
    .local v6, "extension":Ljava/lang/String;
    invoke-static {v6}, Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider;->findByExtension(Ljava/lang/String;)Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;

    move-result-object v7

    .line 36
    .local v7, "sourceTypeBuilder":Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;
    if-nez v7, :cond_e

    .line 37
    invoke-static {p3}, Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider;->findByLooseComparison(Landroid/net/Uri;)Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;

    move-result-object v7

    .line 41
    :cond_e
    if-eqz v7, :cond_1d

    iget-object v0, v7, Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;->builder:Lcom/phicomm/speaker/player/exomedia/core/source/builder/MediaSourceBuilder;

    .line 42
    .local v0, "builder":Lcom/phicomm/speaker/player/exomedia/core/source/builder/MediaSourceBuilder;
    :goto_12
    iget-object v3, p0, Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider;->userAgent:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/phicomm/speaker/player/exomedia/core/source/builder/MediaSourceBuilder;->build(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v1

    return-object v1

    .line 41
    .end local v0    # "builder":Lcom/phicomm/speaker/player/exomedia/core/source/builder/MediaSourceBuilder;
    :cond_1d
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/source/builder/DefaultMediaSourceBuilder;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/exomedia/core/source/builder/DefaultMediaSourceBuilder;-><init>()V

    goto :goto_12
.end method
