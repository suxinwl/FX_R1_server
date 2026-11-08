.class public Lcom/phicomm/speaker/player/exomedia/ExoMedia;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;,
        Lcom/phicomm/speaker/player/exomedia/ExoMedia$DataSourceFactoryProvider;,
        Lcom/phicomm/speaker/player/exomedia/ExoMedia$HttpDataSourceFactoryProvider;,
        Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerMediaSourceBuilder(Lcom/phicomm/speaker/player/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;)V
    .registers 3

    sget-object v0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->sourceTypeBuilders:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public static registerRenderer(Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/Renderer;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->registeredRendererClasses:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static setDataSourceFactoryProvider(Lcom/phicomm/speaker/player/exomedia/ExoMedia$DataSourceFactoryProvider;)V
    .registers 1

    sput-object p0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->dataSourceFactoryProvider:Lcom/phicomm/speaker/player/exomedia/ExoMedia$DataSourceFactoryProvider;

    return-void
.end method

.method public static setHttpDataSourceFactoryProvider(Lcom/phicomm/speaker/player/exomedia/ExoMedia$HttpDataSourceFactoryProvider;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sput-object p0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->httpDataSourceFactoryProvider:Lcom/phicomm/speaker/player/exomedia/ExoMedia$HttpDataSourceFactoryProvider;

    return-void
.end method

.method public static setLoadControl(Lcom/google/android/exoplayer2/LoadControl;)V
    .registers 1

    sput-object p0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$Data;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    return-void
.end method
