.class public Lcom/phicomm/speaker/player/model/new_NetPlayer;
.super Lcom/phicomm/speaker/player/model/AbsPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_OPEN_RETRY_COUNT:I = 0x4

.field private static final DEFAULT_OPEN_RETRY_TIME:I = 0xbb8

.field private static final INFO_BUFFERING_END:I = 0x2be

.field private static final INFO_BUFFERING_START:I = 0x2bd

.field private static final INFO_LOAD:I = 0x2bf

.field private static final MSG_FADE_DOWN:I = 0x1

.field private static final MSG_FADE_DOWN_ENDED:I = 0x3

.field private static final MSG_FADE_UP:I = 0x2

.field private static final MSG_FADE_UP_ENDED:I = 0x4

.field private static final SP_NAME_PLAYER_MODE:Ljava/lang/String; = "PLAYER_MODE"

.field private static final STATE_BUFFERING:I = 0x6

.field private static final STATE_COMPLETED:I = 0x5

.field private static final STATE_ERROR:I = 0x4

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_LOADING:I = 0xa

.field private static final STATE_PAUSED:I = 0x2

.field private static final STATE_PLAYING:I = 0x1

.field private static final STATE_PREPARING:I = 0x3

.field private static final STATE_RESUMED:I = 0x7

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public init:Z

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

.field private mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

.field private mPlayerHandler:Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;

.field private mPlaylist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/player/model/PlaySong;",
            ">;"
        }
    .end annotation
.end field

.field private mReqPage:I

.field private mShufflerIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShufflerPlaylist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalPage:I

.field private final mediaInfoBufferingEndTask:Ljava/lang/Runnable;

.field private final mediaInfoBufferingStartTask:Ljava/lang/Runnable;

.field private final mediaInfoLoadTask:Ljava/lang/Runnable;

.field private mfadeDuration:J

.field private final multiExoPlayerErrorTask:Ljava/lang/Runnable;

.field private final onBufferingUpdateListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnBufferingUpdateListener;

.field private final onCompleted:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnCompletionListener;

.field private final onErrorListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnErrorListener;

.field private final onInfoListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnInfoListener;

.field private final onPlayTimeOutListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnPlayTimeOutListener;

.field private final onPreparedListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnPreparedListener;

.field private final playCompletedTask:Ljava/lang/Runnable;

.field private final playErrorTask:Ljava/lang/Runnable;

.field private final playerBufferingCompletedTask:Ljava/lang/Runnable;

.field private final playerPreparedTask:Ljava/lang/Runnable;

.field private player_config:Landroid/content/SharedPreferences;

.field private final stopTask:Ljava/lang/Runnable;

.field private final urlValidTimeoutTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const-class v0, Lcom/phicomm/speaker/player/model/new_NetPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 159
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/AbsPlayer;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->init:Z

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlaylist:Ljava/util/List;

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mShufflerPlaylist:Ljava/util/List;

    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mShufflerIndexMap:Ljava/util/HashMap;

    const/4 v1, -0x1

    .line 72
    iput v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    .line 73
    iput v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mNextPlayPos:I

    .line 74
    iput v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    .line 75
    iput v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mOpenFailedCounter:I

    .line 76
    iput v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayFailedCounter:I

    const/4 v1, 0x1

    .line 77
    iput v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mReqPage:I

    .line 78
    iput v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mTotalPage:I

    .line 79
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mNeedNextPlay:Z

    .line 84
    new-instance v1, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$Bg6DMLbjaSJA0OYFsKEx3EXrVzo;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$Bg6DMLbjaSJA0OYFsKEx3EXrVzo;-><init>(Lcom/phicomm/speaker/player/model/new_NetPlayer;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 105
    new-instance v1, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$AtlesxHZs1qK4YvCyrnuVoBBoQQ;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$AtlesxHZs1qK4YvCyrnuVoBBoQQ;-><init>(Lcom/phicomm/speaker/player/model/new_NetPlayer;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->playCompletedTask:Ljava/lang/Runnable;

    .line 106
    new-instance v1, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$TGejUOYWfmToWR4vC01BwpWsKG0;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$TGejUOYWfmToWR4vC01BwpWsKG0;-><init>(Lcom/phicomm/speaker/player/model/new_NetPlayer;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->playErrorTask:Ljava/lang/Runnable;

    .line 107
    new-instance v1, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$p1IdJnAhMuRbDY-bK1CZUyUPoT4;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$p1IdJnAhMuRbDY-bK1CZUyUPoT4;-><init>(Lcom/phicomm/speaker/player/model/new_NetPlayer;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->playerBufferingCompletedTask:Ljava/lang/Runnable;

    .line 108
    new-instance v1, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$VakrpxuYvgn4Z2SOWEQwysXY5j4;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$VakrpxuYvgn4Z2SOWEQwysXY5j4;-><init>(Lcom/phicomm/speaker/player/model/new_NetPlayer;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->playerPreparedTask:Ljava/lang/Runnable;

    .line 109
    new-instance v1, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$DD3Zsy_G6MF90IQC54viQhpwB1g;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$DD3Zsy_G6MF90IQC54viQhpwB1g;-><init>(Lcom/phicomm/speaker/player/model/new_NetPlayer;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->stopTask:Ljava/lang/Runnable;

    .line 110
    new-instance v1, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$xwjjYy2WK5HLlpvlK5stEu2pIZU;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$xwjjYy2WK5HLlpvlK5stEu2pIZU;-><init>(Lcom/phicomm/speaker/player/model/new_NetPlayer;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->urlValidTimeoutTask:Ljava/lang/Runnable;

    .line 111
    new-instance v1, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$rJlFiasdSCKHfSUpqyWE1_8mLMo;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$rJlFiasdSCKHfSUpqyWE1_8mLMo;-><init>(Lcom/phicomm/speaker/player/model/new_NetPlayer;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mediaInfoLoadTask:Ljava/lang/Runnable;

    .line 112
    new-instance v1, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$RoZJI1C6si9hCoFv3ieaux_kA-E;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$RoZJI1C6si9hCoFv3ieaux_kA-E;-><init>(Lcom/phicomm/speaker/player/model/new_NetPlayer;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mediaInfoBufferingStartTask:Ljava/lang/Runnable;

    .line 113
    new-instance v1, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$u05oAqfMrUw48spO2S5WR_z0PdA;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$u05oAqfMrUw48spO2S5WR_z0PdA;-><init>(Lcom/phicomm/speaker/player/model/new_NetPlayer;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mediaInfoBufferingEndTask:Ljava/lang/Runnable;

    .line 114
    new-instance v1, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$TGejUOYWfmToWR4vC01BwpWsKG0;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$TGejUOYWfmToWR4vC01BwpWsKG0;-><init>(Lcom/phicomm/speaker/player/model/new_NetPlayer;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->multiExoPlayerErrorTask:Ljava/lang/Runnable;

    .line 117
    new-instance v1, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$rbNCz8uW26-xx3RodxVQsL1djtI;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$rbNCz8uW26-xx3RodxVQsL1djtI;-><init>(Lcom/phicomm/speaker/player/model/new_NetPlayer;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->onBufferingUpdateListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnBufferingUpdateListener;

    .line 122
    new-instance v1, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$xbD9GGbpqrfIsmMCAJ0KLhaXsJ0;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$xbD9GGbpqrfIsmMCAJ0KLhaXsJ0;-><init>(Lcom/phicomm/speaker/player/model/new_NetPlayer;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->onCompleted:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnCompletionListener;

    .line 123
    new-instance v1, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$ajiPwey3pTWLxe94X955l4Z0S78;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$ajiPwey3pTWLxe94X955l4Z0S78;-><init>(Lcom/phicomm/speaker/player/model/new_NetPlayer;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->onErrorListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnErrorListener;

    .line 127
    new-instance v1, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$qiqTB1B9neb6rbQUh6l2P7edVPg;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$qiqTB1B9neb6rbQUh6l2P7edVPg;-><init>(Lcom/phicomm/speaker/player/model/new_NetPlayer;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->onInfoListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnInfoListener;

    .line 137
    new-instance v1, Lcom/phicomm/speaker/player/model/new_NetPlayer$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer$1;-><init>(Lcom/phicomm/speaker/player/model/new_NetPlayer;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->onPlayTimeOutListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnPlayTimeOutListener;

    .line 153
    new-instance v1, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$aBzxXrat3eZu9Jm9SMG49blnNMo;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$aBzxXrat3eZu9Jm9SMG49blnNMo;-><init>(Lcom/phicomm/speaker/player/model/new_NetPlayer;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->onPreparedListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnPreparedListener;

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->getInstance(Landroid/content/Context;)Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    .line 161
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mContext:Landroid/content/Context;

    .line 162
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "NetPlayerHandler"

    const/16 v3, -0x13

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 163
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 164
    new-instance v1, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;-><init>(Lcom/phicomm/speaker/player/model/new_NetPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayerHandler:Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;

    const-string v1, "PLAYER_MODE"

    .line 166
    invoke-static {p1, v1}, Lcom/phicomm/speaker/player/helpers/SPHelper;->getIntValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_d4

    const/4 v1, 0x2

    .line 167
    :cond_d4
    iput v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayMode:I

    const-string v1, "audio"

    .line 169
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 170
    new-instance v1, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    invoke-direct {v1}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;-><init>()V

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mAudioManagerHelper:Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    const-string v1, "player_config"

    .line 171
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->player_config:Landroid/content/SharedPreferences;

    .line 172
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->load_PlayConfig()V

    return-void
.end method

.method private HandleMediaInfoBufferingEnd()V
    .registers 4

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",HandleMediaInfoBufferingEnd."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 761
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 762
    iput v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayFailedCounter:I

    const/4 v0, 0x1

    .line 763
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->setPlayState(I)V

    goto :goto_2c

    :cond_28
    const/4 v0, 0x7

    .line 765
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->setPlayState(I)V

    :goto_2c
    return-void
.end method

.method private HandleMediaInfoBufferingStart()V
    .registers 3

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",HandleMediaInfoBufferingStart."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x6

    .line 756
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->setPlayState(I)V

    return-void
.end method

.method private HandleMediaInfoLoad()V
    .registers 3

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",HandleMediaInfoLoad."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xa

    .line 751
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->setPlayState(I)V

    return-void
.end method

.method private HandlePlayCompleted()V
    .registers 5

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",HandlePlayCompleted, PlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 771
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->setPlayState(I)V

    .line 772
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->preparingChangeToCurrentPlayer(Z)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 773
    iget v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mNextPlayPos:I

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->setAndRecordPlayPos(I)V

    .line 774
    invoke-direct {p0, v2}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->setPlayState(I)V

    .line 775
    iget v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mNextPlayPos:I

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->requestNextPage(I)V

    goto :goto_4b

    :cond_39
    const/4 v0, 0x4

    const/16 v3, 0xbb8

    .line 776
    invoke-direct {p0, v1, v2, v0, v3}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->gotoNext(ZZII)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 777
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->playErrorTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_4b
    :goto_4b
    return-void
.end method

.method private HandlePlayError()V
    .registers 5

    .line 782
    iget v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->setPlayState(I)V

    .line 783
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",PREPARING_TIMEOUT or BUFFERING_TIMEOUT or PLAY_ERROR, PlayState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",mPlayState = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mPlayFailedCounter = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayFailedCounter:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 785
    iget v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    if-ne v0, v1, :cond_9a

    .line 786
    iget v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayFailedCounter:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayFailedCounter:I

    const/16 v3, 0xa

    if-le v0, v3, :cond_64

    .line 788
    iput v2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayFailedCounter:I

    .line 789
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->stop()Z

    .line 790
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->reportPlayEnd(Landroid/content/Context;)V

    goto :goto_9a

    .line 791
    :cond_64
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->isStarted()Z

    move-result v0

    const/16 v2, 0x3e8

    invoke-direct {p0, v1, v0, v1, v2}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->gotoNext(ZZII)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",HandlePlayError load suc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 793
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->start()Z

    .line 794
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->setPlayState(I)V

    goto :goto_9a

    .line 796
    :cond_91
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->playErrorTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_9a
    :goto_9a
    return-void
.end method

.method private HandlePlayerBufferingCompleted()V
    .registers 4

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",HandlePlayerBufferingCompleted \u7f13\u51b2\u5b8c\u6210."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 803
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->isParparingNext()Z

    move-result v0

    if-nez v0, :cond_28

    .line 804
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->getNextPosition(Z)I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->openNext(IZ)Z

    :cond_28
    return-void
.end method

.method private HandlePlayerPrepared()V
    .registers 3

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",HandlePlayerPrepared."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private HandleUrlValidTimeout()V
    .registers 7

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",CURRENT_PLAYER_URLVALID_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 814
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->getCurrentSongName()Lcom/phicomm/speaker/player/model/PlaySong;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 815
    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/PlaySong;->getItemType()I

    move-result v0

    if-nez v0, :cond_79

    .line 816
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->position()I

    move-result v0

    .line 817
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->isStarted()Z

    move-result v2

    .line 818
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->stopInternal(Z)V

    const/4 v3, 0x1

    const/16 v4, 0xbb8

    const/4 v5, 0x4

    .line 819
    invoke-direct {p0, v2, v3, v5, v4}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->openCurrent(ZZII)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 821
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->seekInternal(I)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_47

    const/4 v3, 0x0

    goto :goto_4e

    :cond_47
    if-nez v2, :cond_4e

    .line 825
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->pause()Z

    :cond_4e
    :goto_4e
    if-nez v3, :cond_79

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",CURRENT_PLAYER_URLVALID_TIMEOUT replay error, PlayState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 830
    invoke-direct {p0, v5}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->setPlayState(I)V

    .line 831
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->playErrorTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_79
    return-void
.end method

.method private abandonAudioFocus()V
    .registers 3

    .line 738
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/player/model/new_NetPlayer;)Ljava/lang/Runnable;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->multiExoPlayerErrorTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/player/model/new_NetPlayer;)Ljava/lang/Runnable;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->urlValidTimeoutTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/phicomm/speaker/player/model/new_NetPlayer;)Lcom/phicomm/speaker/player/model/MultiExoPlayer;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/phicomm/speaker/player/model/new_NetPlayer;)Ljava/lang/Runnable;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->stopTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method private attachPlayerListeners()V
    .registers 3

    .line 620
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->onBufferingUpdateListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->setOnBufferingUpdateListener(Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnBufferingUpdateListener;)V

    .line 621
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->onCompleted:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->setOnCompletionListener(Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnCompletionListener;)V

    .line 622
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->onErrorListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->setOnErrorListener(Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnErrorListener;)V

    .line 623
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->onPlayTimeOutListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnPlayTimeOutListener;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->setOnPlayTimeOutListener(Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnPlayTimeOutListener;)V

    .line 624
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->onInfoListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->setOnInfoListener(Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnInfoListener;)V

    .line 625
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->onPreparedListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->setOnPreparedListener(Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnPreparedListener;)V

    return-void
.end method

.method private checkAndRequestAudioFocus()Z
    .registers 2

    .line 742
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mAudioManagerHelper:Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->hasAudioFocus()Z

    move-result v0

    if-nez v0, :cond_d

    .line 743
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->requestAudioFocus()Z

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method private clearPlayList()V
    .registers 2

    .line 838
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlaylist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 839
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mShufflerPlaylist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 840
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mShufflerIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, -0x1

    .line 841
    iput v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    .line 842
    iput v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mNextPlayPos:I

    const/4 v0, 0x0

    .line 843
    iput v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    .line 844
    iput v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mOpenFailedCounter:I

    .line 845
    iput v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayFailedCounter:I

    return-void
.end method

.method private destroyInternal()V
    .registers 4

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Destroying Player."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 850
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayerHandler:Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 851
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x5

    if-lt v0, v2, :cond_26

    .line 852
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 854
    :cond_26
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    if-eqz v0, :cond_34

    .line 855
    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->stop()Z

    .line 856
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->release()V

    .line 857
    iput-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    :cond_34
    return-void
.end method

.method private doReportPlayingSong2()V
    .registers 3

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",doReportPlayingSong2."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 863
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->getCurrentSongName()Lcom/phicomm/speaker/player/model/PlaySong;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 865
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->reportPlaySong2(Landroid/content/Context;Lcom/phicomm/speaker/player/model/PlaySong;)V

    :cond_21
    return-void
.end method

.method private getNextPosition(Z)I
    .registers 6

    .line 643
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlaylist:Ljava/util/List;

    if-eqz v0, :cond_5e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_5e

    :cond_b
    const/4 v0, 0x0

    if-nez p1, :cond_19

    .line 644
    iget p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayMode:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_19

    .line 645
    iget p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    if-ltz p1, :cond_18

    move v0, p1

    :cond_18
    return v0

    .line 647
    :cond_19
    iget p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayMode:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_4e

    .line 648
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mShufflerIndexMap:Ljava/util/HashMap;

    iget v2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_41

    .line 649
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mShufflerPlaylist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_41

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 v0, p1, 0x1

    .line 650
    :cond_41
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mShufflerPlaylist:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 652
    :cond_4e
    iget p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlaylist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge p1, v2, :cond_5d

    iget p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    add-int/lit8 v0, p1, 0x1

    :cond_5d
    return v0

    :cond_5e
    :goto_5e
    const/4 p1, -0x1

    return p1
.end method

.method private getPreviousPlayPosition(ZZ)I
    .registers 4

    .line 656
    iget p2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayMode:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_34

    .line 657
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mShufflerIndexMap:Ljava/util/HashMap;

    iget p2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_20

    .line 658
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lez p2, :cond_20

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_26

    :cond_20
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mShufflerPlaylist:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_26
    sub-int/2addr p1, v0

    .line 659
    iget-object p2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mShufflerPlaylist:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_34
    if-nez p1, :cond_42

    .line 661
    iget p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayMode:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_42

    .line 662
    iget p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    if-ltz p1, :cond_40

    goto :goto_41

    :cond_40
    const/4 p1, 0x0

    :goto_41
    return p1

    .line 664
    :cond_42
    iget p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    if-lez p1, :cond_47

    goto :goto_4d

    :cond_47
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlaylist:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_4d
    sub-int/2addr p1, v0

    return p1
.end method

.method private goToPosition(IZII)Z
    .registers 6

    .line 471
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->setAndRecordPlayPos(I)V

    const/4 v0, 0x0

    .line 472
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->openCurrent(ZZII)Z

    move-result p3

    if-eqz p3, :cond_15

    const/4 p4, 0x3

    .line 474
    invoke-direct {p0, p4}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->setPlayState(I)V

    if-eqz p2, :cond_2f

    const/4 p2, 0x1

    .line 476
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->setPlayState(I)V

    goto :goto_2f

    .line 479
    :cond_15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p4, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ",goToPosition Error"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    const/4 p2, 0x4

    .line 480
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->setPlayState(I)V

    .line 482
    :cond_2f
    :goto_2f
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->requestNextPage(I)V

    return p3
.end method

.method private gotoNext(ZZII)Z
    .registers 7

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Going to next track"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 488
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->getNextPosition(Z)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_1e

    return v0

    .line 491
    :cond_1e
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->setAndRecordPlayPos(I)V

    .line 492
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->openCurrent(ZZII)Z

    move-result p3

    if-eqz p3, :cond_35

    const/4 p4, 0x3

    .line 494
    invoke-direct {p0, p4}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->setPlayState(I)V

    .line 495
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->doReportPlayingSong2()V

    if-eqz p2, :cond_4f

    const/4 p2, 0x1

    .line 497
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->setPlayState(I)V

    goto :goto_4f

    .line 500
    :cond_35
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p4, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ",gotoNext Error"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    const/4 p2, 0x4

    .line 501
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->setPlayState(I)V

    .line 503
    :cond_4f
    :goto_4f
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->requestNextPage(I)V

    .line 504
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->save_PlayConfig()V

    return p3
.end method

.method private gotoPrevious(ZZII)Z
    .registers 7

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Going to previous track"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 510
    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->getPreviousPlayPosition(ZZ)I

    move-result p1

    const/4 v1, 0x0

    if-gez p1, :cond_1f

    return v1

    .line 513
    :cond_1f
    iput p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    .line 514
    invoke-direct {p0, p2, v1, p3, p4}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->openCurrent(ZZII)Z

    move-result p1

    if-eqz p1, :cond_34

    const/4 p3, 0x3

    .line 516
    invoke-direct {p0, p3}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->setPlayState(I)V

    .line 517
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->doReportPlayingSong2()V

    if-eqz p2, :cond_38

    .line 519
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->setPlayState(I)V

    goto :goto_38

    :cond_34
    const/4 p2, 0x4

    .line 522
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->setPlayState(I)V

    .line 524
    :cond_38
    :goto_38
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->save_PlayConfig()V

    return p1
.end method

.method public static synthetic lambda$AtlesxHZs1qK4YvCyrnuVoBBoQQ(Lcom/phicomm/speaker/player/model/new_NetPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->HandlePlayCompleted()V

    return-void
.end method

.method public static synthetic lambda$RoZJI1C6si9hCoFv3ieaux_kA-E(Lcom/phicomm/speaker/player/model/new_NetPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->HandleMediaInfoBufferingStart()V

    return-void
.end method

.method public static synthetic lambda$TGejUOYWfmToWR4vC01BwpWsKG0(Lcom/phicomm/speaker/player/model/new_NetPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->HandlePlayError()V

    return-void
.end method

.method public static synthetic lambda$VakrpxuYvgn4Z2SOWEQwysXY5j4(Lcom/phicomm/speaker/player/model/new_NetPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->HandlePlayerPrepared()V

    return-void
.end method

.method public static synthetic lambda$p1IdJnAhMuRbDY-bK1CZUyUPoT4(Lcom/phicomm/speaker/player/model/new_NetPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->HandlePlayerBufferingCompleted()V

    return-void
.end method

.method public static synthetic lambda$rJlFiasdSCKHfSUpqyWE1_8mLMo(Lcom/phicomm/speaker/player/model/new_NetPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->HandleMediaInfoLoad()V

    return-void
.end method

.method public static synthetic lambda$u05oAqfMrUw48spO2S5WR_z0PdA(Lcom/phicomm/speaker/player/model/new_NetPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->HandleMediaInfoBufferingEnd()V

    return-void
.end method

.method public static synthetic lambda$xwjjYy2WK5HLlpvlK5stEu2pIZU(Lcom/phicomm/speaker/player/model/new_NetPlayer;)V
    .registers 1

    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->HandleUrlValidTimeout()V

    return-void
.end method

.method private openCurrent(ZZII)Z
    .registers 15

    .line 529
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlaylist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 531
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 533
    :goto_e
    iget v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    invoke-direct {p0, v0, p1, p2}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->prepareCurrent(IZZ)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_1a

    .line 534
    iput v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mOpenFailedCounter:I

    goto :goto_60

    .line 537
    :cond_1a
    iget v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mOpenFailedCounter:I

    const-string v5, ",Failed to open file for playback"

    if-lt v0, p3, :cond_39

    .line 538
    iput v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mOpenFailedCounter:I

    .line 539
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 542
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",Fail to open file for playback Counter: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mOpenFailedCounter:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 543
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    int-to-long v8, p4

    cmp-long v0, v6, v8

    if-ltz v0, :cond_7e

    :goto_60
    if-eqz p1, :cond_7d

    .line 557
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",openCurrent start play"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 558
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->start()Z

    :cond_7d
    return v4

    .line 547
    :cond_7e
    :try_start_7e
    iget v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mOpenFailedCounter:I

    int-to-long v6, v0

    const-wide/16 v8, 0x64

    mul-long v6, v6, v8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 548
    iget v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mOpenFailedCounter:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mOpenFailedCounter:I
    :try_end_8d
    .catch Ljava/lang/InterruptedException; {:try_start_7e .. :try_end_8d} :catch_8e

    goto :goto_e

    :catch_8e
    move-exception p1

    .line 550
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 551
    iput v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mOpenFailedCounter:I

    .line 552
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private openNext(IZ)Z
    .registers 4

    .line 564
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlaylist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 565
    :cond_a
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->stopParparingPlayer()Z

    .line 566
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->setNextTrack(IZ)V

    const/4 p1, 0x1

    return p1
.end method

.method private pauseInternal()Z
    .registers 3

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Pausing playback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 451
    iget v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    if-eqz v0, :cond_2b

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1e

    goto :goto_2b

    .line 452
    :cond_1e
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->pause()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v1, 0x2

    .line 454
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->setPlayState(I)V

    :cond_2a
    return v0

    :cond_2b
    :goto_2b
    const/4 v0, 0x0

    return v0
.end method

.method private prepareCurrent(IZZ)Z
    .registers 6

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",prepareCurrent position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " playAfterPrepared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " sync: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 572
    invoke-direct {p0, p1, p2, p3}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->setCurrentTrack(IZZ)V

    .line 573
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->isInitialized()Z

    move-result p1

    return p1
.end method

.method private requestAudioFocus()Z
    .registers 5

    .line 727
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-eq v0, v3, :cond_29

    .line 729
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->stop()Z

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",requestAudioFocus Failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_29
    return v3
.end method

.method private requestNextPage(I)V
    .registers 5

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mNeedNextPlay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mNeedNextPlay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mPlayMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 630
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mNeedNextPlay:Z

    if-eqz v0, :cond_98

    iget v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_98

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",pos:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mPlaylist.size():"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlaylist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " totalPage:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mTotalPage:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 632
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlaylist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_98

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlaylist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_98

    .line 633
    iget p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mReqPage:I

    add-int/lit8 p1, p1, 0x1

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",nextReqPage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 635
    iget v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mTotalPage:I

    if-eqz v0, :cond_93

    if-gt p1, v0, :cond_98

    .line 636
    :cond_93
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    invoke-interface {v0, p1}, Lcom/phicomm/speaker/player/interfaces/PlayerListener;->onReqNewPage(I)V

    :cond_98
    return-void
.end method

.method private setAndRecordPlayPos(I)V
    .registers 3

    .line 668
    iput p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    .line 669
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",setAndRecordPlayPos: play position = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", playlist size = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlaylist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    return-void
.end method

.method private setCurrentTrack(IZZ)V
    .registers 11

    .line 578
    iput p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",setCurrentTrack: play position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    if-ltz p1, :cond_d3

    .line 580
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlaylist:Ljava/util/List;

    if-eqz v0, :cond_d3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2b

    goto/16 :goto_d3

    .line 585
    :cond_2b
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlaylist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/player/model/PlaySong;

    .line 586
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->attachPlayerListeners()V

    .line 588
    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/PlaySong;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_72

    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",setCurrentTrack: play name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/PlaySong;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 590
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/PlaySong;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/PlaySong;->getUrl()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->setDataSource(Ljava/lang/String;Ljava/lang/String;IZJ)V

    goto :goto_d2

    .line 591
    :cond_72
    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/PlaySong;->getItemId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c7

    .line 592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",get remote link, setCurrentTrack: play name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/PlaySong;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/PlaySong;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 593
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/PlaySong;->getItemId()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get_music_url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/PlaySong;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->setDataSource(Ljava/lang/String;Ljava/lang/String;IZJ)V

    goto :goto_d2

    .line 595
    :cond_c7
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v5, -0x1

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->setDataSource(Ljava/lang/String;Ljava/lang/String;IZJ)V

    :goto_d2
    return-void

    .line 581
    :cond_d3
    :goto_d3
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v5, -0x1

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->setDataSource(Ljava/lang/String;Ljava/lang/String;IZJ)V

    return-void
.end method

.method private setNextTrack(IZ)V
    .registers 7

    .line 600
    iput p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mNextPlayPos:I

    .line 601
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",HandlePlayerBufferingCompleted: next play position = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mNextPlayPos:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    const/4 p2, 0x0

    if-ltz p1, :cond_bd

    .line 602
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlaylist:Ljava/util/List;

    if-eqz v0, :cond_bd

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2c

    goto/16 :goto_bd

    .line 607
    :cond_2c
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlaylist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/player/model/PlaySong;

    .line 608
    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/PlaySong;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 609
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",HandlePlayerBufferingCompleted: play name = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/PlaySong;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 610
    iget-object p2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/PlaySong;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/PlaySong;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0, p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->setPreparingDataSource(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_bc

    .line 611
    :cond_69
    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/PlaySong;->getItemId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b7

    .line 612
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",get remote link, HandlePlayerBufferingCompleted: play name = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/PlaySong;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,id = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/PlaySong;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 613
    iget-object p2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/PlaySong;->getItemId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get_music_url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/PlaySong;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0, p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->setPreparingDataSource(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_bc

    .line 615
    :cond_b7
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v0, p2, p2, p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->setPreparingDataSource(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_bc
    return-void

    .line 603
    :cond_bd
    :goto_bd
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v0, p2, p2, p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->setPreparingDataSource(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private setPlayState(I)V
    .registers 4

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",set new PlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 674
    iput p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    .line 675
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    if-eqz p1, :cond_2a

    .line 676
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    iget v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->getPlayPosition()Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    move-result-object v1

    invoke-interface {p1, p0, v0, v1}, Lcom/phicomm/speaker/player/interfaces/PlayerListener;->onMediaState(Lcom/phicomm/speaker/player/interfaces/Player;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 678
    :cond_2a
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->save_PlayConfig()V

    return-void
.end method

.method private shufflePlayListList(I)V
    .registers 5

    .line 683
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mShufflerPlaylist:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 684
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mShufflerIndexMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 685
    :goto_c
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlaylist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 686
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mShufflerPlaylist:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 688
    :cond_20
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mShufflerPlaylist:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 689
    :goto_25
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mShufflerPlaylist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3f

    .line 690
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mShufflerIndexMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mShufflerPlaylist:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_25

    .line 692
    :cond_3f
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->save_PlayList()V

    .line 693
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",shufflePlayListList "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mShufflerPlaylist:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ShufflerIndexMap: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mShufflerIndexMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    return-void
.end method

.method private startFadeIn()V
    .registers 5

    .line 698
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->stopFade()V

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",startFadeIn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 700
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->setVolume(F)V

    .line 701
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayerHandler:Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->sendEmptyMessage(I)Z

    .line 702
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayerHandler:Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;

    iget-wide v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mfadeDuration:J

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1, v2}, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private startFadeOut()V
    .registers 5

    .line 706
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->stopFade()V

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",startFadeOut"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 708
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayerHandler:Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->sendEmptyMessage(I)Z

    .line 709
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayerHandler:Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;

    iget-wide v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mfadeDuration:J

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private startInternal()Z
    .registers 5

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Starting playback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 435
    iget v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1f

    goto :goto_4f

    .line 437
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",startInternal start play"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 438
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->init:Z

    if-eqz v0, :cond_42

    .line 439
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->init:Z

    .line 440
    iget v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    const/16 v3, 0xbb8

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->goToPosition(IZII)Z

    .line 442
    :cond_42
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->start()Z

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v1, 0x1

    .line 444
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->setPlayState(I)V

    :cond_4e
    return v0

    :cond_4f
    :goto_4f
    return v1
.end method

.method private stopFade()V
    .registers 4

    .line 713
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayerHandler:Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;

    if-eqz v0, :cond_3f

    const/4 v1, 0x2

    .line 714
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->removeMessages(I)V

    .line 715
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayerHandler:Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->removeMessages(I)V

    .line 716
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayerHandler:Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->removeMessages(I)V

    .line 717
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayerHandler:Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->removeMessages(I)V

    .line 718
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayerHandler:Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->sendEmptyMessage(I)Z

    .line 719
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->setVolume(F)V

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",stopFade"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3f
    return-void
.end method

.method private stopInternal(Z)V
    .registers 4

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Stopping playback, goToIdle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 461
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 462
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->stop()Z

    .line 463
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->release()V

    :cond_2b
    if-eqz p1, :cond_31

    const/4 p1, 0x0

    .line 466
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->setPlayState(I)V

    :cond_31
    return-void
.end method


# virtual methods
.method public ackNewPage(Lcom/phicomm/speaker/player/model/PlayRequestInfo;)V
    .registers 5

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",ackNewPage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " PlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    invoke-static {v1}, Lcom/phicomm/speaker/player/util/Constant;->MediaStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_45

    .line 401
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",ackNewPage is null."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 404
    :cond_45
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->getTotalPage()I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mTotalPage:I

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",ackNewPage mTotalPage: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mTotalPage:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->getItemList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11f

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->getItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7a

    goto/16 :goto_11f

    .line 412
    :cond_7a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",playRequestInfo.getItemList().size(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->getItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mShufflerPlaylist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 414
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mShufflerIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 415
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlaylist:Ljava/util/List;

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->getItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 416
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->getPageIndex()I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mReqPage:I

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",ackNewPage mReqPage: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mReqPage:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->getCurItemId()Ljava/lang/String;

    move-result-object p1

    .line 420
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_fe

    const/4 v0, 0x0

    .line 421
    :goto_de
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlaylist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_fe

    .line 422
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlaylist:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phicomm/speaker/player/model/PlaySong;

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/model/PlaySong;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    .line 423
    iput v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    goto :goto_fe

    :cond_fb
    add-int/lit8 v0, v0, 0x1

    goto :goto_de

    .line 428
    :cond_fe
    :goto_fe
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->shufflePlayListList(I)V

    .line 429
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",get mPlayPos :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 408
    :cond_11f
    :goto_11f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",No Song in List."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public destroy()V
    .registers 3

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",destroy. PlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    invoke-static {v1}, Lcom/phicomm/speaker/player/util/Constant;->MediaStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->stopFade()V

    .line 346
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->destroyInternal()V

    return-void
.end method

.method public getCurrentSongName()Lcom/phicomm/speaker/player/model/PlaySong;
    .registers 3

    .line 361
    iget v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    if-ltz v0, :cond_17

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlaylist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 362
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlaylist:Ljava/util/List;

    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/player/model/PlaySong;

    return-object v0

    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayAllStates()Lcom/phicomm/speaker/player/model/PlayAllStates;
    .registers 6

    .line 389
    new-instance v0, Lcom/phicomm/speaker/player/model/PlayAllStates;

    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayMode:I

    iget v2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    iget v3, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    iget-object v4, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlaylist:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/player/model/PlayAllStates;-><init>(IIILjava/util/List;)V

    return-object v0
.end method

.method public getPlayPosition()Lcom/phicomm/speaker/player/model/PlayPositionInfo;
    .registers 4

    .line 369
    new-instance v0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/model/PlayPositionInfo;-><init>()V

    .line 370
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->getCurrentSongName()Lcom/phicomm/speaker/player/model/PlaySong;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 372
    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/PlaySong;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->setMusic_id(Ljava/lang/String;)V

    .line 373
    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2a

    .line 374
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->duration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->setPlay_time(I)V

    .line 375
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->duration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->setTotal_time(I)V

    goto :goto_3c

    .line 377
    :cond_2a
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->setPlay_time(I)V

    .line 378
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->duration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->setTotal_time(I)V

    .line 380
    :goto_3c
    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->setStatus(I)V

    .line 381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->setTimestamp(Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->getApiData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->setApiData(Ljava/lang/String;)V

    :cond_55
    return-object v0
.end method

.method public isPlaying()Z
    .registers 2

    .line 394
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public synthetic lambda$load_PlayConfig$7$new_NetPlayer()V
    .registers 8

    .line 873
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.phicomm.speaker.player/shared_prefs/Playlist.list"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 874
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 875
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_9b

    .line 876
    :try_start_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 878
    :goto_1c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 879
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 881
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_90

    .line 883
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 884
    :goto_36
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_8e

    .line 885
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 886
    new-instance v5, Lcom/phicomm/speaker/player/model/PlaySong;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/phicomm/speaker/player/model/PlaySong;-><init>(Landroid/os/Parcel;)V

    const-string v6, "url"

    .line 887
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/phicomm/speaker/player/model/PlaySong;->setUrl(Ljava/lang/String;)V

    const-string v6, "itemId"

    .line 888
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/phicomm/speaker/player/model/PlaySong;->setItemId(Ljava/lang/String;)V

    const-string v6, "itemType"

    .line 889
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/phicomm/speaker/player/model/PlaySong;->setItemType(I)V

    const-string v6, "title"

    .line 890
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/phicomm/speaker/player/model/PlaySong;->setTitle(Ljava/lang/String;)V

    const-string v6, "artist"

    .line 891
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/phicomm/speaker/player/model/PlaySong;->setArtist(Ljava/lang/String;)V

    const-string v6, "album"

    .line 892
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/phicomm/speaker/player/model/PlaySong;->setAlbum(Ljava/lang/String;)V

    const-string v6, "albumUrl"

    .line 893
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/phicomm/speaker/player/model/PlaySong;->setAlbumUrl(Ljava/lang/String;)V

    .line 894
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 896
    :cond_8e
    iput-object v2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlaylist:Ljava/util/List;
    :try_end_90
    .catchall {:try_start_17 .. :try_end_90} :catchall_94

    .line 898
    :cond_90
    :try_start_90
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_93} :catch_9b

    goto :goto_9c

    :catchall_94
    move-exception v0

    .line 875
    :try_start_95
    throw v0
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_96

    :catchall_96
    move-exception v0

    .line 898
    :try_start_97
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_9a

    :catchall_9a
    :try_start_9a
    throw v0
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9b} :catch_9b

    :catch_9b
    nop

    .line 902
    :cond_9c
    :goto_9c
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlaylist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_eb

    const/4 v0, 0x1

    .line 903
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->init:Z

    .line 904
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->player_config:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    const-string v2, "PlayPos"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    .line 905
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->player_config:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mNextPlayPos:I

    const-string v2, "NextPlayPos"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mNextPlayPos:I

    const/4 v0, 0x2

    .line 906
    iput v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    .line 907
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->player_config:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mReqPage:I

    const-string v2, "ReqPage"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mReqPage:I

    .line 908
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->player_config:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mTotalPage:I

    const-string v2, "TotalPage"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mTotalPage:I

    .line 909
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->player_config:Landroid/content/SharedPreferences;

    iget-boolean v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mNeedNextPlay:Z

    const-string v2, "NeedNextPlay"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mNeedNextPlay:Z

    .line 910
    iget v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->shufflePlayListList(I)V

    :cond_eb
    return-void
.end method

.method public synthetic lambda$new$0$new_NetPlayer(I)V
    .registers 5

    const/4 v0, -0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4d

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    goto :goto_6d

    .line 92
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",AUDIOFOCUS_GAIN -> start"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->startInternal()Z

    .line 94
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mAudioManagerHelper:Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->setHasAudioFocus(Z)V

    goto :goto_6d

    .line 97
    :cond_2c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",AUDIOFOCUS_LOSS -> pause permanently"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->pauseInternal()Z

    .line 99
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mAudioManagerHelper:Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->setHasAudioFocus(Z)V

    goto :goto_6d

    .line 87
    :cond_4d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",AUDIOFOCUS_LOSS_TRANSIENT -> pause"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->pauseInternal()Z

    .line 89
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mAudioManagerHelper:Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->setHasAudioFocus(Z)V

    :goto_6d
    return-void
.end method

.method public synthetic lambda$new$1$new_NetPlayer()V
    .registers 2

    const/4 v0, 0x1

    .line 109
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->stopInternal(Z)V

    return-void
.end method

.method public synthetic lambda$new$2$new_NetPlayer(Lcom/phicomm/speaker/player/model/MultiExoPlayer;I)V
    .registers 3

    const/16 p1, 0x7b

    if-ne p2, p1, :cond_d

    .line 119
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object p1

    iget-object p2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->playerBufferingCompletedTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_d
    return-void
.end method

.method public synthetic lambda$new$3$new_NetPlayer(Lcom/phicomm/speaker/player/model/MultiExoPlayer;)V
    .registers 3

    .line 122
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->playCompletedTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$new$4$new_NetPlayer(Lcom/phicomm/speaker/player/model/MultiExoPlayer;II)Z
    .registers 4

    .line 124
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object p1

    iget-object p2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->multiExoPlayerErrorTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$new$5$new_NetPlayer(Lcom/phicomm/speaker/player/model/MultiExoPlayer;II)Z
    .registers 4

    const/16 p1, 0x2bd

    if-ne p2, p1, :cond_e

    .line 129
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object p1

    iget-object p2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mediaInfoBufferingStartTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_29

    :cond_e
    const/16 p1, 0x2be

    if-ne p2, p1, :cond_1c

    .line 131
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object p1

    iget-object p2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mediaInfoBufferingEndTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_29

    :cond_1c
    const/16 p1, 0x2bf

    if-ne p2, p1, :cond_29

    .line 133
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object p1

    iget-object p2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mediaInfoLoadTask:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_29
    :goto_29
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$new$6$new_NetPlayer(Lcom/phicomm/speaker/player/model/MultiExoPlayer;)Z
    .registers 3

    .line 154
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->playerPreparedTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$save_PlayConfig$8$new_NetPlayer()V
    .registers 4

    .line 917
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->player_config:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 918
    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    const-string v2, "PlayPos"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 919
    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mNextPlayPos:I

    const-string v2, "NextPlayPos"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 920
    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    const-string v2, "PlayState"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 921
    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mReqPage:I

    const-string v2, "ReqPage"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 922
    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mTotalPage:I

    const-string v2, "TotalPage"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 923
    iget-boolean v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mNeedNextPlay:Z

    const-string v2, "NeedNextPlay"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 924
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public synthetic lambda$save_PlayList$9$new_NetPlayer()V
    .registers 5

    .line 930
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->player_config:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 932
    :try_start_6
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.phicomm.speaker.player/shared_prefs/Playlist.list"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 933
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_3c

    .line 934
    :try_start_12
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlaylist:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_35

    .line 935
    :try_start_26
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    const-string v1, "Playlist"

    .line 936
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlaylist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_34} :catch_3c

    goto :goto_3c

    :catchall_35
    move-exception v1

    .line 933
    :try_start_36
    throw v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    :catchall_37
    move-exception v1

    .line 935
    :try_start_38
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3b

    :catchall_3b
    :try_start_3b
    throw v1
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3c} :catch_3c

    .line 939
    :catch_3c
    :goto_3c
    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    const-string v2, "PlayPos"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 940
    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mNextPlayPos:I

    const-string v2, "NextPlayPos"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 941
    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    const-string v2, "PlayState"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 942
    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mReqPage:I

    const-string v2, "ReqPage"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 943
    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mTotalPage:I

    const-string v2, "TotalPage"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 944
    iget-boolean v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mNeedNextPlay:Z

    const-string v2, "NeedNextPlay"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 945
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public load_PlayConfig()V
    .registers 3

    .line 871
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$uQZ9IliBUvCwJP1Q0n7YKzbvVwA;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$uQZ9IliBUvCwJP1Q0n7YKzbvVwA;-><init>(Lcom/phicomm/speaker/player/model/new_NetPlayer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 912
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public pause()Z
    .registers 4

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",pause PlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    invoke-static {v1}, Lcom/phicomm/speaker/player/util/Constant;->MediaStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->pauseInternal()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 190
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->stopFade()V

    const/4 v0, 0x1

    return v0

    :cond_2d
    return v1
.end method

.method public play(Lcom/phicomm/speaker/player/model/PlayRequestInfo;Z)Z
    .registers 7

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",play song: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " PlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    invoke-static {v1}, Lcom/phicomm/speaker/player/util/Constant;->MediaStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-nez p1, :cond_49

    .line 245
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",playRequestInfo is null."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->stopInternal(Z)V

    return v1

    .line 250
    :cond_49
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->clearPlayList()V

    .line 251
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlaylist:Ljava/util/List;

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->getItemList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 252
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlaylist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_79

    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",No Song in List."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->stopInternal(Z)V

    return v1

    .line 258
    :cond_79
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mNeedNextPlay:Z

    .line 259
    iput v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mReqPage:I

    .line 260
    iput v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mTotalPage:I

    .line 261
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->getIndex()I

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    .line 262
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->shufflePlayListList(I)V

    .line 263
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->stopFade()V

    .line 264
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->stopInternal(Z)V

    .line 266
    iget p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    const/4 v0, 0x4

    const/16 v2, 0xbb8

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->goToPosition(IZII)Z

    move-result p1

    if-nez p1, :cond_a2

    .line 268
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object p2

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->playErrorTask:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    .line 270
    :cond_a2
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->init:Z

    return p1
.end method

.method public playIndex(IZ)Z
    .registers 6

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",playIndex: index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " PlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    invoke-static {v1}, Lcom/phicomm/speaker/player/util/Constant;->MediaStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-gez p1, :cond_49

    .line 278
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",index error."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 279
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->stopInternal(Z)V

    return v1

    .line 282
    :cond_49
    iput p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    .line 283
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->stopFade()V

    .line 284
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->stopInternal(Z)V

    .line 285
    iget p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    const/4 v0, 0x4

    const/16 v1, 0xbb8

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->goToPosition(IZII)Z

    move-result p1

    if-nez p1, :cond_65

    .line 287
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object p2

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->playErrorTask:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_65
    return p1
.end method

.method public playNext(Z)Z
    .registers 5

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",playNext PlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    invoke-static {v1}, Lcom/phicomm/speaker/player/util/Constant;->MediaStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    iget v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    if-nez v0, :cond_27

    return v1

    .line 296
    :cond_27
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->stopFade()V

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/16 v2, 0xbb8

    .line 297
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->gotoNext(ZZII)Z

    move-result p1

    if-nez p1, :cond_3d

    .line 299
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->playErrorTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_3d
    return p1
.end method

.method public playPre(Z)Z
    .registers 5

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",playPre PlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    invoke-static {v1}, Lcom/phicomm/speaker/player/util/Constant;->MediaStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    iget v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    if-nez v0, :cond_27

    return v1

    .line 308
    :cond_27
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->stopFade()V

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/16 v2, 0xbb8

    .line 309
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->gotoPrevious(ZZII)Z

    move-result p1

    if-nez p1, :cond_3d

    .line 311
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->playErrorTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_3d
    return p1
.end method

.method public save_PlayConfig()V
    .registers 3

    .line 916
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$J_B0HKrJMCd5qXWX8u3CSTar0Xs;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$J_B0HKrJMCd5qXWX8u3CSTar0Xs;-><init>(Lcom/phicomm/speaker/player/model/new_NetPlayer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 925
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public save_PlayList()V
    .registers 3

    .line 929
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$0TYvnXXPmjpzCPj-6sAZ1JMgpFo;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/model/-$$Lambda$new_NetPlayer$0TYvnXXPmjpzCPj-6sAZ1JMgpFo;-><init>(Lcom/phicomm/speaker/player/model/new_NetPlayer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 946
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public seekInternal(I)I
    .registers 3

    .line 338
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->duration()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 339
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->seek(I)I

    move-result p1

    return p1
.end method

.method public setPlayMode(I)Z
    .registers 6

    const/4 v0, 0x1

    const/16 v1, 0x7b

    if-ne p1, v1, :cond_d

    .line 319
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    if-eqz p1, :cond_c

    .line 320
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->Switch_Quality()V

    :cond_c
    return v0

    .line 324
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",setPlayMode: mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " PlayState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    invoke-static {v2}, Lcom/phicomm/speaker/player/util/Constant;->MediaStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    invoke-super {p0, p1}, Lcom/phicomm/speaker/player/model/AbsPlayer;->setPlayMode(I)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 327
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mContext:Landroid/content/Context;

    const-string v3, "PLAYER_MODE"

    invoke-static {v2, v3, p1}, Lcom/phicomm/speaker/player/helpers/SPHelper;->setIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    .line 328
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->stopParparingPlayer()Z

    if-ne p1, v0, :cond_50

    .line 330
    iget p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayPos:I

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->shufflePlayListList(I)V

    :cond_50
    return v1
.end method

.method public start()Z
    .registers 4

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",start PlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    invoke-static {v1}, Lcom/phicomm/speaker/player/util/Constant;->MediaStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->startInternal()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 180
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->stopFade()V

    const/4 v0, 0x1

    return v0

    :cond_2d
    return v1
.end method

.method public startFadeIn(J)Z
    .registers 6

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",startFadeIn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " PlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    invoke-static {v1}, Lcom/phicomm/speaker/player/util/Constant;->MediaStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    iput-wide p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mfadeDuration:J

    .line 222
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->startInternal()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 223
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->startFadeIn()V

    const/4 p1, 0x1

    return p1

    :cond_37
    return v1
.end method

.method public startServer()V
    .registers 1

    return-void
.end method

.method public stop()Z
    .registers 3

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",stop PlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    invoke-static {v1}, Lcom/phicomm/speaker/player/util/Constant;->MediaStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->isInitialized()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_37

    .line 200
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->stop()Z

    .line 201
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->release()V

    .line 202
    iput-boolean v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->init:Z

    .line 204
    :cond_37
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->stopFade()V

    const/4 v0, 0x2

    .line 205
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->setPlayState(I)V

    return v1
.end method

.method public stopFadeOut(J)Z
    .registers 6

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",stopFadeOut: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " PlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    invoke-static {v1}, Lcom/phicomm/speaker/player/util/Constant;->MediaStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    iget v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    if-eqz v0, :cond_38

    .line 233
    iput-wide p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mfadeDuration:J

    .line 234
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->startFadeOut()V

    .line 235
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->setPlayState(I)V

    const/4 p1, 0x1

    return p1

    :cond_38
    return v1
.end method

.method public stopServer()V
    .registers 1

    return-void
.end method

.method public stop_bak()Z
    .registers 3

    .line 210
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->stopServer()V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/new_NetPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",stop_bak PlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayState:I

    invoke-static {v1}, Lcom/phicomm/speaker/player/util/Constant;->MediaStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->stopFade()V

    const/4 v0, 0x1

    .line 213
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->stopInternal(Z)V

    .line 214
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->clearPlayList()V

    return v0
.end method
