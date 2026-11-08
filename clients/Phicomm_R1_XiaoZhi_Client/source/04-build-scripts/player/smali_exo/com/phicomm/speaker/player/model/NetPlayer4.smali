.class public Lcom/phicomm/speaker/player/model/NetPlayer4;
.super Lcom/phicomm/speaker/player/model/AbsPlayer;
.source "NetPlayer4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_OPEN_RETRY_COUNT:I = 0x4

.field private static final DEFAULT_OPEN_RETRY_TIME:I = 0xbb8

.field private static final FADEDOWN:I = 0x1

.field private static final FADEDOWN_ENDED:I = 0x3

.field private static final FADEUP:I = 0x2

.field private static final FADEUP_ENDED:I = 0x4

.field private static final SP_NAME_PLAYER_MODE:Ljava/lang/String; = "PLAYER_MODE"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioManagerHelper:Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

.field private mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mNeedNextPlay:Z

.field private mNextPlayPos:I

.field private mOpenFailedCounter:I

.field private mPlayFailedCounter:I

.field private mPlayPos:I

.field private mPlayState:I

.field private mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

.field private mPlayerHandler:Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;

.field private mPlaylist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/phicomm/speaker/player/model/PlaySong;",
            ">;"
        }
    .end annotation
.end field

.field private mReqPage:I

.field private mShufflerIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShufflerPlaylist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalPage:I

.field private mediaInfoBufferingEndTask:Ljava/lang/Runnable;

.field private mediaInfoBufferingStartTask:Ljava/lang/Runnable;

.field private mfadeDuration:J

.field private multiMediaPlayErrorTask:Ljava/lang/Runnable;

.field private onBufferingUpdateListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnBufferingUpdateListener;

.field private onCompleted:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnCompletionListener;

.field private onErrorListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnErrorListener;

.field private onInfoListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnInfoListener;

.field private onPlayTimeOutListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPlayTimeOutListener;

.field private onPreparedListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPreparedListener;

.field private playCompletedTask:Ljava/lang/Runnable;

.field private playErrorTask:Ljava/lang/Runnable;

.field private playerBufferingCompletedTask:Ljava/lang/Runnable;

.field private playerPreparedTask:Ljava/lang/Runnable;

.field private stopTask:Ljava/lang/Runnable;

.field private urlValidTimeoutTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-class v0, Lcom/phicomm/speaker/player/model/NetPlayer4;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/AbsPlayer;-><init>()V

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mShufflerPlaylist:Ljava/util/List;

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mShufflerIndexMap:Ljava/util/HashMap;

    .line 56
    iput v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    .line 57
    iput v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mNextPlayPos:I

    .line 59
    const/4 v1, 0x1

    iput v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mReqPage:I

    .line 61
    iput-boolean v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mNeedNextPlay:Z

    .line 63
    iput v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mTotalPage:I

    .line 64
    iput v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    .line 65
    iput v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mOpenFailedCounter:I

    .line 66
    iput v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayFailedCounter:I

    .line 793
    new-instance v1, Lcom/phicomm/speaker/player/model/NetPlayer4$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/NetPlayer4$1;-><init>(Lcom/phicomm/speaker/player/model/NetPlayer4;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->stopTask:Ljava/lang/Runnable;

    .line 850
    new-instance v1, Lcom/phicomm/speaker/player/model/NetPlayer4$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/NetPlayer4$2;-><init>(Lcom/phicomm/speaker/player/model/NetPlayer4;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->playerBufferingCompletedTask:Ljava/lang/Runnable;

    .line 937
    new-instance v1, Lcom/phicomm/speaker/player/model/NetPlayer4$3;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/NetPlayer4$3;-><init>(Lcom/phicomm/speaker/player/model/NetPlayer4;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->playCompletedTask:Ljava/lang/Runnable;

    .line 961
    new-instance v1, Lcom/phicomm/speaker/player/model/NetPlayer4$4;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/NetPlayer4$4;-><init>(Lcom/phicomm/speaker/player/model/NetPlayer4;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->multiMediaPlayErrorTask:Ljava/lang/Runnable;

    .line 969
    new-instance v1, Lcom/phicomm/speaker/player/model/NetPlayer4$5;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/NetPlayer4$5;-><init>(Lcom/phicomm/speaker/player/model/NetPlayer4;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->playErrorTask:Ljava/lang/Runnable;

    .line 1007
    new-instance v1, Lcom/phicomm/speaker/player/model/NetPlayer4$6;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/NetPlayer4$6;-><init>(Lcom/phicomm/speaker/player/model/NetPlayer4;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->urlValidTimeoutTask:Ljava/lang/Runnable;

    .line 1039
    new-instance v1, Lcom/phicomm/speaker/player/model/NetPlayer4$7;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/NetPlayer4$7;-><init>(Lcom/phicomm/speaker/player/model/NetPlayer4;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mediaInfoBufferingStartTask:Ljava/lang/Runnable;

    .line 1051
    new-instance v1, Lcom/phicomm/speaker/player/model/NetPlayer4$8;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/NetPlayer4$8;-><init>(Lcom/phicomm/speaker/player/model/NetPlayer4;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mediaInfoBufferingEndTask:Ljava/lang/Runnable;

    .line 1063
    new-instance v1, Lcom/phicomm/speaker/player/model/NetPlayer4$9;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/NetPlayer4$9;-><init>(Lcom/phicomm/speaker/player/model/NetPlayer4;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->playerPreparedTask:Ljava/lang/Runnable;

    .line 1078
    new-instance v1, Lcom/phicomm/speaker/player/model/NetPlayer4$10;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/NetPlayer4$10;-><init>(Lcom/phicomm/speaker/player/model/NetPlayer4;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->onCompleted:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnCompletionListener;

    .line 1089
    new-instance v1, Lcom/phicomm/speaker/player/model/NetPlayer4$11;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/NetPlayer4$11;-><init>(Lcom/phicomm/speaker/player/model/NetPlayer4;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->onErrorListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnErrorListener;

    .line 1100
    new-instance v1, Lcom/phicomm/speaker/player/model/NetPlayer4$12;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/NetPlayer4$12;-><init>(Lcom/phicomm/speaker/player/model/NetPlayer4;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->onBufferingUpdateListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnBufferingUpdateListener;

    .line 1113
    new-instance v1, Lcom/phicomm/speaker/player/model/NetPlayer4$13;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/NetPlayer4$13;-><init>(Lcom/phicomm/speaker/player/model/NetPlayer4;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->onPlayTimeOutListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPlayTimeOutListener;

    .line 1134
    new-instance v1, Lcom/phicomm/speaker/player/model/NetPlayer4$14;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/NetPlayer4$14;-><init>(Lcom/phicomm/speaker/player/model/NetPlayer4;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->onInfoListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnInfoListener;

    .line 1150
    new-instance v1, Lcom/phicomm/speaker/player/model/NetPlayer4$15;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/NetPlayer4$15;-><init>(Lcom/phicomm/speaker/player/model/NetPlayer4;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->onPreparedListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPreparedListener;

    .line 1213
    new-instance v1, Lcom/phicomm/speaker/player/model/NetPlayer4$16;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/NetPlayer4$16;-><init>(Lcom/phicomm/speaker/player/model/NetPlayer4;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 78
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mContext:Landroid/content/Context;

    .line 79
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "NetPlayerHandler"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mHandlerThread:Landroid/os/HandlerThread;

    .line 80
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 81
    new-instance v1, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;-><init>(Lcom/phicomm/speaker/player/model/NetPlayer4;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayerHandler:Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;

    .line 82
    new-instance v1, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    .line 83
    const-string v1, "PLAYER_MODE"

    invoke-static {p1, v1}, Lcom/phicomm/speaker/player/helpers/SPHelper;->getIntValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 84
    .local v0, "savePlayMode":I
    if-nez v0, :cond_cc

    const/4 v0, 0x2

    .end local v0    # "savePlayMode":I
    :cond_cc
    iput v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayMode:I

    .line 86
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mAudioManager:Landroid/media/AudioManager;

    .line 88
    new-instance v1, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    invoke-direct {v1}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;-><init>()V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mAudioManagerHelper:Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    .line 89
    return-void
.end method

.method private HandleMediaInfoBufferingEnd()V
    .registers 3

    .prologue
    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HandleMediaInfoBufferingEnd."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1060
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->setPlayState(I)V

    .line 1061
    return-void
.end method

.method private HandleMediaInfoBufferingStart()V
    .registers 3

    .prologue
    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HandleMediaInfoBufferingStart."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1048
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->setPlayState(I)V

    .line 1049
    return-void
.end method

.method private HandlePlayCompleted()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 945
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HandlePlayCompleted, PlayState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 946
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/player/model/NetPlayer4;->setPlayState(I)V

    .line 947
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v2, v4}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->preparingChangeToCurrentPlayer(Z)Z

    move-result v0

    .line 948
    .local v0, "changeResult":Z
    if-eqz v0, :cond_3c

    .line 949
    iget v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mNextPlayPos:I

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/player/model/NetPlayer4;->setAndRecordPlayPos(I)V

    .line 950
    invoke-direct {p0, v4}, Lcom/phicomm/speaker/player/model/NetPlayer4;->setPlayState(I)V

    .line 952
    iget v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mNextPlayPos:I

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/player/model/NetPlayer4;->requestNextPage(I)V

    .line 959
    :cond_3b
    :goto_3b
    return-void

    .line 954
    :cond_3c
    const/4 v2, 0x4

    const/16 v3, 0xbb8

    invoke-direct {p0, v5, v4, v2, v3}, Lcom/phicomm/speaker/player/model/NetPlayer4;->gotoNext(ZZII)Z

    move-result v1

    .line 955
    .local v1, "result":Z
    if-nez v1, :cond_3b

    .line 956
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v2

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->playErrorTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3b
.end method

.method private HandlePlayError()V
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 977
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " PREPARING_TIMEOUT or BUFFERING_TIMEOUT or PLAY_ERROR, PlayState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 978
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPlayState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 979
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPlayFailedCounter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayFailedCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 980
    iget v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    if-ne v2, v6, :cond_77

    .line 981
    iget v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayFailedCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayFailedCounter:I

    .line 982
    iget v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayFailedCounter:I

    if-le v2, v6, :cond_78

    .line 983
    iput v5, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayFailedCounter:I

    .line 984
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->stop()Z

    .line 986
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->reportPlayEnd(Landroid/content/Context;)V

    .line 1005
    :cond_77
    :goto_77
    return-void

    .line 988
    :cond_78
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->isStarted()Z

    move-result v1

    .line 991
    .local v1, "started":Z
    const/16 v2, 0x3e8

    invoke-direct {p0, v4, v1, v4, v2}, Lcom/phicomm/speaker/player/model/NetPlayer4;->gotoNext(ZZII)Z

    move-result v0

    .line 992
    .local v0, "result":Z
    if-eqz v0, :cond_a7

    .line 995
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HandlePlayError load suc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 996
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->start()Z

    .line 997
    invoke-direct {p0, v4}, Lcom/phicomm/speaker/player/model/NetPlayer4;->setPlayState(I)V

    goto :goto_77

    .line 999
    :cond_a7
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v2

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->playErrorTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_77
.end method

.method private HandlePlayerBufferingCompleted()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 858
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->isParparingNext()Z

    move-result v0

    if-nez v0, :cond_10

    .line 859
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->getNextPosition(Z)I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->openNext(IZ)Z

    .line 861
    :cond_10
    return-void
.end method

.method private HandlePlayerPrepared()V
    .registers 3

    .prologue
    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HandlePlayerPrepared."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1073
    return-void
.end method

.method private HandleUrlValidTimeout()V
    .registers 11

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 1015
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " CURRENT_PLAYER_URLVALID_TIMEOUT"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1016
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->getCurrentSongName()Lcom/phicomm/speaker/player/model/PlaySong;

    move-result-object v0

    .line 1017
    .local v0, "currentSong":Lcom/phicomm/speaker/player/model/PlaySong;
    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/PlaySong;->getItemType()I

    move-result v6

    if-nez v6, :cond_7a

    .line 1018
    iget-object v6, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v6}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->position()I

    move-result v2

    .line 1019
    .local v2, "position":I
    iget-object v6, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v6}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->isStarted()Z

    move-result v3

    .line 1020
    .local v3, "started":Z
    invoke-direct {p0, v8}, Lcom/phicomm/speaker/player/model/NetPlayer4;->stopInternal(Z)V

    .line 1022
    const/4 v6, 0x1

    const/16 v7, 0xbb8

    invoke-direct {p0, v3, v6, v9, v7}, Lcom/phicomm/speaker/player/model/NetPlayer4;->openCurrent(ZZII)Z

    move-result v1

    .line 1023
    .local v1, "opened":Z
    if-eqz v1, :cond_4c

    .line 1024
    invoke-direct {p0, v2}, Lcom/phicomm/speaker/player/model/NetPlayer4;->seekInternal(I)I

    move-result v6

    int-to-long v4, v6

    .line 1025
    .local v4, "seeked":J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_7b

    .line 1026
    const/4 v1, 0x0

    .line 1031
    .end local v4    # "seeked":J
    :cond_4c
    :goto_4c
    if-nez v1, :cond_7a

    .line 1032
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " CURRENT_PLAYER_URLVALID_TIMEOUT replay error, PlayState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1033
    invoke-direct {p0, v9}, Lcom/phicomm/speaker/player/model/NetPlayer4;->setPlayState(I)V

    .line 1034
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v6

    iget-object v7, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->playErrorTask:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1037
    .end local v1    # "opened":Z
    .end local v2    # "position":I
    .end local v3    # "started":Z
    :cond_7a
    return-void

    .line 1027
    .restart local v1    # "opened":Z
    .restart local v2    # "position":I
    .restart local v3    # "started":Z
    .restart local v4    # "seeked":J
    :cond_7b
    if-nez v3, :cond_4c

    .line 1028
    iget-object v6, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v6}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->pause()Z

    goto :goto_4c
.end method

.method private abandonAudioFocus()V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1167
    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/player/model/NetPlayer4;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/NetPlayer4;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->stopInternal(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/player/model/NetPlayer4;)Lcom/phicomm/speaker/player/model/MultiMediaPlayer;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/NetPlayer4;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/phicomm/speaker/player/model/NetPlayer4;)V
    .registers 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/NetPlayer4;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->HandlePlayerPrepared()V

    return-void
.end method

.method static synthetic access$1100(Lcom/phicomm/speaker/player/model/NetPlayer4;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/NetPlayer4;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->playCompletedTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/phicomm/speaker/player/model/NetPlayer4;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/NetPlayer4;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->multiMediaPlayErrorTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/phicomm/speaker/player/model/NetPlayer4;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/NetPlayer4;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->playerBufferingCompletedTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/phicomm/speaker/player/model/NetPlayer4;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/NetPlayer4;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->urlValidTimeoutTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/phicomm/speaker/player/model/NetPlayer4;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/NetPlayer4;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mediaInfoBufferingStartTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/phicomm/speaker/player/model/NetPlayer4;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/NetPlayer4;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mediaInfoBufferingEndTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/phicomm/speaker/player/model/NetPlayer4;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/NetPlayer4;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->playerPreparedTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/phicomm/speaker/player/model/NetPlayer4;)Z
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/NetPlayer4;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->pauseInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/phicomm/speaker/player/model/NetPlayer4;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/NetPlayer4;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->stopTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/phicomm/speaker/player/model/NetPlayer4;)Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/NetPlayer4;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mAudioManagerHelper:Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/phicomm/speaker/player/model/NetPlayer4;)Z
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/NetPlayer4;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->startInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/phicomm/speaker/player/model/NetPlayer4;)V
    .registers 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/NetPlayer4;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->HandlePlayerBufferingCompleted()V

    return-void
.end method

.method static synthetic access$400(Lcom/phicomm/speaker/player/model/NetPlayer4;)V
    .registers 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/NetPlayer4;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->HandlePlayCompleted()V

    return-void
.end method

.method static synthetic access$500(Lcom/phicomm/speaker/player/model/NetPlayer4;I)V
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/NetPlayer4;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->setPlayState(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/phicomm/speaker/player/model/NetPlayer4;)V
    .registers 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/NetPlayer4;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->HandlePlayError()V

    return-void
.end method

.method static synthetic access$700(Lcom/phicomm/speaker/player/model/NetPlayer4;)V
    .registers 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/NetPlayer4;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->HandleUrlValidTimeout()V

    return-void
.end method

.method static synthetic access$800(Lcom/phicomm/speaker/player/model/NetPlayer4;)V
    .registers 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/NetPlayer4;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->HandleMediaInfoBufferingStart()V

    return-void
.end method

.method static synthetic access$900(Lcom/phicomm/speaker/player/model/NetPlayer4;)V
    .registers 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/NetPlayer4;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->HandleMediaInfoBufferingEnd()V

    return-void
.end method

.method private checkAndRequestAudioFocus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1197
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mAudioManagerHelper:Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->hasAudioFocus()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1198
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->requestAudioFocus()Z

    move-result v1

    if-ne v1, v0, :cond_10

    .line 1206
    :cond_f
    :goto_f
    return v0

    .line 1203
    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private clearPlayList()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 342
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 344
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mShufflerPlaylist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 345
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mShufflerIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 347
    iput v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    .line 348
    iput v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mNextPlayPos:I

    .line 349
    iput v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    .line 350
    iput v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mOpenFailedCounter:I

    .line 351
    iput v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayFailedCounter:I

    .line 352
    return-void
.end method

.method private destroyInternal()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Destroying Player."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 357
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayerHandler:Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 358
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_28

    .line 359
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 362
    :cond_28
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    if-eqz v0, :cond_38

    .line 363
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stop()Z

    .line 364
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->release()V

    .line 365
    iput-object v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    .line 367
    :cond_38
    return-void
.end method

.method private doReportPlayingSong2()V
    .registers 4

    .prologue
    .line 1274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doReportPlayingSong2."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 1275
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->getCurrentSongName()Lcom/phicomm/speaker/player/model/PlaySong;

    move-result-object v0

    .line 1276
    .local v0, "playSong":Lcom/phicomm/speaker/player/model/PlaySong;
    if-eqz v0, :cond_23

    .line 1277
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->reportPlaySong2(Landroid/content/Context;Lcom/phicomm/speaker/player/model/PlaySong;)V

    .line 1279
    :cond_23
    return-void
.end method

.method private getAudioSessionId()I
    .registers 2

    .prologue
    .line 779
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method private getCurrentTrackName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 787
    iget v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    if-ltz v0, :cond_25

    iget v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 788
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/player/model/PlaySong;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/PlaySong;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 790
    :goto_24
    return-object v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method private getNextPosition(Z)I
    .registers 6
    .param p1, "force"    # Z

    .prologue
    const/4 v1, 0x0

    .line 724
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 725
    :cond_d
    const/4 v1, -0x1

    .line 744
    :cond_e
    :goto_e
    return v1

    .line 727
    :cond_f
    if-nez p1, :cond_1d

    iget v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1d

    .line 728
    iget v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    if-ltz v2, :cond_e

    .line 731
    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    goto :goto_e

    .line 732
    :cond_1d
    iget v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4f

    .line 733
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mShufflerIndexMap:Ljava/util/HashMap;

    iget v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 734
    .local v0, "index":I
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mShufflerPlaylist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_4c

    .line 735
    const/4 v0, 0x0

    .line 739
    :goto_3f
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mShufflerPlaylist:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_e

    .line 737
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 741
    .end local v0    # "index":I
    :cond_4f
    iget v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_e

    .line 744
    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method private getPlayPos()I
    .registers 2

    .prologue
    .line 783
    iget v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    return v0
.end method

.method private getPreviousPlayPosition(ZZ)I
    .registers 6
    .param p1, "force"    # Z
    .param p2, "removeFromHistory"    # Z

    .prologue
    .line 756
    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_31

    .line 757
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mShufflerIndexMap:Ljava/util/HashMap;

    iget v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 758
    .local v0, "index":I
    if-lez v0, :cond_28

    .line 759
    add-int/lit8 v0, v0, -0x1

    .line 763
    :goto_1b
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mShufflerPlaylist:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 773
    .end local v0    # "index":I
    :goto_27
    return v1

    .line 761
    .restart local v0    # "index":I
    :cond_28
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mShufflerPlaylist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_1b

    .line 764
    .end local v0    # "index":I
    :cond_31
    if-nez p1, :cond_41

    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_41

    .line 765
    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    if-gez v1, :cond_3e

    .line 766
    const/4 v1, 0x0

    goto :goto_27

    .line 768
    :cond_3e
    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    goto :goto_27

    .line 770
    :cond_41
    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    if-lez v1, :cond_4a

    .line 771
    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_27

    .line 773
    :cond_4a
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_27
.end method

.method private goToPosition(IZII)Z
    .registers 8
    .param p1, "pos"    # I
    .param p2, "playAfterPrepared"    # Z
    .param p3, "retryCount"    # I
    .param p4, "retryTime"    # I

    .prologue
    .line 490
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->setAndRecordPlayPos(I)V

    .line 491
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, p3, p4}, Lcom/phicomm/speaker/player/model/NetPlayer4;->openCurrent(ZZII)Z

    move-result v0

    .line 492
    .local v0, "result":Z
    if-eqz v0, :cond_18

    .line 493
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->setPlayState(I)V

    .line 494
    if-eqz p2, :cond_14

    .line 495
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->setPlayState(I)V

    .line 502
    :cond_14
    :goto_14
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->requestNextPage(I)V

    .line 504
    return v0

    .line 498
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " goToPosition Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 499
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->setPlayState(I)V

    goto :goto_14
.end method

.method private gotoNext(ZZII)Z
    .registers 9
    .param p1, "force"    # Z
    .param p2, "playAfterPrepared"    # Z
    .param p3, "retryCount"    # I
    .param p4, "retryTime"    # I

    .prologue
    const/4 v1, 0x0

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Going to next track"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 429
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->getNextPosition(Z)I

    move-result v0

    .line 430
    .local v0, "pos":I
    if-gez v0, :cond_20

    .line 452
    :goto_1f
    return v1

    .line 436
    :cond_20
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->setAndRecordPlayPos(I)V

    .line 437
    invoke-direct {p0, p2, v1, p3, p4}, Lcom/phicomm/speaker/player/model/NetPlayer4;->openCurrent(ZZII)Z

    move-result v1

    .line 438
    .local v1, "result":Z
    if-eqz v1, :cond_3a

    .line 439
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/player/model/NetPlayer4;->setPlayState(I)V

    .line 441
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->doReportPlayingSong2()V

    .line 442
    if-eqz p2, :cond_36

    .line 443
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/player/model/NetPlayer4;->setPlayState(I)V

    .line 450
    :cond_36
    :goto_36
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->requestNextPage(I)V

    goto :goto_1f

    .line 446
    :cond_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " gotoNext Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 447
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/player/model/NetPlayer4;->setPlayState(I)V

    goto :goto_36
.end method

.method private gotoPrevious(ZZII)Z
    .registers 10
    .param p1, "force"    # Z
    .param p2, "playAfterPrepared"    # Z
    .param p3, "retryCount"    # I
    .param p4, "retryTime"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Going to previous track"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 529
    invoke-direct {p0, p1, v4}, Lcom/phicomm/speaker/player/model/NetPlayer4;->getPreviousPlayPosition(ZZ)I

    move-result v0

    .line 530
    .local v0, "pos":I
    if-gez v0, :cond_21

    .line 547
    :cond_20
    :goto_20
    return v1

    .line 534
    :cond_21
    iput v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    .line 536
    invoke-direct {p0, p2, v1, p3, p4}, Lcom/phicomm/speaker/player/model/NetPlayer4;->openCurrent(ZZII)Z

    move-result v1

    .line 537
    .local v1, "result":Z
    if-eqz v1, :cond_36

    .line 538
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/player/model/NetPlayer4;->setPlayState(I)V

    .line 540
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->doReportPlayingSong2()V

    .line 541
    if-eqz p2, :cond_20

    .line 542
    invoke-direct {p0, v4}, Lcom/phicomm/speaker/player/model/NetPlayer4;->setPlayState(I)V

    goto :goto_20

    .line 545
    :cond_36
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/player/model/NetPlayer4;->setPlayState(I)V

    goto :goto_20
.end method

.method private openCurrent(ZZII)Z
    .registers 15
    .param p1, "playAfterPrepared"    # Z
    .param p2, "sync"    # Z
    .param p3, "retryCount"    # I
    .param p4, "retryTime"    # I

    .prologue
    .line 603
    iget-object v6, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_a

    .line 604
    const/4 v6, 0x0

    .line 655
    :goto_9
    return v6

    .line 607
    :cond_a
    const/4 v1, 0x0

    .line 608
    .local v1, "shutdown":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 610
    .local v4, "startTime":J
    :goto_f
    iget v6, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    invoke-direct {p0, v6, p1, p2}, Lcom/phicomm/speaker/player/model/NetPlayer4;->prepareCurrent(IZZ)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 648
    :goto_17
    if-eqz v1, :cond_c0

    .line 649
    const/4 v6, 0x0

    goto :goto_9

    .line 613
    :cond_1b
    iget v6, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mOpenFailedCounter:I

    if-ge v6, p3, :cond_9f

    .line 622
    :try_start_1f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Fail to open file for playback Counter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mOpenFailedCounter:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 623
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 624
    .local v2, "now":J
    sub-long v6, v2, v4

    int-to-long v8, p4

    cmp-long v6, v6, v8

    if-gez v6, :cond_5a

    .line 625
    iget v6, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mOpenFailedCounter:I

    mul-int/lit8 v6, v6, 0x64

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_53
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_53} :catch_7a

    .line 639
    iget v6, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mOpenFailedCounter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mOpenFailedCounter:I

    goto :goto_f

    .line 627
    :cond_5a
    const/4 v6, 0x0

    :try_start_5b
    iput v6, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mOpenFailedCounter:I

    .line 628
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Failed to open file for playback"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_78
    .catch Ljava/lang/InterruptedException; {:try_start_5b .. :try_end_78} :catch_7a

    .line 629
    const/4 v1, 0x1

    goto :goto_17

    .line 632
    .end local v2    # "now":J
    :catch_7a
    move-exception v0

    .line 633
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 634
    const/4 v6, 0x0

    iput v6, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mOpenFailedCounter:I

    .line 635
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Failed to open file for playback"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 636
    const/4 v1, 0x1

    .line 637
    goto/16 :goto_17

    .line 642
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_9f
    const/4 v6, 0x0

    iput v6, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mOpenFailedCounter:I

    .line 643
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Failed to open file for playback"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 644
    const/4 v1, 0x1

    .line 645
    goto/16 :goto_17

    .line 651
    :cond_c0
    if-eqz p1, :cond_df

    .line 652
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " openCurrent start play"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 653
    iget-object v6, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v6}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->start()Z

    .line 655
    :cond_df
    const/4 v6, 0x1

    goto/16 :goto_9
.end method

.method private openNext(IZ)Z
    .registers 15
    .param p1, "pos"    # I
    .param p2, "sync"    # Z

    .prologue
    .line 867
    iget-object v8, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_a

    .line 868
    const/4 v8, 0x0

    .line 905
    :goto_9
    return v8

    .line 870
    :cond_a
    iget-object v8, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v8}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stopParparingPlayer()Z

    .line 871
    const/4 v5, 0x0

    .line 872
    .local v5, "shutdown":Z
    const/4 v1, 0x0

    .line 873
    .local v1, "openFailedCounter":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 875
    .local v6, "startTime":J
    :goto_15
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/player/model/NetPlayer4;->setNextTrack(IZ)V

    .line 876
    iget-object v8, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v8}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->isParparingNext()Z

    move-result v8

    if-eqz v8, :cond_24

    .line 902
    :goto_20
    if-eqz v5, :cond_bc

    .line 903
    const/4 v8, 0x0

    goto :goto_9

    .line 879
    :cond_24
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "openFailedCounter":I
    .local v4, "openFailedCounter":I
    const/16 v8, 0xa

    if-ge v1, v8, :cond_9d

    .line 881
    :try_start_2a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Fail to open Nextfile for playback Counter: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 882
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 883
    .local v2, "now":J
    sub-long v8, v2, v6

    const-wide/16 v10, 0x1388

    cmp-long v8, v8, v10

    if-gez v8, :cond_5d

    .line 884
    mul-int/lit8 v8, v4, 0x64

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    move v1, v4

    .line 895
    .end local v4    # "openFailedCounter":I
    .restart local v1    # "openFailedCounter":I
    goto :goto_15

    .line 886
    .end local v1    # "openFailedCounter":I
    .restart local v4    # "openFailedCounter":I
    :cond_5d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Failed to open Nextfile for playback"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_78
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_78} :catch_7b

    .line 887
    const/4 v5, 0x1

    move v1, v4

    .line 888
    .end local v4    # "openFailedCounter":I
    .restart local v1    # "openFailedCounter":I
    goto :goto_20

    .line 890
    .end local v1    # "openFailedCounter":I
    .end local v2    # "now":J
    .restart local v4    # "openFailedCounter":I
    :catch_7b
    move-exception v0

    .line 891
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 892
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Failed to open Nextfile for playback"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 893
    const/4 v5, 0x1

    move v1, v4

    .line 894
    .end local v4    # "openFailedCounter":I
    .restart local v1    # "openFailedCounter":I
    goto :goto_20

    .line 897
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "openFailedCounter":I
    .restart local v4    # "openFailedCounter":I
    :cond_9d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Failed to open Nextfile for playback"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 898
    const/4 v5, 0x1

    move v1, v4

    .line 899
    .end local v4    # "openFailedCounter":I
    .restart local v1    # "openFailedCounter":I
    goto/16 :goto_20

    .line 905
    :cond_bc
    const/4 v8, 0x1

    goto/16 :goto_9
.end method

.method private pauseInternal()Z
    .registers 4

    .prologue
    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Pausing playback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, "result":Z
    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    if-eqz v1, :cond_2e

    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2e

    .line 414
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->pause()Z

    move-result v0

    .line 415
    if-eqz v0, :cond_2e

    .line 416
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->setPlayState(I)V

    .line 419
    :cond_2e
    return v0
.end method

.method private prepareCurrent(IZZ)Z
    .registers 7
    .param p1, "position"    # I
    .param p2, "playAfterPrepared"    # Z
    .param p3, "sync"    # Z

    .prologue
    const/4 v0, 0x0

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " prepareCurrent position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " playAfterPrepared: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 590
    invoke-direct {p0, p1, p2, p3}, Lcom/phicomm/speaker/player/model/NetPlayer4;->setCurrentTrack(IZZ)V

    .line 591
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 592
    iput v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mOpenFailedCounter:I

    .line 593
    const/4 v0, 0x1

    .line 596
    :goto_3f
    return v0

    .line 595
    :cond_40
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->stopInternal(Z)V

    goto :goto_3f
.end method

.method private requestAudioFocus()Z
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1176
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 1180
    .local v0, "result":I
    if-eq v0, v1, :cond_17

    .line 1183
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->stop()Z

    .line 1184
    sget-object v1, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    const-string v2, "requestAudioFocus Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    const/4 v1, 0x0

    .line 1187
    :cond_17
    return v1
.end method

.method private requestNextPage(I)V
    .registers 6
    .param p1, "pos"    # I

    .prologue
    const/4 v3, 0x2

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNeedNextPlay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mNeedNextPlay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPlayMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 464
    iget-boolean v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mNeedNextPlay:Z

    if-eqz v1, :cond_f8

    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayMode:I

    if-ne v1, v3, :cond_f8

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPlaylist.size():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " totalPage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mTotalPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 468
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v3, :cond_f8

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-lt p1, v1, :cond_f8

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 471
    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mReqPage:I

    add-int/lit8 v0, v1, 0x1

    .line 472
    .local v0, "nextReqPage":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nextReqPage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 473
    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mTotalPage:I

    if-eqz v1, :cond_f3

    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mTotalPage:I

    if-gt v0, v1, :cond_f9

    .line 474
    :cond_f3
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    invoke-interface {v1, v0}, Lcom/phicomm/speaker/player/interfaces/PlayerListener;->onReqNewPage(I)V

    .line 480
    .end local v0    # "nextReqPage":I
    :cond_f8
    :goto_f8
    return-void

    .line 476
    .restart local v0    # "nextReqPage":I
    :cond_f9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is last page"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    goto :goto_f8
.end method

.method private seekInternal(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 382
    if-gez p1, :cond_a

    .line 383
    const/4 p1, 0x0

    .line 387
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v1, p1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->seek(I)I

    move-result v0

    .line 388
    .local v0, "result":I
    return v0

    .line 384
    .end local v0    # "result":I
    :cond_a
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->duration()I

    move-result v1

    if-le p1, v1, :cond_3

    .line 385
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->duration()I

    move-result p1

    goto :goto_3
.end method

.method private setAndRecordPlayPos(I)V
    .registers 4
    .param p1, "nextPos"    # I

    .prologue
    .line 576
    iput p1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " setAndRecordPlayPos: play position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " playlist size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 579
    return-void
.end method

.method private setCurrentTrack(IZZ)V
    .registers 10
    .param p1, "position"    # I
    .param p2, "playAfterPrepared"    # Z
    .param p3, "sync"    # Z

    .prologue
    .line 659
    iput p1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    .line 660
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " setCurrentTrack: play position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 661
    iget v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    if-ltz v3, :cond_132

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    if-eqz v3, :cond_132

    iget v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_132

    .line 662
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    iget v4, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/player/model/PlaySong;

    .line 663
    .local v1, "playSong":Lcom/phicomm/speaker/player/model/PlaySong;
    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/PlaySong;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4e

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/PlaySong;->getUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dc

    .line 664
    :cond_4e
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mContext:Landroid/content/Context;

    const-string v4, "MHD_MUSIC_UDID"

    invoke-static {v3, v4}, Lcom/phicomm/speaker/player/helpers/SPHelper;->getStringValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, "UDID":Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient;->getInstance()Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient;

    move-result-object v3

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/PlaySong;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient;->getMusicUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;

    move-result-object v2

    .line 667
    .local v2, "songInfo":Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;
    if-eqz v2, :cond_132

    .line 668
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " get remote link, setCurrentTrack: play name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 669
    invoke-virtual {v2}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_95

    .line 670
    invoke-virtual {v2}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/phicomm/speaker/player/model/PlaySong;->setArtist(Ljava/lang/String;)V

    .line 672
    :cond_95
    invoke-virtual {v2}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a6

    .line 673
    invoke-virtual {v2}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/phicomm/speaker/player/model/PlaySong;->setAlbum(Ljava/lang/String;)V

    .line 675
    :cond_a6
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->onBufferingUpdateListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v3, v4}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->setOnBufferingUpdateListener(Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnBufferingUpdateListener;)V

    .line 676
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->onCompleted:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnCompletionListener;

    invoke-virtual {v3, v4}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->setOnCompletionListener(Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnCompletionListener;)V

    .line 677
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->onErrorListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnErrorListener;

    invoke-virtual {v3, v4}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->setOnErrorListener(Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnErrorListener;)V

    .line 678
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->onPlayTimeOutListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPlayTimeOutListener;

    invoke-virtual {v3, v4}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->setOnPlayTimeOutListener(Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPlayTimeOutListener;)V

    .line 679
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->onInfoListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnInfoListener;

    invoke-virtual {v3, v4}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->setOnInfoListener(Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnInfoListener;)V

    .line 680
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->onPreparedListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPreparedListener;

    invoke-virtual {v3, v4}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->setOnPreparedListener(Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPreparedListener;)V

    .line 681
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    invoke-virtual {v3, v4, v5, p3}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->setDataSource(Ljava/lang/String;IZ)V

    .line 716
    .end local v0    # "UDID":Ljava/lang/String;
    .end local v1    # "playSong":Lcom/phicomm/speaker/player/model/PlaySong;
    .end local v2    # "songInfo":Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;
    :goto_db
    return-void

    .line 704
    .restart local v1    # "playSong":Lcom/phicomm/speaker/player/model/PlaySong;
    :cond_dc
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " setCurrentTrack: play name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/PlaySong;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 705
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->onBufferingUpdateListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v3, v4}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->setOnBufferingUpdateListener(Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnBufferingUpdateListener;)V

    .line 706
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->onCompleted:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnCompletionListener;

    invoke-virtual {v3, v4}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->setOnCompletionListener(Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnCompletionListener;)V

    .line 707
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->onErrorListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnErrorListener;

    invoke-virtual {v3, v4}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->setOnErrorListener(Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnErrorListener;)V

    .line 708
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->onPlayTimeOutListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPlayTimeOutListener;

    invoke-virtual {v3, v4}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->setOnPlayTimeOutListener(Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPlayTimeOutListener;)V

    .line 709
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->onInfoListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnInfoListener;

    invoke-virtual {v3, v4}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->setOnInfoListener(Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnInfoListener;)V

    .line 710
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->onPreparedListener:Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPreparedListener;

    invoke-virtual {v3, v4}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->setOnPreparedListener(Lcom/phicomm/speaker/player/model/MultiMediaPlayer$OnPreparedListener;)V

    .line 711
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/PlaySong;->getUrl()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    invoke-virtual {v3, v4, v5, p3}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->setDataSource(Ljava/lang/String;IZ)V

    goto :goto_db

    .line 715
    .end local v1    # "playSong":Lcom/phicomm/speaker/player/model/PlaySong;
    :cond_132
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    const/4 v4, 0x0

    iget v5, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    invoke-virtual {v3, v4, v5, p3}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->setDataSource(Ljava/lang/String;IZ)V

    goto :goto_db
.end method

.method private setNextTrack(IZ)V
    .registers 9
    .param p1, "position"    # I
    .param p2, "sync"    # Z

    .prologue
    .line 909
    iput p1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mNextPlayPos:I

    .line 910
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " HandlePlayerBufferingCompleted: next play position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mNextPlayPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 911
    iget v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mNextPlayPos:I

    if-ltz v3, :cond_de

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    if-eqz v3, :cond_de

    iget v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mNextPlayPos:I

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_de

    .line 912
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    iget v4, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mNextPlayPos:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/player/model/PlaySong;

    .line 913
    .local v1, "playSong":Lcom/phicomm/speaker/player/model/PlaySong;
    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/PlaySong;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4e

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/PlaySong;->getUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 914
    :cond_4e
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mContext:Landroid/content/Context;

    const-string v4, "MHD_MUSIC_UDID"

    invoke-static {v3, v4}, Lcom/phicomm/speaker/player/helpers/SPHelper;->getStringValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 915
    .local v0, "UDID":Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient;->getInstance()Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient;

    move-result-object v3

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/PlaySong;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/phicomm/speaker/player/mhdInterface/unisound/MusicClient;->getMusicUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;

    move-result-object v2

    .line 917
    .local v2, "songInfo":Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;
    if-eqz v2, :cond_de

    .line 918
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " get remote link, HandlePlayerBufferingCompleted: play name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 919
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mNextPlayPos:I

    invoke-virtual {v3, v4, v5, p2}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->setPreparingDataSource(Ljava/lang/String;IZ)V

    .line 920
    invoke-virtual {v2}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a0

    .line 921
    invoke-virtual {v2}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/phicomm/speaker/player/model/PlaySong;->setArtist(Ljava/lang/String;)V

    .line 923
    :cond_a0
    invoke-virtual {v2}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b1

    .line 924
    invoke-virtual {v2}, Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/phicomm/speaker/player/model/PlaySong;->setAlbum(Ljava/lang/String;)V

    .line 935
    .end local v0    # "UDID":Ljava/lang/String;
    .end local v1    # "playSong":Lcom/phicomm/speaker/player/model/PlaySong;
    .end local v2    # "songInfo":Lcom/phicomm/speaker/player/mhdInterface/unisound/bean/SongInfo;
    :cond_b1
    :goto_b1
    return-void

    .line 929
    .restart local v1    # "playSong":Lcom/phicomm/speaker/player/model/PlaySong;
    :cond_b2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " HandlePlayerBufferingCompleted: play name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/PlaySong;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 930
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/PlaySong;->getUrl()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mNextPlayPos:I

    invoke-virtual {v3, v4, v5, p2}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->setPreparingDataSource(Ljava/lang/String;IZ)V

    goto :goto_b1

    .line 934
    .end local v1    # "playSong":Lcom/phicomm/speaker/player/model/PlaySong;
    :cond_de
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    const/4 v4, 0x0

    iget v5, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mNextPlayPos:I

    invoke-virtual {v3, v4, v5, p2}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->setPreparingDataSource(Ljava/lang/String;IZ)V

    goto :goto_b1
.end method

.method private setPlayState(I)V
    .registers 5
    .param p1, "playState"    # I

    .prologue
    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " set new PlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 557
    iput p1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    .line 559
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    if-eqz v0, :cond_2d

    .line 560
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->getPlayPosition()Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/phicomm/speaker/player/interfaces/PlayerListener;->onMediaState(Lcom/phicomm/speaker/player/interfaces/Player;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 562
    :cond_2d
    return-void
.end method

.method private shufflePlayListList(I)V
    .registers 6
    .param p1, "firstIndex"    # I

    .prologue
    .line 508
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mShufflerPlaylist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 509
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mShufflerIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 511
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 512
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mShufflerPlaylist:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 514
    :cond_1f
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mShufflerPlaylist:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 516
    const/4 v0, 0x0

    :goto_25
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mShufflerPlaylist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3f

    .line 517
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mShufflerIndexMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mShufflerPlaylist:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 519
    :cond_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " shufflePlayListList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mShufflerPlaylist:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ShufflerIndexMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mShufflerIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 520
    return-void
.end method

.method private startFadeIn()V
    .registers 5

    .prologue
    .line 1252
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->stopFade()V

    .line 1253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " startFadeIn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1254
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->setVolume(F)V

    .line 1255
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayerHandler:Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->sendEmptyMessage(I)Z

    .line 1256
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayerHandler:Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mfadeDuration:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1257
    return-void
.end method

.method private startFadeOut()V
    .registers 5

    .prologue
    .line 1245
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->stopFade()V

    .line 1246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " startFadeOut"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1247
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayerHandler:Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->sendEmptyMessage(I)Z

    .line 1248
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayerHandler:Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mfadeDuration:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1249
    return-void
.end method

.method private startInternal()Z
    .registers 4

    .prologue
    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Starting playback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 396
    const/4 v0, 0x0

    .line 397
    .local v0, "result":Z
    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    if-eqz v1, :cond_46

    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_46

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startInternal start play"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 399
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->start()Z

    move-result v0

    .line 400
    if-eqz v0, :cond_46

    .line 401
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->setPlayState(I)V

    .line 404
    :cond_46
    return v0
.end method

.method private stopFade()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    .line 1260
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayerHandler:Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;

    if-nez v0, :cond_6

    .line 1270
    :goto_5
    return-void

    .line 1263
    :cond_6
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayerHandler:Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->removeMessages(I)V

    .line 1264
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayerHandler:Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->removeMessages(I)V

    .line 1265
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayerHandler:Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->removeMessages(I)V

    .line 1266
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayerHandler:Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->removeMessages(I)V

    .line 1267
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayerHandler:Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/player/model/NetPlayer4$MusicPlayerHandler;->sendEmptyMessage(I)Z

    .line 1268
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->setVolume(F)V

    .line 1269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stopFade"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5
.end method

.method private stopInternal(Z)V
    .registers 4
    .param p1, "goToIdle"    # Z

    .prologue
    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Stopping playback, goToIdle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 372
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 373
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stop()Z

    .line 374
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->release()V

    .line 376
    :cond_2e
    if-eqz p1, :cond_34

    .line 377
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->setPlayState(I)V

    .line 379
    :cond_34
    return-void
.end method


# virtual methods
.method public ackNewPage(Lcom/phicomm/speaker/player/model/PlayRequestInfo;)V
    .registers 8
    .param p1, "playRequestInfo"    # Lcom/phicomm/speaker/player/model/PlayRequestInfo;

    .prologue
    const/4 v5, 0x0

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ackNewPage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " PlayState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    invoke-static {v4}, Lcom/phicomm/speaker/player/util/Constant;->MediaStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    if-nez p1, :cond_4b

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ackNewPage is null. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    :cond_4b
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->getTotalPage()I

    move-result v3

    iput v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mTotalPage:I

    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ackNewPage mTotalPage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mTotalPage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->getItemList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_133

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->getItemList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_133

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " playRequestInfo.getItemList().size():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->getItemList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 274
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mShufflerPlaylist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 275
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mShufflerIndexMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 278
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->getItemList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 279
    invoke-direct {p0, v5}, Lcom/phicomm/speaker/player/model/NetPlayer4;->shufflePlayListList(I)V

    .line 281
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->getPageIndex()I

    move-result v3

    iput v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mReqPage:I

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ackNewPage mReqPage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mReqPage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->getCurItemId()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "itemId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10f

    .line 285
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f3
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_10f

    .line 286
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phicomm/speaker/player/model/PlaySong;

    .line 287
    .local v2, "playSong":Lcom/phicomm/speaker/player/model/PlaySong;
    invoke-virtual {v2}, Lcom/phicomm/speaker/player/model/PlaySong;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_130

    .line 288
    iput v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    .line 293
    .end local v0    # "i":I
    .end local v2    # "playSong":Lcom/phicomm/speaker/player/model/PlaySong;
    :cond_10f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  get mPlayPos :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    .end local v1    # "itemId":Ljava/lang/String;
    :goto_12f
    return-void

    .line 285
    .restart local v0    # "i":I
    .restart local v1    # "itemId":Ljava/lang/String;
    .restart local v2    # "playSong":Lcom/phicomm/speaker/player/model/PlaySong;
    :cond_130
    add-int/lit8 v0, v0, 0x1

    goto :goto_f3

    .line 296
    .end local v0    # "i":I
    .end local v1    # "itemId":Ljava/lang/String;
    .end local v2    # "playSong":Lcom/phicomm/speaker/player/model/PlaySong;
    :cond_133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " No Song in List. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_12f
.end method

.method public destroy()V
    .registers 3

    .prologue
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " destroy."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    invoke-static {v1}, Lcom/phicomm/speaker/player/util/Constant;->MediaStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->stopFade()V

    .line 313
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->destroyInternal()V

    .line 314
    return-void
.end method

.method public getCurrentSongName()Lcom/phicomm/speaker/player/model/PlaySong;
    .registers 3

    .prologue
    .line 334
    iget v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    if-ltz v0, :cond_19

    iget v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 335
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/player/model/PlaySong;

    .line 337
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getPlayAllStates()Lcom/phicomm/speaker/player/model/PlayAllStates;
    .registers 6

    .prologue
    .line 235
    new-instance v0, Lcom/phicomm/speaker/player/model/PlayAllStates;

    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayMode:I

    iget v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    iget v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/player/model/PlayAllStates;-><init>(IIILjava/util/List;)V

    return-object v0
.end method

.method public getPlayPosition()Lcom/phicomm/speaker/player/model/PlayPositionInfo;
    .registers 5

    .prologue
    .line 240
    new-instance v1, Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    invoke-direct {v1}, Lcom/phicomm/speaker/player/model/PlayPositionInfo;-><init>()V

    .line 241
    .local v1, "playPositionInfo":Lcom/phicomm/speaker/player/model/PlayPositionInfo;
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->getCurrentSongName()Lcom/phicomm/speaker/player/model/PlaySong;

    move-result-object v0

    .line 242
    .local v0, "currentSong":Lcom/phicomm/speaker/player/model/PlaySong;
    if-eqz v0, :cond_48

    .line 243
    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/PlaySong;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->setMusic_id(Ljava/lang/String;)V

    .line 244
    iget v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_49

    .line 245
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->duration()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->setPlay_time(I)V

    .line 246
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->duration()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->setTotal_time(I)V

    .line 251
    :goto_29
    iget v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->setStatus(I)V

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->setTimestamp(Ljava/lang/String;)V

    .line 254
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 255
    const/4 v2, 0x0

    iput v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayFailedCounter:I

    .line 258
    :cond_48
    return-object v1

    .line 248
    :cond_49
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->setPlay_time(I)V

    .line 249
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->duration()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->setTotal_time(I)V

    goto :goto_29
.end method

.method public isPlaying()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 230
    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public pause()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PlayState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    invoke-static {v2}, Lcom/phicomm/speaker/player/util/Constant;->MediaStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->pauseInternal()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 213
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->stopFade()V

    .line 214
    const/4 v0, 0x1

    .line 216
    :cond_35
    return v0
.end method

.method public play(Lcom/phicomm/speaker/player/model/PlayRequestInfo;Z)Z
    .registers 8
    .param p1, "playRequestInfo"    # Lcom/phicomm/speaker/player/model/PlayRequestInfo;
    .param p2, "startSelf"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " play song: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " PlayState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    invoke-static {v3}, Lcom/phicomm/speaker/player/util/Constant;->MediaStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    if-nez p1, :cond_50

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " playRequestInfo is null. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-direct {p0, v4}, Lcom/phicomm/speaker/player/model/NetPlayer4;->stopInternal(Z)V

    .line 126
    :cond_4f
    :goto_4f
    return v1

    .line 100
    :cond_50
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->clearPlayList()V

    .line 102
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->getItemList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->shufflePlayListList(I)V

    .line 104
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_85

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " No Song in List. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-direct {p0, v4}, Lcom/phicomm/speaker/player/model/NetPlayer4;->stopInternal(Z)V

    goto :goto_4f

    .line 112
    :cond_85
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlaylist:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/player/model/PlaySong;

    .line 113
    .local v0, "firstSong":Lcom/phicomm/speaker/player/model/PlaySong;
    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/PlaySong;->getItemType()I

    move-result v2

    if-ne v2, v4, :cond_99

    .line 114
    iput-boolean v4, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mNeedNextPlay:Z

    .line 115
    iput v4, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mReqPage:I

    .line 116
    iput v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mTotalPage:I

    .line 119
    :cond_99
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->getIndex()I

    move-result v2

    iput v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    .line 120
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->stopFade()V

    .line 121
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->stopInternal(Z)V

    .line 122
    iget v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    const/4 v3, 0x4

    const/16 v4, 0xbb8

    invoke-direct {p0, v2, p2, v3, v4}, Lcom/phicomm/speaker/player/model/NetPlayer4;->goToPosition(IZII)Z

    move-result v1

    .line 123
    .local v1, "result":Z
    if-nez v1, :cond_4f

    .line 124
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v2

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->playErrorTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4f
.end method

.method public playIndex(IZ)Z
    .registers 7
    .param p1, "index"    # I
    .param p2, "startSelf"    # Z

    .prologue
    const/4 v0, 0x0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " command: playIndex: index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PlayState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    invoke-static {v2}, Lcom/phicomm/speaker/player/util/Constant;->MediaStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    if-gez p1, :cond_50

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index error."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->stopInternal(Z)V

    .line 144
    :cond_4f
    :goto_4f
    return v0

    .line 137
    :cond_50
    iput p1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    .line 138
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->stopFade()V

    .line 139
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->stopInternal(Z)V

    .line 140
    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    const/4 v2, 0x4

    const/16 v3, 0xbb8

    invoke-direct {p0, v1, p2, v2, v3}, Lcom/phicomm/speaker/player/model/NetPlayer4;->goToPosition(IZII)Z

    move-result v0

    .line 141
    .local v0, "result":Z
    if-nez v0, :cond_4f

    .line 142
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->playErrorTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4f
.end method

.method public playNext(Z)Z
    .registers 6
    .param p1, "startSelf"    # Z

    .prologue
    const/4 v0, 0x0

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " playNext"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PlayState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    invoke-static {v2}, Lcom/phicomm/speaker/player/util/Constant;->MediaStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    if-nez v1, :cond_30

    .line 196
    :cond_2f
    :goto_2f
    return v0

    .line 191
    :cond_30
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->stopFade()V

    .line 192
    const/4 v1, 0x1

    const/4 v2, 0x4

    const/16 v3, 0xbb8

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/phicomm/speaker/player/model/NetPlayer4;->gotoNext(ZZII)Z

    move-result v0

    .line 193
    .local v0, "result":Z
    if-nez v0, :cond_2f

    .line 194
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->playErrorTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2f
.end method

.method public playPre(Z)Z
    .registers 6
    .param p1, "startSelf"    # Z

    .prologue
    const/4 v0, 0x0

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " playPre"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PlayState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    invoke-static {v2}, Lcom/phicomm/speaker/player/util/Constant;->MediaStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    if-nez v1, :cond_30

    .line 181
    :cond_2f
    :goto_2f
    return v0

    .line 176
    :cond_30
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->stopFade()V

    .line 177
    const/4 v1, 0x1

    const/4 v2, 0x4

    const/16 v3, 0xbb8

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/phicomm/speaker/player/model/NetPlayer4;->gotoPrevious(ZZII)Z

    move-result v0

    .line 178
    .local v0, "result":Z
    if-nez v0, :cond_2f

    .line 179
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->playErrorTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2f
.end method

.method public setPlayMode(I)Z
    .registers 5
    .param p1, "mode"    # I

    .prologue
    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " command: setPlayMode, mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PlayState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    invoke-static {v2}, Lcom/phicomm/speaker/player/util/Constant;->MediaStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    invoke-super {p0, p1}, Lcom/phicomm/speaker/player/model/AbsPlayer;->setPlayMode(I)Z

    move-result v0

    .line 320
    .local v0, "result":Z
    if-eqz v0, :cond_49

    .line 321
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mContext:Landroid/content/Context;

    const-string v2, "PLAYER_MODE"

    invoke-static {v1, v2, p1}, Lcom/phicomm/speaker/player/helpers/SPHelper;->setIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    .line 323
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayer:Lcom/phicomm/speaker/player/model/MultiMediaPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/MultiMediaPlayer;->stopParparingPlayer()Z

    .line 325
    const/4 v1, 0x1

    if-ne p1, v1, :cond_49

    .line 326
    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayPos:I

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->shufflePlayListList(I)V

    .line 329
    :cond_49
    return v0
.end method

.method public start()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PlayState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    invoke-static {v2}, Lcom/phicomm/speaker/player/util/Constant;->MediaStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->startInternal()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 203
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->stopFade()V

    .line 204
    const/4 v0, 0x1

    .line 206
    :cond_35
    return v0
.end method

.method public startFadeIn(J)Z
    .registers 6
    .param p1, "delay"    # J

    .prologue
    const/4 v0, 0x0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " command: startFadeIn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PlayState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    invoke-static {v2}, Lcom/phicomm/speaker/player/util/Constant;->MediaStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iput-wide p1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mfadeDuration:J

    .line 151
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->startInternal()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 152
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->startFadeIn()V

    .line 153
    const/4 v0, 0x1

    .line 155
    :cond_3b
    return v0
.end method

.method public startServer()V
    .registers 1

    .prologue
    .line 303
    return-void
.end method

.method public stop()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    invoke-static {v1}, Lcom/phicomm/speaker/player/util/Constant;->MediaStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->stopFade()V

    .line 223
    invoke-direct {p0, v2}, Lcom/phicomm/speaker/player/model/NetPlayer4;->stopInternal(Z)V

    .line 224
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->clearPlayList()V

    .line 225
    return v2
.end method

.method public stopFadeOut(J)Z
    .registers 6
    .param p1, "delay"    # J

    .prologue
    const/4 v0, 0x0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " command: stopFadeOut: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PlayState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    invoke-static {v2}, Lcom/phicomm/speaker/player/util/Constant;->MediaStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mPlayState:I

    if-eqz v1, :cond_3c

    .line 162
    iput-wide p1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4;->mfadeDuration:J

    .line 163
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->startFadeOut()V

    .line 164
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/NetPlayer4;->setPlayState(I)V

    .line 165
    const/4 v0, 0x1

    .line 167
    :cond_3c
    return v0
.end method

.method public stopServer()V
    .registers 1

    .prologue
    .line 307
    return-void
.end method
