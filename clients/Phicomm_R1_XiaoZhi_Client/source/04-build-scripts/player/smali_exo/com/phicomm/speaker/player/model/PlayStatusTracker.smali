.class public Lcom/phicomm/speaker/player/model/PlayStatusTracker;
.super Ljava/lang/Object;
.source "PlayStatusTracker.java"


# static fields
.field private static final PLAY_POSITION_MONITOR_DEFAULT_INTERVAL:I = 0x1e

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsReportPlayFailedSong:Z

.field private mIsReportPlayingSong:Z

.field private mPlayPositionScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

.field private mPlayTimeInfo:Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;

.field private mPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;

.field private mTxNewsTracker:Lcom/phicomm/speaker/player/helpers/TxNewsTracker;

.field private playPositionTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/phicomm/speaker/player/model/EasyPlayer;)V
    .registers 4
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mPlayer"    # Lcom/phicomm/speaker/player/model/EasyPlayer;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mIsReportPlayingSong:Z

    .line 33
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mIsReportPlayFailedSong:Z

    .line 35
    new-instance v0, Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mPlayTimeInfo:Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;

    .line 267
    new-instance v0, Lcom/phicomm/speaker/player/model/PlayStatusTracker$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/model/PlayStatusTracker$1;-><init>(Lcom/phicomm/speaker/player/model/PlayStatusTracker;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->playPositionTask:Ljava/lang/Runnable;

    .line 40
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;

    .line 42
    new-instance v0, Lcom/phicomm/speaker/player/helpers/TxNewsTracker;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/player/helpers/TxNewsTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mTxNewsTracker:Lcom/phicomm/speaker/player/helpers/TxNewsTracker;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/player/model/PlayStatusTracker;)Lcom/phicomm/speaker/player/model/EasyPlayer;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/PlayStatusTracker;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/player/model/PlayStatusTracker;Lcom/phicomm/speaker/player/model/PlayPositionInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/PlayStatusTracker;
    .param p1, "x1"    # Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->doReportPlayingPosition(Lcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/phicomm/speaker/player/model/PlayStatusTracker;)V
    .registers 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/model/PlayStatusTracker;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->startPlayPositionMonitor()V

    return-void
.end method

.method private clearReportPlayFailedSongFlag()V
    .registers 3

    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " clearReportPlayFailedSongFlag."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mIsReportPlayFailedSong:Z

    .line 229
    return-void
.end method

.method private clearReportPlayingSongFlag()V
    .registers 3

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " clearReportPlayingSongFlag."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mIsReportPlayingSong:Z

    .line 216
    return-void
.end method

.method private doReportPlayFailedSong()V
    .registers 3

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doReportPlayFailedSong."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 220
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mIsReportPlayFailedSong:Z

    if-nez v0, :cond_2a

    .line 221
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->getCurrentSong()Lcom/phicomm/speaker/player/model/PlaySong;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->reportPlayFailedSong(Landroid/content/Context;Lcom/phicomm/speaker/player/model/PlaySong;)V

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mIsReportPlayFailedSong:Z

    .line 224
    :cond_2a
    return-void
.end method

.method private doReportPlayingPosition(Lcom/phicomm/speaker/player/model/PlayPositionInfo;)V
    .registers 4
    .param p1, "playPositionInfo"    # Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doReportPlayingPosition."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 233
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->reportPlayingPosition(Landroid/content/Context;Lcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 234
    return-void
.end method

.method private doReportPlayingSong()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doReportPlayingSong."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/phicomm/speaker/player/logger/Logger;->d(Ljava/lang/Object;)V

    .line 193
    iget-boolean v3, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mIsReportPlayingSong:Z

    if-nez v3, :cond_57

    .line 194
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-virtual {v3}, Lcom/phicomm/speaker/player/model/EasyPlayer;->getCurrentSong()Lcom/phicomm/speaker/player/model/PlaySong;

    move-result-object v1

    .line 195
    .local v1, "playSong":Lcom/phicomm/speaker/player/model/PlaySong;
    if-eqz v1, :cond_55

    .line 196
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->reportPlaySong(Landroid/content/Context;Lcom/phicomm/speaker/player/model/PlaySong;)V

    .line 197
    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/PlaySong;->getItemType()I

    move-result v3

    if-nez v3, :cond_35

    .line 198
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->reportPlayingMusicStatistics(Landroid/content/Context;Lcom/phicomm/speaker/player/model/PlaySong;)V

    .line 200
    :cond_35
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mContext:Landroid/content/Context;

    const-string v4, "MHD_MUSIC_UDID"

    invoke-static {v3, v4}, Lcom/phicomm/speaker/player/helpers/SPHelper;->getStringValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "UDID":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/PlaySong;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker;->mark(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->obtain(Landroid/content/Context;)Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/phicomm/speaker/player/helpers/PlayerVisualizerHelper;->getUserEnable()Z

    move-result v2

    .line 205
    .local v2, "userEnable":Z
    if-eqz v2, :cond_55

    .line 206
    iget-object v3, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v2}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->reportAmbientLightStatus(Landroid/content/Context;IZ)V

    .line 209
    .end local v0    # "UDID":Ljava/lang/String;
    .end local v2    # "userEnable":Z
    :cond_55
    iput-boolean v5, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mIsReportPlayingSong:Z

    .line 211
    .end local v1    # "playSong":Lcom/phicomm/speaker/player/model/PlaySong;
    :cond_57
    return-void
.end method

.method private handleChangeMusic(ZLcom/phicomm/speaker/player/model/PlayPositionInfo;)V
    .registers 8
    .param p1, "playCompleted"    # Z
    .param p2, "playPositionInfo"    # Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    .prologue
    const/4 v4, 0x0

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " handleChangeMusic"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    if-eqz p2, :cond_36

    .line 147
    invoke-virtual {p2}, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->getTotal_time()I

    move-result v1

    .line 148
    .local v1, "voiceLen":I
    invoke-virtual {p2}, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->getPlay_time()I

    move-result v0

    .line 149
    .local v0, "playLen":I
    if-eqz p1, :cond_28

    .line 150
    move v0, v1

    .line 152
    :cond_28
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mTxNewsTracker:Lcom/phicomm/speaker/player/helpers/TxNewsTracker;

    invoke-virtual {p2}, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->getMusic_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lcom/phicomm/speaker/player/helpers/TxNewsTracker;->addReadTimeLen(Ljava/lang/String;II)V

    .line 153
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->reportPlayingBaiduMusic(Landroid/content/Context;Lcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 157
    .end local v0    # "playLen":I
    .end local v1    # "voiceLen":I
    :cond_36
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->clearReportPlayFailedSongFlag()V

    .line 158
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->clearReportPlayingSongFlag()V

    .line 161
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->stopPlayPositionMonitor()V

    .line 162
    if-eqz p2, :cond_4d

    .line 163
    invoke-virtual {p2, v4}, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->setStatus(I)V

    .line 164
    invoke-virtual {p2, v4}, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->setTotal_time(I)V

    .line 165
    invoke-virtual {p2, v4}, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->setPlay_time(I)V

    .line 166
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->doReportPlayingPosition(Lcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 168
    :cond_4d
    return-void
.end method

.method private handlePlayError(Lcom/phicomm/speaker/player/model/PlayPositionInfo;)V
    .registers 5
    .param p1, "playPositionInfo"    # Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    .prologue
    const/4 v2, 0x0

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " handlePlayError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    invoke-direct {p0, v2, p1}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->handleChangeMusic(ZLcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 176
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->reportPlaytimeEnd()V

    .line 177
    return-void
.end method

.method private handlePlayStopped(Lcom/phicomm/speaker/player/model/PlayPositionInfo;)V
    .registers 5
    .param p1, "playPositionInfo"    # Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    .prologue
    const/4 v2, 0x0

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " handlePlayStopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    invoke-direct {p0, v2, p1}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->handleChangeMusic(ZLcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 185
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->reportPlaytimeEnd()V

    .line 188
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mTxNewsTracker:Lcom/phicomm/speaker/player/helpers/TxNewsTracker;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/helpers/TxNewsTracker;->reportStatistics()V

    .line 189
    return-void
.end method

.method private recordPlaytimeStart()V
    .registers 5

    .prologue
    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recordPlaytimeStart."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    const-string v1, "0"

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mPlayTimeInfo:Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;->getData()Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;->getBegin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 239
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mPlayTimeInfo:Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;->getData()Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;->setBegin(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mPlayTimeInfo:Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;->getData()Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;->setEnd(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->getCurrentSong()Lcom/phicomm/speaker/player/model/PlaySong;

    move-result-object v0

    .line 242
    .local v0, "currentSong":Lcom/phicomm/speaker/player/model/PlaySong;
    if-eqz v0, :cond_5d

    .line 243
    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/PlaySong;->getItemType()I

    move-result v1

    if-nez v1, :cond_5e

    .line 244
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mPlayTimeInfo:Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;->setType(I)V

    .line 250
    .end local v0    # "currentSong":Lcom/phicomm/speaker/player/model/PlaySong;
    :cond_5d
    :goto_5d
    return-void

    .line 246
    .restart local v0    # "currentSong":Lcom/phicomm/speaker/player/model/PlaySong;
    :cond_5e
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mPlayTimeInfo:Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;->setType(I)V

    goto :goto_5d
.end method

.method private reportPlaytimeEnd()V
    .registers 5

    .prologue
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reportPlaytimeEnd."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    const-string v0, "0"

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mPlayTimeInfo:Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;->getData()Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;->getBegin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 255
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mPlayTimeInfo:Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;->getData()Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;->setEnd(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->isBluetoothPlayerOnline()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 257
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mPlayTimeInfo:Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;->getData()Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->reportPlayingBluetoothTime(Landroid/content/Context;Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;)V

    .line 262
    :cond_51
    :goto_51
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mPlayTimeInfo:Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;->getData()Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;->setBegin(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mPlayTimeInfo:Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;->getData()Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/statistics/bean/PlaytimeStatistics;->setEnd(Ljava/lang/String;)V

    .line 264
    return-void

    .line 258
    :cond_68
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/EasyPlayer;->isNetPlayerOnline()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 259
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mPlayTimeInfo:Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->reportPlayingMusicTime(Landroid/content/Context;Lcom/phicomm/speaker/player/statistics/bean/PlayTimeInfo;)V

    goto :goto_51
.end method

.method private startPlayPositionMonitor()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startPlayPositionMonitor."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mPlayPositionScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_27

    .line 281
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mPlayPositionScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 282
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mPlayPositionScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 284
    :cond_27
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mContext:Landroid/content/Context;

    const-string v2, "MUSIC_POSTION_REPORT_INTERVAL"

    const/16 v3, 0x1e

    invoke-static {v1, v2, v3}, Lcom/phicomm/speaker/player/helpers/SPHelper;->getIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 286
    .local v0, "interval":I
    if-nez v0, :cond_35

    .line 287
    const/16 v0, 0x1e

    .line 289
    :cond_35
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->playPositionTask:Ljava/lang/Runnable;

    int-to-long v4, v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/phicomm/speaker/player/EchoExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mPlayPositionScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 291
    return-void
.end method

.method public static statusConvert(I)I
    .registers 6
    .param p0, "innerStatus"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 305
    if-eq p0, v0, :cond_9

    const/4 v4, 0x7

    if-ne p0, v4, :cond_b

    :cond_9
    move v0, v3

    .line 315
    :cond_a
    :goto_a
    return v0

    .line 307
    :cond_b
    if-eq p0, v1, :cond_12

    if-eqz p0, :cond_12

    const/4 v4, 0x5

    if-ne p0, v4, :cond_14

    :cond_12
    move v0, v1

    .line 309
    goto :goto_a

    .line 310
    :cond_14
    if-eq p0, v2, :cond_19

    const/4 v4, 0x6

    if-ne p0, v4, :cond_1b

    :cond_19
    move v0, v2

    .line 311
    goto :goto_a

    .line 312
    :cond_1b
    if-eq p0, v3, :cond_a

    move v0, v1

    .line 315
    goto :goto_a
.end method

.method private stopPlayPositionMonitor()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stopPlayPositionMonitor."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mPlayPositionScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_27

    .line 299
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mPlayPositionScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mPlayPositionScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 302
    :cond_27
    return-void
.end method


# virtual methods
.method public afterChangeMusic(Z)V
    .registers 5
    .param p1, "result"    # Z

    .prologue
    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " afterChangeMusic result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    if-nez p1, :cond_2a

    .line 132
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->getPlayPosition()Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    move-result-object v0

    .line 133
    .local v0, "playPositionInfo":Lcom/phicomm/speaker/player/model/PlayPositionInfo;
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->handlePlayStopped(Lcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 135
    .end local v0    # "playPositionInfo":Lcom/phicomm/speaker/player/model/PlayPositionInfo;
    :cond_2a
    return-void
.end method

.method public afterPlayMusic(Z)V
    .registers 3
    .param p1, "result"    # Z

    .prologue
    .line 113
    if-nez p1, :cond_7

    .line 114
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mTxNewsTracker:Lcom/phicomm/speaker/player/helpers/TxNewsTracker;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/helpers/TxNewsTracker;->stopTrack()V

    .line 116
    :cond_7
    return-void
.end method

.method public beforeChangeMusic()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " beforeChangeMusic."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->getPlayPosition()Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    move-result-object v0

    .line 126
    .local v0, "playPositionInfo":Lcom/phicomm/speaker/player/model/PlayPositionInfo;
    invoke-direct {p0, v3, v0}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->handleChangeMusic(ZLcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 127
    return-void
.end method

.method public beforePlayMusic(Lcom/phicomm/speaker/player/model/PlayRequestInfo;)V
    .registers 6
    .param p1, "playRequestInfo"    # Lcom/phicomm/speaker/player/model/PlayRequestInfo;

    .prologue
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " beforePlayMusic."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->getPlayPosition()Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    move-result-object v0

    .line 105
    .local v0, "playPositionInfo":Lcom/phicomm/speaker/player/model/PlayPositionInfo;
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->handlePlayStopped(Lcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 107
    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->getItemList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 108
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mTxNewsTracker:Lcom/phicomm/speaker/player/helpers/TxNewsTracker;

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->getAsrResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->getItemList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/phicomm/speaker/player/helpers/TxNewsTracker;->startTrack(Ljava/lang/String;Ljava/util/List;)V

    .line 110
    :cond_37
    return-void
.end method

.method public beforeStopMusic()V
    .registers 4

    .prologue
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " beforeStopMusic."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mPlayer:Lcom/phicomm/speaker/player/model/EasyPlayer;

    invoke-virtual {v1}, Lcom/phicomm/speaker/player/model/EasyPlayer;->getPlayPosition()Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    move-result-object v0

    .line 140
    .local v0, "playPositionInfo":Lcom/phicomm/speaker/player/model/PlayPositionInfo;
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->handlePlayStopped(Lcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 141
    return-void
.end method

.method public handlePlayStateChanged(ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V
    .registers 7
    .param p1, "playState"    # I
    .param p2, "playPositionInfo"    # Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " handlePlayStateChanged, state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/phicomm/speaker/player/util/Constant;->MediaStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    if-ne p1, v2, :cond_39

    .line 53
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->startPlayPositionMonitor()V

    .line 56
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->doReportPlayingSong()V

    .line 59
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->recordPlaytimeStart()V

    .line 62
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->reportPlayState(Landroid/content/Context;I)V

    .line 94
    :cond_35
    :goto_35
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->doReportPlayingPosition(Lcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    .line 95
    :goto_38
    return-void

    .line 63
    :cond_39
    const/4 v0, 0x3

    if-ne p1, v0, :cond_40

    .line 65
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->startPlayPositionMonitor()V

    goto :goto_35

    .line 66
    :cond_40
    if-ne p1, v3, :cond_4e

    .line 68
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->stopPlayPositionMonitor()V

    .line 71
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->reportPlaytimeEnd()V

    .line 74
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->reportPlayState(Landroid/content/Context;I)V

    goto :goto_35

    .line 75
    :cond_4e
    const/4 v0, 0x5

    if-ne p1, v0, :cond_55

    .line 76
    invoke-direct {p0, v2, p2}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->handleChangeMusic(ZLcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    goto :goto_38

    .line 78
    :cond_55
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5c

    .line 80
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->stopPlayPositionMonitor()V

    goto :goto_35

    .line 81
    :cond_5c
    const/4 v0, 0x7

    if-ne p1, v0, :cond_63

    .line 83
    invoke-direct {p0}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->startPlayPositionMonitor()V

    goto :goto_35

    .line 84
    :cond_63
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6a

    .line 87
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->handlePlayError(Lcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    goto :goto_38

    .line 89
    :cond_6a
    if-nez p1, :cond_35

    .line 90
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/player/model/PlayStatusTracker;->handlePlayStopped(Lcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    goto :goto_38
.end method
