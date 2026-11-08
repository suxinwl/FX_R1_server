.class public final synthetic Lcom/phicomm/speaker/player/model/-$$Lambda$MultiExoPlayer$PlayerInstance$idrOD1OqPufpJyWxP_zJngqeHjY;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/phicomm/speaker/player/exomedia/listener/OnBufferUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;


# direct methods
.method public synthetic constructor <init>(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/player/model/-$$Lambda$MultiExoPlayer$PlayerInstance$idrOD1OqPufpJyWxP_zJngqeHjY;->f$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    return-void
.end method


# virtual methods
.method public final onBufferingUpdate(I)V
    .registers 3

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/-$$Lambda$MultiExoPlayer$PlayerInstance$idrOD1OqPufpJyWxP_zJngqeHjY;->f$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->lambda$initListeners$0$MultiExoPlayer$PlayerInstance(I)V

    return-void
.end method
