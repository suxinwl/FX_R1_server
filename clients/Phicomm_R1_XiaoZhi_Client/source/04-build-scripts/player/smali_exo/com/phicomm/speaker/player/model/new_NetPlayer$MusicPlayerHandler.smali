.class final Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/model/new_NetPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MusicPlayerHandler"
.end annotation


# instance fields
.field private mFadeInVolume:F

.field private mFadeOutVolume:F

.field final synthetic this$0:Lcom/phicomm/speaker/player/model/new_NetPlayer;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/new_NetPlayer;Landroid/os/Looper;)V
    .registers 3

    .line 954
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->this$0:Lcom/phicomm/speaker/player/model/new_NetPlayer;

    .line 955
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 951
    iput p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->mFadeInVolume:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 952
    iput p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->mFadeOutVolume:F

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 960
    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/16 v0, 0xa

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5b

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq p1, v2, :cond_3d

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_22

    const/4 v0, 0x4

    if-eq p1, v0, :cond_14

    goto :goto_7b

    .line 986
    :cond_14
    iput v3, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->mFadeOutVolume:F

    .line 987
    iput v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->mFadeInVolume:F

    .line 988
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->this$0:Lcom/phicomm/speaker/player/model/new_NetPlayer;

    # getter for: Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->access$200(Lcom/phicomm/speaker/player/model/new_NetPlayer;)Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->setVolume(F)V

    goto :goto_7b

    .line 980
    :cond_22
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->this$0:Lcom/phicomm/speaker/player/model/new_NetPlayer;

    # getter for: Lcom/phicomm/speaker/player/model/new_NetPlayer;->stopTask:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->access$300(Lcom/phicomm/speaker/player/model/new_NetPlayer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    .line 981
    iput v3, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->mFadeOutVolume:F

    .line 982
    iput v1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->mFadeInVolume:F

    .line 983
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->this$0:Lcom/phicomm/speaker/player/model/new_NetPlayer;

    # getter for: Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->access$200(Lcom/phicomm/speaker/player/model/new_NetPlayer;)Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->setVolume(F)V

    goto :goto_7b

    .line 971
    :cond_3d
    iget p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->mFadeInVolume:F

    const v4, 0x3c23d70a    # 0.01f

    add-float/2addr p1, v4

    iput p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->mFadeInVolume:F

    cmpg-float p1, p1, v3

    if-gez p1, :cond_4d

    .line 973
    invoke-virtual {p0, v2, v0, v1}, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4f

    .line 975
    :cond_4d
    iput v3, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->mFadeInVolume:F

    .line 977
    :goto_4f
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->this$0:Lcom/phicomm/speaker/player/model/new_NetPlayer;

    # getter for: Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->access$200(Lcom/phicomm/speaker/player/model/new_NetPlayer;)Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    move-result-object p1

    iget v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->mFadeInVolume:F

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->setVolume(F)V

    goto :goto_7b

    .line 962
    :cond_5b
    iget p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->mFadeOutVolume:F

    const v3, 0x3d4ccccd    # 0.05f

    sub-float/2addr p1, v3

    iput p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->mFadeOutVolume:F

    const v3, 0x3e4ccccd    # 0.2f

    cmpl-float p1, p1, v3

    if-lez p1, :cond_6e

    .line 964
    invoke-virtual {p0, v2, v0, v1}, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_70

    .line 966
    :cond_6e
    iput v3, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->mFadeOutVolume:F

    .line 968
    :goto_70
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->this$0:Lcom/phicomm/speaker/player/model/new_NetPlayer;

    # getter for: Lcom/phicomm/speaker/player/model/new_NetPlayer;->mPlayer:Lcom/phicomm/speaker/player/model/MultiExoPlayer;
    invoke-static {p1}, Lcom/phicomm/speaker/player/model/new_NetPlayer;->access$200(Lcom/phicomm/speaker/player/model/new_NetPlayer;)Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    move-result-object p1

    iget v0, p0, Lcom/phicomm/speaker/player/model/new_NetPlayer$MusicPlayerHandler;->mFadeOutVolume:F

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->setVolume(F)V

    :goto_7b
    return-void
.end method
