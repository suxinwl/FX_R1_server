.class Lcom/phicomm/speaker/player/airplay/JmdnsWrapper$1;
.super Ljava/lang/Object;
.source "JmdnsWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->registerService(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;

.field final synthetic val$port:I


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;I)V
    .registers 3

    .prologue
    .line 71
    iput-object p1, p0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper$1;->this$0:Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;

    iput p2, p0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper$1;->val$port:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 74
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper$1;->this$0:Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;

    # getter for: Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->isOn:Z
    invoke-static {v0}, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->access$000(Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;)Z

    move-result v0

    if-nez v0, :cond_110

    .line 77
    :try_start_8
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper$1;->this$0:Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;

    # getter for: Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->jmDNSInstances:Ljava/util/List;
    invoke-static {v0}, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->access$100(Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;)Ljava/util/List;

    move-result-object v13

    monitor-enter v13
    :try_end_f
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_f} :catch_101

    .line 78
    :try_start_f
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/net/NetworkInterface;

    .line 79
    .local v11, "iface":Ljava/net/NetworkInterface;
    invoke-virtual {v11}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 82
    invoke-virtual {v11}, Ljava/net/NetworkInterface;->isPointToPoint()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 85
    invoke-virtual {v11}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 89
    invoke-virtual {v11}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_45
    :goto_45
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    .line 90
    .local v6, "addr":Ljava/net/InetAddress;
    instance-of v0, v6, Ljava/net/Inet4Address;
    :try_end_53
    .catchall {:try_start_f .. :try_end_53} :catchall_fe

    if-eqz v0, :cond_45

    .line 100
    :try_start_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper$1;->this$0:Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;

    # getter for: Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->mHostName:Ljava/lang/String;
    invoke-static {v1}, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->access$200(Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-jmdns"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Ljavax/jmdns/JmDNS;->create(Ljava/net/InetAddress;Ljava/lang/String;)Ljavax/jmdns/JmDNS;

    move-result-object v12

    .line 101
    .local v12, "jmDNS":Ljavax/jmdns/JmDNS;
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper$1;->this$0:Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;

    # getter for: Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->jmDNSInstances:Ljava/util/List;
    invoke-static {v0}, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->access$100(Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    const-string v0, "_raop._tcp.local."

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper$1;->this$0:Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;

    # getter for: Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->mHardwareAddressString:Ljava/lang/String;
    invoke-static {v2}, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->access$300(Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper$1;->this$0:Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;

    # getter for: Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->mHostName:Ljava/lang/String;
    invoke-static {v2}, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->access$200(Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper$1;->val$port:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    # getter for: Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->AIRTUNES_SERVICE_PROPERTIES:Ljava/util/Map;
    invoke-static {}, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->access$400()Ljava/util/Map;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Ljavax/jmdns/ServiceInfo;->create(Ljava/lang/String;Ljava/lang/String;IIILjava/util/Map;)Ljavax/jmdns/ServiceInfo;

    move-result-object v7

    .line 111
    .local v7, "airTunesServiceInfo":Ljavax/jmdns/ServiceInfo;
    invoke-virtual {v12, v7}, Ljavax/jmdns/JmDNS;->registerService(Ljavax/jmdns/ServiceInfo;)V

    .line 112
    # getter for: Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->LOG:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->access$500()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered AirTunes service \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper$1;->this$0:Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;

    const/4 v1, 0x1

    # setter for: Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->isOn:Z
    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->access$002(Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;Z)Z
    :try_end_dd
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_dd} :catch_df
    .catchall {:try_start_55 .. :try_end_dd} :catchall_fe

    goto/16 :goto_45

    .line 114
    .end local v7    # "airTunesServiceInfo":Ljavax/jmdns/ServiceInfo;
    .end local v12    # "jmDNS":Ljavax/jmdns/JmDNS;
    :catch_df
    move-exception v8

    .line 115
    .local v8, "e":Ljava/lang/Throwable;
    :try_start_e0
    # getter for: Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->LOG:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->access$500()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to publish service on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 119
    .end local v6    # "addr":Ljava/net/InetAddress;
    .end local v8    # "e":Ljava/lang/Throwable;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "iface":Ljava/net/NetworkInterface;
    :catchall_fe
    move-exception v0

    monitor-exit v13
    :try_end_100
    .catchall {:try_start_e0 .. :try_end_100} :catchall_fe

    :try_start_100
    throw v0
    :try_end_101
    .catch Ljava/net/SocketException; {:try_start_100 .. :try_end_101} :catch_101

    .line 120
    :catch_101
    move-exception v8

    .line 121
    .local v8, "e":Ljava/net/SocketException;
    # getter for: Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->LOG:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->access$500()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Failed register mDNS services"

    invoke-virtual {v0, v1, v2, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    .end local v8    # "e":Ljava/net/SocketException;
    :goto_10d
    return-void

    .line 119
    :cond_10e
    :try_start_10e
    monitor-exit v13
    :try_end_10f
    .catchall {:try_start_10e .. :try_end_10f} :catchall_fe

    goto :goto_10d

    .line 124
    :cond_110
    # getter for: Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->LOG:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->access$500()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "mDNS services already registered"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_10d
.end method
