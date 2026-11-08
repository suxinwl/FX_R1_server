.class final Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Receiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/NetworkTypeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Receiver;->this$0:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;Lcom/google/android/exoplayer2/util/NetworkTypeObserver$1;)V
    .registers 3

    .line 211
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Receiver;-><init>(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 215
    # invokes: Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->getNetworkTypeFromConnectivityManager(Landroid/content/Context;)I
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->access$100(Landroid/content/Context;)I

    move-result p2

    .line 216
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_13

    const/4 v0, 0x5

    if-ne p2, v0, :cond_13

    .line 218
    iget-object p2, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Receiver;->this$0:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Api31;->disambiguate4gAnd5gNsa(Landroid/content/Context;Lcom/google/android/exoplayer2/util/NetworkTypeObserver;)V

    goto :goto_18

    .line 220
    :cond_13
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Receiver;->this$0:Lcom/google/android/exoplayer2/util/NetworkTypeObserver;

    # invokes: Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->updateNetworkType(I)V
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/NetworkTypeObserver;->access$200(Lcom/google/android/exoplayer2/util/NetworkTypeObserver;I)V

    :goto_18
    return-void
.end method
