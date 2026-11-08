.class public Lcom/phicomm/speaker/player/model/MultiExoPlayer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/model/MultiExoPlayer$EventHandler;,
        Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;,
        Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnPreparedListener;,
        Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnPlayTimeOutListener;,
        Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnInfoListener;,
        Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnErrorListener;,
        Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnCompletionListener;,
        Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnBufferingUpdateListener;
    }
.end annotation


# static fields
.field private static final BUFFERING_COMPLETED:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT_DELAY:I = 0x2710

.field private static final URL_VALID_TIMEOUT_DELAY:I = 0xdbba0

.field private static staticInstance:Lcom/phicomm/speaker/player/model/MultiExoPlayer;


# instance fields
.field public STATE_BUFFERING:I

.field public STATE_ENDED:I

.field public STATE_ERROR:I

.field public STATE_IDLE:I

.field public STATE_READY:I

.field public Support_Flac:Z

.field private context:Landroid/content/Context;

.field private currentPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

.field final listenerLock:Ljava/lang/Object;

.field public mHandler:Lcom/phicomm/speaker/player/model/MultiExoPlayer$EventHandler;

.field public mOnBufferingUpdateListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnBufferingUpdateListener;

.field public mOnCompletionListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnCompletionListener;

.field public mOnErrorListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnErrorListener;

.field public mOnInfoListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnInfoListener;

.field public mOnPlayTimeOutListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnPlayTimeOutListener;

.field public mOnPreparedListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnPreparedListener;

.field private playerInit:Z

.field private final playerLock:Ljava/lang/Object;

.field private players:[Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

.field private quality:I

.field final qualityLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 76
    const-class v0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->playerLock:Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->listenerLock:Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->qualityLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 36
    iput v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->STATE_IDLE:I

    const/4 v1, 0x2

    .line 37
    iput v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->STATE_BUFFERING:I

    const/4 v1, 0x3

    .line 38
    iput v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->STATE_READY:I

    const/4 v2, 0x4

    .line 39
    iput v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->STATE_ENDED:I

    const/4 v2, 0x5

    .line 40
    iput v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->STATE_ERROR:I

    const/4 v2, 0x0

    .line 72
    iput-boolean v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->playerInit:Z

    const/4 v3, 0x0

    .line 80
    iput-object v3, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnBufferingUpdateListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnBufferingUpdateListener;

    .line 81
    iput-object v3, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnCompletionListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnCompletionListener;

    .line 82
    iput-object v3, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnErrorListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnErrorListener;

    .line 83
    iput-object v3, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnInfoListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnInfoListener;

    .line 84
    iput-object v3, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnPlayTimeOutListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnPlayTimeOutListener;

    .line 85
    iput-object v3, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnPreparedListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnPreparedListener;

    .line 88
    iput-object v3, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->currentPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    .line 89
    iput-boolean v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->Support_Flac:Z

    .line 91
    iput v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->quality:I

    .line 123
    new-instance v2, Lcom/phicomm/speaker/player/model/MultiExoPlayer$EventHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, p0, v3}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$EventHandler;-><init>(Lcom/phicomm/speaker/player/model/MultiExoPlayer;Lcom/phicomm/speaker/player/model/MultiExoPlayer;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mHandler:Lcom/phicomm/speaker/player/model/MultiExoPlayer$EventHandler;

    .line 124
    invoke-static {}, Lcom/xiaofei/server;->exists_FLAC()Z

    move-result v2

    iput-boolean v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->Support_Flac:Z

    if-eqz v2, :cond_51

    const/4 v0, 0x3

    :cond_51
    const-string v1, "Quality"

    .line 125
    invoke-static {p1, v1, v0}, Lcom/phicomm/speaker/player/helpers/SPHelper;->getIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->quality:I

    .line 126
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->initPlayers(Landroid/content/Context;)V

    .line 127
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1800(Lcom/phicomm/speaker/player/model/MultiExoPlayer;)Landroid/content/Context;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/phicomm/speaker/player/model/MultiExoPlayer;Landroid/content/Context;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->initPlayers(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .line 30
    sget-object v0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getIdlePlayer()Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;
    .registers 5

    .line 200
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->currentPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 201
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->players:[Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    aget-object v0, v0, v1

    return-object v0

    .line 203
    :cond_a
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->players:[Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    aget-object v3, v2, v1

    if-ne v0, v3, :cond_14

    const/4 v0, 0x1

    aget-object v0, v2, v0

    goto :goto_16

    :cond_14
    aget-object v0, v2, v1

    :goto_16
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/phicomm/speaker/player/model/MultiExoPlayer;
    .registers 2

    .line 95
    sget-object v0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->staticInstance:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    if-nez v0, :cond_b

    .line 96
    new-instance v0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->staticInstance:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    .line 98
    :cond_b
    sget-object p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->staticInstance:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    return-object p0
.end method

.method private initPlayers(Landroid/content/Context;)V
    .registers 8

    .line 131
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->playerInit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 132
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->playerInit:Z

    .line 133
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->playerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_a
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->players:[Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_1e

    aget-object v5, v2, v4

    .line 136
    invoke-virtual {v5}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->release()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_1a
    .catchall {:try_start_a .. :try_end_15} :catchall_18

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :catchall_18
    move-exception p1

    goto :goto_20

    :catch_1a
    move-exception v2

    .line 139
    :try_start_1b
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    :cond_1e
    monitor-exit v0

    goto :goto_22

    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_18

    throw p1

    :cond_22
    :goto_22
    const/4 v0, 0x2

    :try_start_23
    new-array v2, v0, [Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    .line 144
    new-instance v3, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    const/4 v4, 0x1

    invoke-direct {v3, p0, p1, v4}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;-><init>(Lcom/phicomm/speaker/player/model/MultiExoPlayer;Landroid/content/Context;I)V

    aput-object v3, v2, v1

    new-instance v1, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    invoke-direct {v1, p0, p1, v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;-><init>(Lcom/phicomm/speaker/player/model/MultiExoPlayer;Landroid/content/Context;I)V

    aput-object v1, v2, v4

    iput-object v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->players:[Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    .line 145
    iput-boolean v4, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->playerInit:Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_38} :catch_39

    goto :goto_3d

    :catch_39
    move-exception p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3d
    return-void
.end method


# virtual methods
.method public Switch_Quality()V
    .registers 4

    .line 107
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->context:Landroid/content/Context;

    iget v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->quality:I

    const-string v2, "Quality"

    invoke-static {v0, v2, v1}, Lcom/phicomm/speaker/player/helpers/SPHelper;->getIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 108
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->qualityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_d
    iput v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->quality:I

    .line 110
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_18

    .line 111
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->currentPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    if-eqz v1, :cond_17

    .line 112
    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->switchQuality(I)V

    :cond_17
    return-void

    :catchall_18
    move-exception v0

    .line 110
    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public duration()I
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->currentPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    .line 153
    :cond_6
    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;
    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$000(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getApiData()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->currentPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getApiData()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getAudioSessionId()I
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->currentPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_e

    :cond_6
    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;
    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$000(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->getAudioSessionId()I

    move-result v0

    :goto_e
    return v0
.end method

.method public get_Quality()I
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->qualityLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_3
    iget v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->quality:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 119
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isInitialized()Z
    .registers 2

    .line 161
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->playerInit:Z

    return v0
.end method

.method public isParparingNext()Z
    .registers 4

    .line 165
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->getIdlePlayer()Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getPlayerState()I

    move-result v0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",isParparingNext, Player_State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public isPaused()Z
    .registers 2

    .line 171
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->isPlaying()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->currentPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    if-eqz v0, :cond_10

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;
    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$000(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isStarted()Z
    .registers 4

    .line 179
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->currentPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 180
    :cond_6
    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getPlayerState()I

    move-result v0

    iget v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->STATE_ERROR:I

    if-eq v0, v2, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public pause()Z
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->currentPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->pause()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public position()I
    .registers 3

    .line 188
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->currentPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    .line 189
    :cond_6
    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;
    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$000(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public preparingChangeToCurrentPlayer(Z)Z
    .registers 4

    .line 193
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->currentPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getPlayerState()I

    move-result v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->STATE_READY:I

    if-ne v0, v1, :cond_15

    if-eqz p1, :cond_13

    .line 194
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->start()Z

    move-result p1

    goto :goto_14

    :cond_13
    const/4 p1, 0x1

    :goto_14
    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public release()V
    .registers 5

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",release"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    :try_start_19
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->currentPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->currentPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    .line 212
    :cond_20
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->players:[Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    array-length v2, v0

    :goto_23
    if-ge v1, v2, :cond_31

    aget-object v3, v0, v1

    .line 213
    invoke-virtual {v3}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->reinit()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2a} :catch_2d

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :catch_2d
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_31
    return-void
.end method

.method public seek(I)I
    .registers 3

    .line 221
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->currentPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    if-nez v0, :cond_6

    const/4 p1, -0x1

    return p1

    .line 222
    :cond_6
    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->seekTo(I)V

    return p1
.end method

.method public setAudioSessionId(I)V
    .registers 2

    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/lang/String;IZJ)V
    .registers 25

    move-object/from16 v1, p0

    move/from16 v0, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    const-string v5, ",setDataSource "

    if-nez p2, :cond_f

    :try_start_c
    const-string v6, ""

    goto :goto_11

    :cond_f
    move-object/from16 v6, p2

    .line 233
    :goto_11
    invoke-direct/range {p0 .. p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->getIdlePlayer()Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    move-result-object v7

    .line 235
    iget-object v8, v1, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->currentPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    if-eqz v8, :cond_2b

    .line 236
    iget-object v8, v1, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->currentPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    invoke-virtual {v8}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->pause()Z

    .line 237
    iget-object v8, v1, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->currentPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setListener(Lcom/phicomm/speaker/player/model/MultiExoPlayer;)V

    .line 238
    iput-object v9, v1, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->currentPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    const-wide/16 v8, 0x64

    .line 239
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 243
    :cond_2b
    iget-object v8, v1, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->players:[Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    array-length v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_30
    if-ge v11, v9, :cond_e7

    aget-object v12, v8, v11

    .line 244
    invoke-virtual {v12}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getSongPos()I

    move-result v13

    if-eq v13, v0, :cond_62

    .line 245
    invoke-virtual {v12}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getSongUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9c

    invoke-virtual {v12}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->isUrlLoaded()Z

    move-result v13

    if-eqz v13, :cond_9c

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getSongSetTime()J

    move-result-wide v15

    sub-long/2addr v13, v15

    const-wide/32 v15, 0xdbba0

    cmp-long v17, v13, v15

    if-ltz v17, :cond_62

    invoke-virtual {v12}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getBufferProgress()I

    move-result v13

    const/16 v14, 0x64

    if-ne v13, v14, :cond_9c

    .line 247
    :cond_62
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->tag:Ljava/lang/String;
    invoke-static {v12}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$100(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " Player_State:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getPlayerState()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-array v14, v10, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    invoke-virtual {v12}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getPlayerState()I

    move-result v13

    iget v14, v1, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->STATE_READY:I

    if-eq v13, v14, :cond_9f

    invoke-virtual {v12}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getPlayerState()I

    move-result v13

    iget v14, v1, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->STATE_ENDED:I

    if-ne v13, v14, :cond_9c

    goto :goto_9f

    :cond_9c
    add-int/lit8 v11, v11, 0x1

    goto :goto_30

    .line 249
    :cond_9f
    :goto_9f
    invoke-virtual {v12, v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setListener(Lcom/phicomm/speaker/player/model/MultiExoPlayer;)V

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->tag:Ljava/lang/String;
    invoke-static {v12}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$100(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " CurrentPosition:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;
    invoke-static {v12}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$000(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->getCurrentPosition()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    invoke-virtual {v12, v2}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setPlayFlag(Z)V

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_dc

    .line 253
    invoke-virtual {v12, v3, v4}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->replay(J)V

    goto :goto_df

    .line 255
    :cond_dc
    invoke-virtual {v12}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->replay()V

    :goto_df
    if-eqz v2, :cond_e4

    .line 258
    invoke-virtual {v12}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->play()Z

    .line 260
    :cond_e4
    iput-object v12, v1, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->currentPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    return-void

    .line 268
    :cond_e7
    invoke-virtual {v7}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->stop()V

    .line 269
    invoke-virtual {v7, v2}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setPlayFlag(Z)V

    .line 270
    invoke-virtual {v7, v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setListener(Lcom/phicomm/speaker/player/model/MultiExoPlayer;)V

    .line 271
    invoke-virtual {v7, v3, v4}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setStartPosition(J)V

    move-object/from16 v3, p1

    .line 272
    invoke-virtual {v7, v3, v6, v0, v2}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setMediaSource(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 273
    iput-object v7, v1, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->currentPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_fa} :catch_fb

    goto :goto_108

    :catch_fb
    move-exception v0

    .line 275
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 276
    iget-object v0, v1, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mHandler:Lcom/phicomm/speaker/player/model/MultiExoPlayer$EventHandler;

    const/16 v2, 0xc

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$EventHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_108
    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnBufferingUpdateListener;)V
    .registers 3

    .line 323
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->listenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_3
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnBufferingUpdateListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnBufferingUpdateListener;

    .line 325
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public setOnCompletionListener(Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnCompletionListener;)V
    .registers 3

    .line 329
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->listenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_3
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnCompletionListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnCompletionListener;

    .line 331
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public setOnErrorListener(Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnErrorListener;)V
    .registers 3

    .line 335
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->listenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 336
    :try_start_3
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnErrorListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnErrorListener;

    .line 337
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public setOnInfoListener(Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnInfoListener;)V
    .registers 3

    .line 341
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->listenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_3
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnInfoListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnInfoListener;

    .line 343
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public setOnPlayTimeOutListener(Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnPlayTimeOutListener;)V
    .registers 3

    .line 347
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->listenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_3
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnPlayTimeOutListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnPlayTimeOutListener;

    .line 349
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public setOnPreparedListener(Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnPreparedListener;)V
    .registers 3

    .line 353
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->listenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_3
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnPreparedListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnPreparedListener;

    .line 355
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public setPreparingDataSource(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14

    if-nez p2, :cond_4

    :try_start_2
    const-string p2, ""

    .line 283
    :cond_4
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->players:[Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_40

    aget-object v4, v0, v3

    .line 284
    invoke-virtual {v4}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getSongPos()I

    move-result v5

    if-eq v5, p3, :cond_3f

    .line 285
    invoke-virtual {v4}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getSongUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-virtual {v4}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->isUrlLoaded()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getSongSetTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/32 v7, 0xdbba0

    cmp-long v9, v5, v7

    if-ltz v9, :cond_3f

    invoke-virtual {v4}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->getBufferProgress()I

    move-result v4

    const/16 v5, 0x64

    if-ne v4, v5, :cond_3c

    goto :goto_3f

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_3f
    :goto_3f
    return-void

    .line 290
    :cond_40
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->getIdlePlayer()Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->stop()V

    .line 292
    invoke-virtual {v0, p1, p2, p3, v2}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->setMediaSource(Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4a} :catch_4b

    goto :goto_4f

    :catch_4b
    move-exception p1

    .line 294
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4f
    return-void
.end method

.method public setVolume(F)V
    .registers 3

    .line 299
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->currentPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    if-eqz v0, :cond_b

    .line 300
    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->player:Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;
    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->access$000(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/exoplayer/ExoMediaPlayer;->setVolume(F)V

    :cond_b
    return-void
.end method

.method public start()Z
    .registers 2

    .line 305
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->currentPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->play()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public stop()Z
    .registers 2

    .line 309
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->currentPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    if-eqz v0, :cond_7

    .line 310
    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->stop()V

    .line 312
    :cond_7
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->getIdlePlayer()Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->stop()V

    const/4 v0, 0x0

    return v0
.end method

.method public stopParparingPlayer()Z
    .registers 2

    .line 317
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->getIdlePlayer()Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->stop()V

    const/4 v0, 0x1

    return v0
.end method
