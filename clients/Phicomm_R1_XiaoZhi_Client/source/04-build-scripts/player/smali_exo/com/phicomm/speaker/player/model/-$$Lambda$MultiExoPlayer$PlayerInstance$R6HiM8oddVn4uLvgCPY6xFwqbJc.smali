.class public final synthetic Lcom/phicomm/speaker/player/model/-$$Lambda$MultiExoPlayer$PlayerInstance$R6HiM8oddVn4uLvgCPY6xFwqbJc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;


# direct methods
.method public synthetic constructor <init>(Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/player/model/-$$Lambda$MultiExoPlayer$PlayerInstance$R6HiM8oddVn4uLvgCPY6xFwqbJc;->f$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/phicomm/speaker/player/model/-$$Lambda$MultiExoPlayer$PlayerInstance$R6HiM8oddVn4uLvgCPY6xFwqbJc;->f$0:Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/model/MultiExoPlayer$PlayerInstance;->lambda$startBufferMonitor$1$MultiExoPlayer$PlayerInstance()V

    return-void
.end method
