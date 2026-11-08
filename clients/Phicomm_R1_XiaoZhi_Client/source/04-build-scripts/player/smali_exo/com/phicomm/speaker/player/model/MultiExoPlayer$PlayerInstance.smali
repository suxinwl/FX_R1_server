.class Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/model/MultiExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerInstance"
.end annotation


# instance fields
.field private final apiData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private bufferMonitorThread:Ljava/lang/Thread;

.field private bufferProgress:I

.field private bufferUpdateListener:Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;

.field private final cacheApiData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private errorCount:I

.field private exoListener:Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;

.field private final initLock:Ljava/lang/Object;

.field private isBuffering:Z

.field private loginCode:Ljava/lang/String;

.field private final multiLock:Ljava/lang/Object;

.field private musicApi:Ljava/lang/String;

.field private noFlac:Z

.field private final paramLock:Ljava/lang/Object;

.field private parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

.field private player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

.field private playerBuffering:Z

.field private final playerHandler:Landroid/os/Handler;

.field private playerReady:Z

.field private playerState:I

.field private resetFlag:Z

.field private seeking:Z

.field private sendApiDataThread:Ljava/lang/Thread;

.field private setMediaSourceThread:Ljava/lang/Thread;

.field private shouldPlay:Z

.field private songId:Ljava/lang/String;

.field private songPos:I

.field private songSetTime:J

.field private songUrl:Ljava/lang/String;

.field private startPosition:J

.field private final tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

.field private final uiHandler:Landroid/os/Handler;

.field private urlLoaded:Z

.field private userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/MultiExoPlayer;Landroid/content/Context;I)V
    .registers 9

    .line 400
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->playerHandler:Landroid/os/Handler;

    .line 363
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->initLock:Ljava/lang/Object;

    .line 364
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->paramLock:Ljava/lang/Object;

    .line 365
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->multiLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 368
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->playerReady:Z

    const/4 v1, 0x0

    .line 369
    iput-object v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->sendApiDataThread:Ljava/lang/Thread;

    .line 370
    iput-object v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setMediaSourceThread:Ljava/lang/Thread;

    .line 371
    iput-object v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->bufferMonitorThread:Ljava/lang/Thread;

    .line 373
    iput-object v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->songId:Ljava/lang/String;

    .line 374
    iput-object v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->songUrl:Ljava/lang/String;

    const/4 v2, -0x1

    .line 375
    iput v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->songPos:I

    const-wide/16 v3, -0x1

    .line 376
    iput-wide v3, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->songSetTime:J

    .line 377
    iput-object v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    .line 382
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->isBuffering:Z

    const/4 v1, 0x1

    .line 383
    iput v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->playerState:I

    .line 384
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->playerBuffering:Z

    .line 385
    iput v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->bufferProgress:I

    .line 386
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->resetFlag:Z

    .line 387
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->urlLoaded:Z

    const-string v1, ""

    .line 388
    iput-object v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->musicApi:Ljava/lang/String;

    .line 389
    iput-object v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->loginCode:Ljava/lang/String;

    .line 390
    iput-object v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->userId:Ljava/lang/String;

    .line 391
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->shouldPlay:Z

    .line 392
    iput-wide v3, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->startPosition:J

    .line 393
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->noFlac:Z

    .line 394
    iput v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->errorCount:I

    .line 395
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->seeking:Z

    .line 397
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->apiData:Ljava/util/HashMap;

    .line 398
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->cacheApiData:Ljava/util/HashMap;

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExoPlayer_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->tag:Ljava/lang/String;

    .line 402
    iput-object p2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->context:Landroid/content/Context;

    .line 403
    new-instance p2, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3, p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$1;-><init>(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;Landroid/os/Looper;Lcom/phicomm/speaker/player/model/MultiExoPlayer;)V

    iput-object p2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->uiHandler:Landroid/os/Handler;

    .line 416
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->initPlayer()V

    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;
    .registers 1

    .line 359
    iget-object p0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Ljava/lang/String;
    .registers 1

    .line 359
    iget-object p0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->tag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)V
    .registers 1

    .line 359
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->reloadUrl()V

    return-void
.end method

.method static synthetic access$1100(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Ljava/lang/Object;
    .registers 1

    .line 359
    iget-object p0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->multiLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Landroid/os/Handler;
    .registers 1

    .line 359
    iget-object p0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->uiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Z
    .registers 1

    .line 359
    iget-boolean p0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->resetFlag:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;Z)Z
    .registers 2

    .line 359
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->resetFlag:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;Z)Z
    .registers 2

    .line 359
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->playerBuffering:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;Z)Z
    .registers 2

    .line 359
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->seeking:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Z
    .registers 1

    .line 359
    iget-boolean p0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->shouldPlay:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)J
    .registers 3

    .line 359
    iget-wide v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->startPosition:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;J)J
    .registers 3

    .line 359
    iput-wide p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->startPosition:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;
    .registers 1

    .line 359
    iget-object p0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->bufferUpdateListener:Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/model/MultiExoPlayer;
    .registers 1

    .line 359
    iget-object p0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Z
    .registers 1

    .line 359
    iget-boolean p0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->isBuffering:Z

    return p0
.end method

.method static synthetic access$502(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;Z)Z
    .registers 2

    .line 359
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->isBuffering:Z

    return p1
.end method

.method static synthetic access$600(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)I
    .registers 1

    .line 359
    iget p0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->songPos:I

    return p0
.end method

.method static synthetic access$702(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;Z)Z
    .registers 2

    .line 359
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->urlLoaded:Z

    return p1
.end method

.method static synthetic access$800(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)I
    .registers 1

    .line 359
    iget p0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->errorCount:I

    return p0
.end method

.method static synthetic access$802(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;I)I
    .registers 2

    .line 359
    iput p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->errorCount:I

    return p1
.end method

.method static synthetic access$808(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)I
    .registers 3

    .line 359
    iget v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->errorCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->errorCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Z
    .registers 1

    .line 359
    iget-boolean p0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->noFlac:Z

    return p0
.end method

.method static synthetic access$902(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;Z)Z
    .registers 2

    .line 359
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->noFlac:Z

    return p1
.end method

.method private fetchMusicUrl(Ljava/lang/String;)Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;
    .registers 11

    const-string v0, ""

    .line 948
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->musicApi:Ljava/lang/String;

    .line 949
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->loginCode:Ljava/lang/String;

    .line 950
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->userId:Ljava/lang/String;

    .line 951
    iget-object v4, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaofei/server;->get_unisound_SharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "userid"

    const-string v6, "login_code"

    if-eqz v4, :cond_22

    const-string v7, "music_api"

    .line 953
    invoke-interface {v4, v7, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 954
    invoke-interface {v4, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 955
    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 957
    :cond_22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v7, 0x0

    if-nez v4, :cond_14b

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_31

    goto/16 :goto_14b

    .line 958
    :cond_31
    iput-object v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->musicApi:Ljava/lang/String;

    .line 959
    iput-object v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->loginCode:Ljava/lang/String;

    .line 960
    iput-object v3, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->userId:Ljava/lang/String;

    .line 962
    new-instance v4, Lorg/xutils/http/RequestParams;

    invoke-direct {v4, v1}, Lorg/xutils/http/RequestParams;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x3e8

    .line 963
    invoke-virtual {v4, v8}, Lorg/xutils/http/RequestParams;->setConnectTimeout(I)V

    const/16 v8, 0xbb8

    .line 964
    invoke-virtual {v4, v8}, Lorg/xutils/http/RequestParams;->setReadTimeout(I)V

    const/4 v8, 0x1

    .line 965
    invoke-virtual {v4, v8}, Lorg/xutils/http/RequestParams;->setUseCookie(Z)V

    .line 966
    invoke-virtual {v4, v6, v2}, Lorg/xutils/http/RequestParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    invoke-virtual {v4, v5, v3}, Lorg/xutils/http/RequestParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    sget v2, Lcom/phicomm/speaker/player/EchoService;->ver:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "echo_ver"

    invoke-virtual {v4, v3, v2}, Lorg/xutils/http/RequestParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "music_url"

    .line 969
    invoke-virtual {v4, v2, p1}, Lorg/xutils/http/RequestParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->get_Quality()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "quality"

    invoke-virtual {v4, v3, v2}, Lorg/xutils/http/RequestParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-boolean v2, v2, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->Support_Flac:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_9b

    .line 973
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$400()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",check Support_Flac true"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v5}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 974
    iget-boolean v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->noFlac:Z

    if-nez v2, :cond_9b

    const-string v2, "support_flac"

    const-string v5, "true"

    invoke-virtual {v4, v2, v5}, Lorg/xutils/http/RequestParams;->addBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    :cond_9b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$400()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",requestParams : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 979
    :try_start_b8
    invoke-static {}, Lorg/xutils/x;->http()Lorg/xutils/HttpManager;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-interface {v1, v4, v2}, Lorg/xutils/HttpManager;->postSync(Lorg/xutils/http/RequestParams;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_ca

    .line 981
    invoke-virtual {p0, v7, v7}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setApiData(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    return-object v7

    .line 984
    :cond_ca
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$400()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",requestResult : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 985
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 986
    invoke-virtual {p0, p1, v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setApiData(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 987
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->sendApiData()V

    if-eqz v1, :cond_146

    const-string v2, "code"

    .line 990
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v4, "url"

    .line 991
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-ne v2, v8, :cond_146

    .line 992
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_146

    .line 993
    new-instance v2, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;

    invoke-direct {v2, v0}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;-><init>(Ljava/lang/String;)V

    .line 994
    invoke-virtual {v2, v4}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->setUrl(Ljava/lang/String;)V

    const-string v4, "album"

    .line 995
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->setAlbum(Ljava/lang/String;)V

    const-string v4, "artist"

    .line 996
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->setArtist(Ljava/lang/String;)V

    const-string v4, "title"

    .line 997
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->setTitle(Ljava/lang/String;)V

    .line 998
    invoke-virtual {v2, p1}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->setId(Ljava/lang/String;)V

    .line 999
    invoke-virtual {v2, v3}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->setCollected(Z)V

    const-wide/16 v4, 0x0

    .line 1000
    invoke-virtual {v2, v4, v5}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->setDuration(D)V

    .line 1001
    invoke-virtual {v2, v3}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->setErrorCode(I)V

    .line 1002
    invoke-virtual {v2, v0}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->setHdImgUrl(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {v2, v0}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->setImgUrl(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {v2, v0}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->setLyric(Ljava/lang/String;)V
    :try_end_145
    .catchall {:try_start_b8 .. :try_end_145} :catchall_147

    return-object v2

    :cond_146
    return-object v7

    :catchall_147
    move-exception p1

    .line 1010
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_14b
    :goto_14b
    return-object v7
.end method

.method private handlePlayError()V
    .registers 7

    .line 1016
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->multiLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1017
    :try_start_3
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    if-eqz v1, :cond_40

    .line 1018
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object v1, v1, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->listenerLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_42

    .line 1019
    :try_start_c
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object v2, v2, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnErrorListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnErrorListener;

    if-eqz v2, :cond_3b

    .line 1020
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$400()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",Play_Error OnErrorListener :sendEmptyMessageDelayed:1000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1021
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object v2, v2, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mHandler:Lcom/phicomm/speaker/player/model/MultiExoPlayer$EventHandler;

    const/16 v3, 0xc

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$EventHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1022
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->stop()V

    .line 1024
    :cond_3b
    monitor-exit v1

    goto :goto_40

    :catchall_3d
    move-exception v2

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_c .. :try_end_3f} :catchall_3d

    :try_start_3f
    throw v2

    .line 1026
    :cond_40
    :goto_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_42

    throw v1
.end method

.method private initListeners()V
    .registers 3

    .line 448
    new-instance v0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance$2;-><init>(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->exoListener:Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;

    .line 583
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->addListener(Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;)V

    .line 585
    new-instance v0, Lcom/phicomm/speaker/player/model/-$$Lambda$MultiExoPlayer$PlayerInstance$idrOD1OqPufpJyWxP_zJngqeHjY;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/model/-$$Lambda$MultiExoPlayer$PlayerInstance$idrOD1OqPufpJyWxP_zJngqeHjY;-><init>(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->bufferUpdateListener:Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;

    return-void
.end method

.method private initPlayer()V
    .registers 7

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Init_Player start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    :try_start_1b
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->playerReady:Z

    if-eqz v0, :cond_29

    .line 428
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->playerReady:Z

    .line 429
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->release()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_24} :catch_25

    goto :goto_29

    :catch_25
    move-exception v0

    .line 432
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 434
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->initLock:Ljava/lang/Object;

    monitor-enter v0

    .line 436
    :try_start_2c
    new-instance v2, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-boolean v4, v4, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->Support_Flac:Z

    iget-object v5, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->playerHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4, v5}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;-><init>(Landroid/content/Context;ZLandroid/os/Handler;)V

    iput-object v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    const/4 v3, 0x1

    .line 437
    iput-boolean v3, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->playerReady:Z

    .line 438
    iget-object v4, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->context:Landroid/content/Context;

    invoke-virtual {v2, v4, v3}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 439
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->initListeners()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_46} :catch_49
    .catchall {:try_start_2c .. :try_end_46} :catchall_47

    goto :goto_4d

    :catchall_47
    move-exception v1

    goto :goto_69

    :catch_49
    move-exception v2

    .line 441
    :try_start_4a
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 443
    :goto_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_47

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",Init_Player end"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 443
    :goto_69
    :try_start_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_47

    throw v1
.end method

.method private interruptThread(Ljava/lang/Thread;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 736
    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_b
    return-void
.end method

.method private reloadUrl()V
    .registers 5

    .line 930
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setStartPosition(J)V

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",ReLoadUrl SongPos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getSongPos()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " StartPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getStartPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 932
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getSongId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getSongUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getSongPos()I

    move-result v2

    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getPlayFlag()Z

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setMediaSource(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method getApiData()Ljava/lang/String;
    .registers 4

    .line 740
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 741
    :cond_6
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->cacheApiData:Ljava/util/HashMap;

    monitor-enter v0

    .line 742
    :try_start_9
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->cacheApiData:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_16
    move-exception v1

    .line 743
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_16

    throw v1
.end method

.method getBufferProgress()I
    .registers 3

    .line 663
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->paramLock:Ljava/lang/Object;

    monitor-enter v0

    .line 664
    :try_start_3
    iget v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->bufferProgress:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 665
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getPlayFlag()Z
    .registers 3

    .line 687
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->paramLock:Ljava/lang/Object;

    monitor-enter v0

    .line 688
    :try_start_3
    iget-boolean v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->shouldPlay:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 689
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getPlayerState()I
    .registers 3

    .line 651
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->paramLock:Ljava/lang/Object;

    monitor-enter v0

    .line 652
    :try_start_3
    iget v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->playerState:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 653
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getSongId()Ljava/lang/String;
    .registers 3

    .line 603
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->paramLock:Ljava/lang/Object;

    monitor-enter v0

    .line 604
    :try_start_3
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->songId:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 605
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getSongPos()I
    .registers 3

    .line 627
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->paramLock:Ljava/lang/Object;

    monitor-enter v0

    .line 628
    :try_start_3
    iget v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->songPos:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 629
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getSongSetTime()J
    .registers 4

    .line 639
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->paramLock:Ljava/lang/Object;

    monitor-enter v0

    .line 640
    :try_start_3
    iget-wide v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->songSetTime:J

    monitor-exit v0

    return-wide v1

    :catchall_7
    move-exception v1

    .line 641
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getSongUrl()Ljava/lang/String;
    .registers 3

    .line 615
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->paramLock:Ljava/lang/Object;

    monitor-enter v0

    .line 616
    :try_start_3
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->songUrl:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 617
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getStartPosition()J
    .registers 4

    .line 699
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->paramLock:Ljava/lang/Object;

    monitor-enter v0

    .line 700
    :try_start_3
    iget-wide v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->startPosition:J

    monitor-exit v0

    return-wide v1

    :catchall_7
    move-exception v1

    .line 701
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method isUrlLoaded()Z
    .registers 3

    .line 675
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->paramLock:Ljava/lang/Object;

    monitor-enter v0

    .line 676
    :try_start_3
    iget-boolean v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->urlLoaded:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 677
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public synthetic lambda$initListeners$0$MultiExoPlayer$PlayerInstance(I)V
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-ne p1, v1, :cond_7

    .line 586
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->playerBuffering:Z

    .line 587
    :cond_7
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getBufferProgress()I

    move-result v1

    if-eq p1, v1, :cond_6f

    .line 588
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setBufferProgress(I)V

    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",onBufferingUpdate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",SongPos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->songPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->playerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",Player_Buffer_ing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->playerBuffering:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 590
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->multiLock:Ljava/lang/Object;

    monitor-enter v0

    .line 591
    :try_start_4e
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object v1, v1, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->listenerLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_6c

    .line 592
    :try_start_53
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    if-eqz v2, :cond_66

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object v2, v2, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnBufferingUpdateListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnBufferingUpdateListener;

    if-eqz v2, :cond_66

    .line 593
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object v2, v2, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnBufferingUpdateListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnBufferingUpdateListener;

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-interface {v2, v3, p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/phicomm/speaker/player/model/MultiExoPlayer;I)V

    .line 595
    :cond_66
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_53 .. :try_end_67} :catchall_69

    .line 596
    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_6c

    goto :goto_6f

    :catchall_69
    move-exception p1

    .line 595
    :try_start_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    :try_start_6b
    throw p1

    :catchall_6c
    move-exception p1

    .line 596
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6c

    throw p1

    :cond_6f
    :goto_6f
    return-void
.end method

.method public synthetic lambda$setMediaSource$2$MultiExoPlayer$PlayerInstance(Ljava/lang/String;ILjava/lang/String;)V
    .registers 10

    .line 872
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->exoListener:Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->addListener(Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;)V

    .line 873
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->multiLock:Ljava/lang/Object;

    monitor-enter v0

    .line 874
    :try_start_a
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object v1, v1, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->listenerLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_10b

    .line 875
    :try_start_f
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    const/4 v3, -0x1

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object v2, v2, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnInfoListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnInfoListener;

    if-eqz v2, :cond_25

    .line 876
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object v2, v2, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnInfoListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnInfoListener;

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    const/16 v5, 0x2bf

    invoke-interface {v2, v4, v5, v3}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnInfoListener;->onInfo(Lcom/phicomm/speaker/player/model/MultiExoPlayer;II)Z

    .line 878
    :cond_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_108

    .line 879
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_10b

    .line 881
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getStartPosition()J

    move-result-wide v0

    .line 882
    invoke-virtual {p0, v3}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setBufferProgress(I)V

    .line 883
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setSongId(Ljava/lang/String;)V

    .line 884
    invoke-virtual {p0, p2}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setSongPos(I)V

    .line 885
    invoke-virtual {p0, p3}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setSongUrl(Ljava/lang/String;)V

    .line 886
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setSongSetTime(J)V

    const-string v2, "get_music_url:"

    .line 889
    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8d

    const/16 p1, 0xe

    .line 890
    invoke-virtual {p3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 891
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$400()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",setMediaSource_Thread pos:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " id:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x3

    :goto_73
    if-lez v2, :cond_94

    .line 893
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->fetchMusicUrl(Ljava/lang/String;)Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;

    move-result-object v4

    if-eqz v4, :cond_8a

    .line 894
    invoke-virtual {v4}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8a

    .line 895
    invoke-virtual {v4}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_95

    :cond_8a
    add-int/lit8 v2, v2, -0x1

    goto :goto_73

    :cond_8d
    const/4 v2, 0x0

    .line 900
    invoke-virtual {p0, p1, v2}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setApiData(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 901
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->sendApiData()V

    :cond_94
    move-object p1, p3

    .line 904
    :goto_95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 905
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->handlePlayError()V

    return-void

    .line 909
    :cond_9f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$400()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",MediaItem.fromUri"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 910
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    .line 912
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_c8

    return-void

    :cond_c8
    const/4 v2, 0x1

    .line 913
    invoke-virtual {p0, v2}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setUrlLoaded(Z)V

    .line 914
    invoke-virtual {p0, p2}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setSongPos(I)V

    .line 915
    invoke-virtual {p0, p3}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setSongUrl(Ljava/lang/String;)V

    .line 916
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setSongSetTime(J)V

    const-wide/16 p2, -0x1

    cmp-long v4, v0, p2

    if-eqz v4, :cond_e8

    .line 919
    invoke-virtual {p0, p2, p3}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setStartPosition(J)V

    .line 920
    iget-object p2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {p2, p1, v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;J)V

    goto :goto_ed

    .line 922
    :cond_e8
    iget-object p2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {p2, p1, v2}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;Z)V

    .line 924
    :goto_ed
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$400()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",setMediaItem"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_108
    move-exception p1

    .line 878
    :try_start_109
    monitor-exit v1
    :try_end_10a
    .catchall {:try_start_109 .. :try_end_10a} :catchall_108

    :try_start_10a
    throw p1

    :catchall_10b
    move-exception p1

    .line 879
    monitor-exit v0
    :try_end_10d
    .catchall {:try_start_10a .. :try_end_10d} :catchall_10b

    goto :goto_10f

    :goto_10e
    throw p1

    :goto_10f
    goto :goto_10e
.end method

.method public synthetic lambda$startBufferMonitor$1$MultiExoPlayer$PlayerInstance()V
    .registers 8

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",BufferMonitoringTask start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x2

    const/4 v2, 0x0

    :goto_1d
    const/4 v3, -0x1

    if-eq v2, v3, :cond_83

    .line 796
    iget-object v4, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v4}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->getBufferedPercentage()I

    move-result v4

    .line 797
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getBufferProgress()I

    move-result v5

    const/16 v6, 0x64

    if-ne v5, v3, :cond_31

    if-ne v4, v6, :cond_31

    const/4 v4, -0x1

    :cond_31
    if-eq v0, v4, :cond_5f

    .line 800
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v5, 0x1

    .line 801
    iput v5, v0, Landroid/os/Message;->what:I

    .line 802
    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 803
    iget-object v5, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$400()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",BufferMonitoringTask Buffer_progress:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v4

    :cond_5f
    if-ne v4, v6, :cond_62

    const/4 v2, -0x1

    :cond_62
    const-wide/16 v3, 0x3e8

    .line 808
    :try_start_64
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_67
    .catch Ljava/lang/InterruptedException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_1d

    .line 810
    :catch_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",BufferMonitoringTask interrupt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 814
    :cond_83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",BufferMonitoringTask Buffer_progress:100"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 815
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",BufferMonitoringTask interrupt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 819
    :cond_c2
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->multiLock:Ljava/lang/Object;

    monitor-enter v0

    .line 820
    :try_start_c5
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object v2, v2, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->listenerLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_ca
    .catchall {:try_start_c5 .. :try_end_ca} :catchall_124

    .line 821
    :try_start_ca
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_d7

    monitor-exit v2
    :try_end_d5
    .catchall {:try_start_ca .. :try_end_d5} :catchall_121

    :try_start_d5
    monitor-exit v0
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_124

    return-void

    .line 822
    :cond_d7
    :try_start_d7
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    if-eqz v3, :cond_104

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object v3, v3, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnBufferingUpdateListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnBufferingUpdateListener;

    if-eqz v3, :cond_104

    .line 823
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$400()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",BufferMonitoringTask sendEmptyMessage 10"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 824
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object v3, v3, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mHandler:Lcom/phicomm/speaker/player/model/MultiExoPlayer$EventHandler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$EventHandler;->sendEmptyMessage(I)Z

    .line 826
    :cond_104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$400()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",BufferMonitoringTask end"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 827
    monitor-exit v2
    :try_end_11f
    .catchall {:try_start_d7 .. :try_end_11f} :catchall_121

    .line 828
    :try_start_11f
    monitor-exit v0
    :try_end_120
    .catchall {:try_start_11f .. :try_end_120} :catchall_124

    return-void

    :catchall_121
    move-exception v1

    .line 827
    :try_start_122
    monitor-exit v2
    :try_end_123
    .catchall {:try_start_122 .. :try_end_123} :catchall_121

    :try_start_123
    throw v1

    :catchall_124
    move-exception v1

    .line 828
    monitor-exit v0
    :try_end_126
    .catchall {:try_start_123 .. :try_end_126} :catchall_124

    goto :goto_128

    :goto_127
    throw v1

    :goto_128
    goto :goto_127
.end method

.method pause()Z
    .registers 3

    const/4 v0, 0x0

    .line 850
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setPlayFlag(Z)V

    .line 851
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setPlayWhenReady(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method play()Z
    .registers 7

    .line 834
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setMediaSourceThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 835
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setPlayFlag(Z)V

    return v1

    .line 838
    :cond_f
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getBufferProgress()I

    move-result v0

    const/16 v2, 0x64

    if-eq v0, v2, :cond_3b

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3b

    .line 839
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->isUrlLoaded()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getSongSetTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xdbba0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3b

    :cond_30
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->seeking:Z

    if-nez v0, :cond_3b

    .line 840
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setPlayFlag(Z)V

    .line 841
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->reloadUrl()V

    return v1

    .line 844
    :cond_3b
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setPlayFlag(Z)V

    .line 845
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setPlayWhenReady(Z)V

    return v1
.end method

.method reinit()V
    .registers 1

    .line 420
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->release()V

    .line 421
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->initPlayer()V

    return-void
.end method

.method release()V
    .registers 5

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",release start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1031
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->multiLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1032
    :try_start_1e
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->stop()V

    .line 1033
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->initLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_4b

    .line 1034
    :try_start_24
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->playerReady:Z

    .line 1035
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v3}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->release()V

    .line 1036
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_48

    .line 1037
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_4b

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",release end"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_48
    move-exception v1

    .line 1036
    :try_start_49
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    :try_start_4a
    throw v1

    :catchall_4b
    move-exception v1

    .line 1037
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method replay()V
    .registers 3

    const-wide/16 v0, -0x1

    .line 778
    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->replay(J)V

    return-void
.end method

.method replay(J)V
    .registers 6

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",re_play"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, -0x1

    .line 783
    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setStartPosition(J)V

    .line 784
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->startBufferMonitor()V

    cmp-long v2, p1, v0

    if-eqz v2, :cond_2d

    .line 785
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->seekTo(J)V

    goto :goto_34

    .line 786
    :cond_2d
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->seekTo(J)V

    :goto_34
    return-void
.end method

.method reset()V
    .registers 7

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",reset start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 712
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->bufferMonitorThread:Ljava/lang/Thread;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->interruptThread(Ljava/lang/Thread;)V

    .line 713
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setMediaSourceThread:Ljava/lang/Thread;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->interruptThread(Ljava/lang/Thread;)V

    .line 714
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->sendApiDataThread:Ljava/lang/Thread;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->interruptThread(Ljava/lang/Thread;)V

    .line 715
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->exoListener:Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->removeListener(Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;)V

    .line 716
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->seeking:Z

    .line 717
    iput v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->errorCount:I

    .line 718
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-boolean v0, v0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->Support_Flac:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->noFlac:Z

    const/4 v0, 0x0

    .line 719
    invoke-virtual {p0, v0, v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setApiData(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 720
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setPlayFlag(Z)V

    const-wide/16 v3, -0x1

    .line 721
    invoke-virtual {p0, v3, v4}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setStartPosition(J)V

    .line 722
    iput-boolean v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->resetFlag:Z

    const/4 v5, -0x1

    .line 723
    invoke-virtual {p0, v5}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setBufferProgress(I)V

    .line 724
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->isBuffering:Z

    .line 725
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->playerBuffering:Z

    .line 726
    invoke-virtual {p0, v2}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setPlayerState(I)V

    .line 727
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setUrlLoaded(Z)V

    const-string v2, ""

    .line 728
    invoke-virtual {p0, v2}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setSongUrl(Ljava/lang/String;)V

    .line 729
    invoke-virtual {p0, v5}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setSongPos(I)V

    .line 730
    invoke-virtual {p0, v3, v4}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setSongSetTime(J)V

    .line 731
    iput-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",reset end"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method seekTo(I)V
    .registers 5

    const/4 v0, 0x1

    .line 861
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->seeking:Z

    .line 862
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->seekTo(J)V

    return-void
.end method

.method sendApiData()V
    .registers 4

    .line 747
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->apiData:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 748
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->Format()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v2, "Format"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->MediaMetadata()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "MediaMetadata"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->cacheApiData:Ljava/util/HashMap;

    monitor-enter v1

    .line 751
    :try_start_20
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->cacheApiData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 752
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->cacheApiData:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 753
    monitor-exit v1

    return-void

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method setApiData(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .registers 7

    .line 758
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->apiData:Ljava/util/HashMap;

    monitor-enter v0

    if-eqz p1, :cond_48

    .line 760
    :try_start_5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "id"

    .line 761
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "time"

    .line 762
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getSongSetTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2f

    const-string p1, "api_data"

    .line 764
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "quality"

    const-string v2, "quality_int"

    .line 765
    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    :cond_2f
    const-string p1, "quality"

    const/4 p2, -0x2

    .line 767
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "url"

    .line 768
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getSongUrl()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    :goto_42
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->apiData:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_4d

    .line 772
    :cond_48
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->apiData:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 774
    :goto_4d
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception p1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_5 .. :try_end_51} :catchall_4f

    throw p1
.end method

.method setBufferProgress(I)V
    .registers 3

    .line 669
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->paramLock:Ljava/lang/Object;

    monitor-enter v0

    .line 670
    :try_start_3
    iput p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->bufferProgress:I

    .line 671
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method setListener(Lcom/phicomm/speaker/player/model/MultiExoPlayer;)V
    .registers 3

    .line 1042
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->multiLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1043
    :try_start_3
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->parent:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    .line 1044
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 1045
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->sendApiData()V

    return-void

    :catchall_a
    move-exception p1

    .line 1044
    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p1
.end method

.method setMediaSource(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 6

    .line 866
    invoke-virtual {p0, p4}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setPlayFlag(Z)V

    .line 867
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->startBufferMonitor()V

    .line 868
    iget-object p4, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->exoListener:Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;

    invoke-virtual {p4, v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->removeListener(Lcom/phicomm/speaker/player/exomedia/core/listener/ExoPlayerListener;)V

    .line 870
    iget-object p4, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setMediaSourceThread:Ljava/lang/Thread;

    invoke-direct {p0, p4}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->interruptThread(Ljava/lang/Thread;)V

    .line 871
    new-instance p4, Ljava/lang/Thread;

    new-instance v0, Lcom/phicomm/speaker/player/model/-$$Lambda$MultiExoPlayer$PlayerInstance$tGN4c501dlNMRWqTxVy4ZkkpPX8;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/phicomm/speaker/player/model/-$$Lambda$MultiExoPlayer$PlayerInstance$tGN4c501dlNMRWqTxVy4ZkkpPX8;-><init>(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p4, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setMediaSourceThread:Ljava/lang/Thread;

    .line 926
    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method setPlayFlag(Z)V
    .registers 3

    .line 693
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->paramLock:Ljava/lang/Object;

    monitor-enter v0

    .line 694
    :try_start_3
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->shouldPlay:Z

    .line 695
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method setPlayerState(I)V
    .registers 3

    .line 657
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->paramLock:Ljava/lang/Object;

    monitor-enter v0

    .line 658
    :try_start_3
    iput p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->playerState:I

    .line 659
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method setSongId(Ljava/lang/String;)V
    .registers 3

    .line 609
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->paramLock:Ljava/lang/Object;

    monitor-enter v0

    .line 610
    :try_start_3
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->songId:Ljava/lang/String;

    .line 611
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method setSongPos(I)V
    .registers 3

    .line 633
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->paramLock:Ljava/lang/Object;

    monitor-enter v0

    .line 634
    :try_start_3
    iput p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->songPos:I

    .line 635
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method setSongSetTime(J)V
    .registers 4

    .line 645
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->paramLock:Ljava/lang/Object;

    monitor-enter v0

    .line 646
    :try_start_3
    iput-wide p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->songSetTime:J

    .line 647
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method setSongUrl(Ljava/lang/String;)V
    .registers 3

    .line 621
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->paramLock:Ljava/lang/Object;

    monitor-enter v0

    .line 622
    :try_start_3
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->songUrl:Ljava/lang/String;

    .line 623
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method setStartPosition(J)V
    .registers 4

    .line 705
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->paramLock:Ljava/lang/Object;

    monitor-enter v0

    .line 706
    :try_start_3
    iput-wide p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->startPosition:J

    .line 707
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method setUrlLoaded(Z)V
    .registers 3

    .line 681
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->paramLock:Ljava/lang/Object;

    monitor-enter v0

    .line 682
    :try_start_3
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->urlLoaded:Z

    .line 683
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method startBufferMonitor()V
    .registers 3

    .line 790
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->bufferMonitorThread:Ljava/lang/Thread;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->interruptThread(Ljava/lang/Thread;)V

    .line 791
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/phicomm/speaker/player/model/-$$Lambda$MultiExoPlayer$PlayerInstance$R6HiM8oddVn4uLvgCPY6xFwqbJc;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/-$$Lambda$MultiExoPlayer$PlayerInstance$R6HiM8oddVn4uLvgCPY6xFwqbJc;-><init>(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->bufferMonitorThread:Ljava/lang/Thread;

    .line 830
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method stop()V
    .registers 2

    .line 856
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->reset()V

    .line 857
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->stop()V

    return-void
.end method

.method switchQuality(I)V
    .registers 4

    .line 936
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getApiData()Ljava/lang/String;

    move-result-object v0

    .line 938
    instance-of v1, v0, Ljava/util/HashMap;

    if-eqz v1, :cond_19

    .line 939
    check-cast v0, Ljava/util/HashMap;

    const-string v1, "quality"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_19

    .line 940
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1b

    :cond_19
    const/16 v0, -0x3039

    :goto_1b
    if-eq v0, p1, :cond_20

    .line 943
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->reloadUrl()V

    :cond_20
    return-void
.end method
