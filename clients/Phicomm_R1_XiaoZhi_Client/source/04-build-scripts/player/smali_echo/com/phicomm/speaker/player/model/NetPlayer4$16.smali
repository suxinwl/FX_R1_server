.class Lcom/phicomm/speaker/player/model/NetPlayer4$16;
.super Ljava/lang/Object;
.source "NetPlayer4.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/model/NetPlayer4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/model/NetPlayer4;)V
    .registers 2

    .prologue
    .line 1213
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$16;->this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 7
    .param p1, "focusChange"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1216
    const/4 v1, -0x2

    if-ne p1, v1, :cond_36

    .line 1218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/NetPlayer4;->access$1800()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AUDIOFOCUS_LOSS_TRANSIENT We\'ve temporarily lost focus, so pause the mMediaPlayer, wherever it\'s at."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1220
    :try_start_21
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$16;->this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;

    # invokes: Lcom/phicomm/speaker/player/model/NetPlayer4;->pauseInternal()Z
    invoke-static {v1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->access$1900(Lcom/phicomm/speaker/player/model/NetPlayer4;)Z

    .line 1221
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$16;->this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;

    # getter for: Lcom/phicomm/speaker/player/model/NetPlayer4;->mAudioManagerHelper:Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;
    invoke-static {v1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->access$2000(Lcom/phicomm/speaker/player/model/NetPlayer4;)Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->setHasAudioFocus(Z)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_30} :catch_31

    .line 1241
    :cond_30
    :goto_30
    return-void

    .line 1222
    :catch_31
    move-exception v0

    .line 1223
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30

    .line 1225
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_36
    if-ne p1, v4, :cond_63

    .line 1226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/NetPlayer4;->access$1800()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AUDIOFOCUS_GAIN We\'ve regained focus. Update the audioFocus tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1228
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$16;->this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;

    # invokes: Lcom/phicomm/speaker/player/model/NetPlayer4;->startInternal()Z
    invoke-static {v1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->access$2100(Lcom/phicomm/speaker/player/model/NetPlayer4;)Z

    .line 1230
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$16;->this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;

    # getter for: Lcom/phicomm/speaker/player/model/NetPlayer4;->mAudioManagerHelper:Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;
    invoke-static {v1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->access$2000(Lcom/phicomm/speaker/player/model/NetPlayer4;)Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->setHasAudioFocus(Z)V

    goto :goto_30

    .line 1231
    :cond_63
    const/4 v1, -0x1

    if-ne p1, v1, :cond_30

    .line 1232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/phicomm/speaker/player/model/NetPlayer4;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/player/model/NetPlayer4;->access$1800()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AUDIOFOCUS_LOSS We\'ve lost focus permanently so pause the service. We\'ll have to request focus again later."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/player/logger/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1235
    :try_start_82
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$16;->this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;

    # invokes: Lcom/phicomm/speaker/player/model/NetPlayer4;->pauseInternal()Z
    invoke-static {v1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->access$1900(Lcom/phicomm/speaker/player/model/NetPlayer4;)Z

    .line 1236
    iget-object v1, p0, Lcom/phicomm/speaker/player/model/NetPlayer4$16;->this$0:Lcom/phicomm/speaker/player/model/NetPlayer4;

    # getter for: Lcom/phicomm/speaker/player/model/NetPlayer4;->mAudioManagerHelper:Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;
    invoke-static {v1}, Lcom/phicomm/speaker/player/model/NetPlayer4;->access$2000(Lcom/phicomm/speaker/player/model/NetPlayer4;)Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->setHasAudioFocus(Z)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_91} :catch_92

    goto :goto_30

    .line 1237
    :catch_92
    move-exception v0

    .line 1238
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30
.end method
