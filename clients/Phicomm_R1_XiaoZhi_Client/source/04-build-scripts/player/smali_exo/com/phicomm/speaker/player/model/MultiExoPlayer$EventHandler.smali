.class Lcom/phicomm/speaker/player/model/MultiExoPlayer$EventHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/model/MultiExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/phicomm/speaker/player/model/MultiExoPlayer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/MultiExoPlayer;Lcom/phicomm/speaker/player/model/MultiExoPlayer;Landroid/os/Looper;)V
    .registers 4

    .line 1053
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$EventHandler;->this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    .line 1054
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1055
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$EventHandler;->ref:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 1060
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$EventHandler;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_26

    .line 1062
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$400()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",ExoPlayer went away with unhandled events"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1065
    :cond_26
    iget-object v2, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$EventHandler;->this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object v2, v2, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->listenerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1066
    :try_start_2b
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_af

    const/4 v4, 0x2

    if-eq v3, v4, :cond_a1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_93

    packed-switch v3, :pswitch_data_c2

    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$400()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",Unknown message type "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/phicomm/speaker/player/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_58
    .catchall {:try_start_2b .. :try_end_58} :catchall_be

    goto :goto_bc

    .line 1093
    :pswitch_59
    :try_start_59
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$EventHandler;->this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object p1, p1, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnErrorListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnErrorListener;

    if-eqz p1, :cond_bc

    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$EventHandler;->this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object p1, p1, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnErrorListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnErrorListener;

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1, v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnErrorListener;->onError(Lcom/phicomm/speaker/player/model/MultiExoPlayer;II)Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_67} :catch_68
    .catchall {:try_start_59 .. :try_end_67} :catchall_be

    goto :goto_bc

    :catch_68
    move-exception p1

    .line 1095
    :try_start_69
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_be

    goto :goto_bc

    .line 1082
    :pswitch_6d
    :try_start_6d
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$EventHandler;->this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$EventHandler;->this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    # getter for: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$1800(Lcom/phicomm/speaker/player/model/MultiExoPlayer;)Landroid/content/Context;

    move-result-object v0

    # invokes: Lcom/phicomm/speaker/player/model/MultiExoPlayer;->initPlayers(Landroid/content/Context;)V
    invoke-static {p1, v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->access$1900(Lcom/phicomm/speaker/player/model/MultiExoPlayer;Landroid/content/Context;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_78} :catch_79
    .catchall {:try_start_6d .. :try_end_78} :catchall_be

    goto :goto_7d

    :catch_79
    move-exception p1

    .line 1084
    :try_start_7a
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_be

    :goto_7d
    const-wide/16 v0, 0xbb8

    .line 1087
    :try_start_7f
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_82
    .catch Ljava/lang/InterruptedException; {:try_start_7f .. :try_end_82} :catch_bc
    .catchall {:try_start_7f .. :try_end_82} :catchall_be

    goto :goto_bc

    .line 1077
    :pswitch_83
    :try_start_83
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$EventHandler;->this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object p1, p1, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnBufferingUpdateListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnBufferingUpdateListener;

    if-eqz p1, :cond_bc

    .line 1078
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$EventHandler;->this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object p1, p1, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnBufferingUpdateListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnBufferingUpdateListener;

    const/16 v1, 0x7b

    invoke-interface {p1, v0, v1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/phicomm/speaker/player/model/MultiExoPlayer;I)V

    goto :goto_bc

    .line 1074
    :cond_93
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$EventHandler;->this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object p1, p1, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnPlayTimeOutListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnPlayTimeOutListener;

    if-eqz p1, :cond_bc

    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$EventHandler;->this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object p1, p1, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnPlayTimeOutListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnPlayTimeOutListener;

    invoke-interface {p1, v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnPlayTimeOutListener;->onUrlValidTimeOut(Lcom/phicomm/speaker/player/model/MultiExoPlayer;)V

    goto :goto_bc

    .line 1071
    :cond_a1
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$EventHandler;->this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object p1, p1, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnPlayTimeOutListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnPlayTimeOutListener;

    if-eqz p1, :cond_bc

    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$EventHandler;->this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object p1, p1, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnPlayTimeOutListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnPlayTimeOutListener;

    invoke-interface {p1, v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnPlayTimeOutListener;->onBufferingPauseTimeOut(Lcom/phicomm/speaker/player/model/MultiExoPlayer;)V

    goto :goto_bc

    .line 1068
    :cond_af
    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$EventHandler;->this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object p1, p1, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnPlayTimeOutListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnPlayTimeOutListener;

    if-eqz p1, :cond_bc

    iget-object p1, p0, Lcom/phicomm/speaker/player/model/MultiExoPlayer$EventHandler;->this$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer;

    iget-object p1, p1, Lcom/phicomm/speaker/player/model/MultiExoPlayer;->mOnPlayTimeOutListener:Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnPlayTimeOutListener;

    invoke-interface {p1, v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$OnPlayTimeOutListener;->onPreParingTimeOut(Lcom/phicomm/speaker/player/model/MultiExoPlayer;)V

    .line 1101
    :catch_bc
    :cond_bc
    :goto_bc
    monitor-exit v2

    return-void

    :catchall_be
    move-exception p1

    monitor-exit v2
    :try_end_c0
    .catchall {:try_start_83 .. :try_end_c0} :catchall_be

    throw p1

    nop

    :pswitch_data_c2
    .packed-switch 0xa
        :pswitch_83
        :pswitch_6d
        :pswitch_59
    .end packed-switch
.end method
