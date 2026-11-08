.class Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;
.super Ljava/lang/Object;
.source "JmDNSImpl.java"

# interfaces
.implements Ljavax/jmdns/ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/JmDNSImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceCollector"
.end annotation


# instance fields
.field private final _events:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/ServiceEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final _infos:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljavax/jmdns/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _needToWaitForInfos:Z

.field private final _type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 2025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2026
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    .line 2027
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_events:Ljava/util/concurrent/ConcurrentMap;

    .line 2028
    iput-object p1, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_type:Ljava/lang/String;

    .line 2029
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_needToWaitForInfos:Z

    .line 2030
    return-void
.end method


# virtual methods
.method public list(J)[Ljavax/jmdns/ServiceInfo;
    .registers 10
    .param p1, "timeout"    # J

    .prologue
    const-wide/16 v4, 0xc8

    .line 2092
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_events:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-boolean v1, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_needToWaitForInfos:Z

    if-eqz v1, :cond_3f

    .line 2093
    :cond_16
    div-long v2, p1, v4

    .line 2094
    .local v2, "loops":J
    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-gez v1, :cond_20

    .line 2095
    const-wide/16 v2, 0x1

    .line 2097
    :cond_20
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    int-to-long v4, v0

    cmp-long v1, v4, v2

    if-gez v1, :cond_3f

    .line 2099
    const-wide/16 v4, 0xc8

    :try_start_28
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_5a

    .line 2103
    :goto_2b
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_events:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_57

    iget-boolean v1, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_needToWaitForInfos:Z

    if-nez v1, :cond_57

    .line 2108
    .end local v0    # "i":I
    .end local v2    # "loops":J
    :cond_3f
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_needToWaitForInfos:Z

    .line 2109
    iget-object v1, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v4, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v4

    new-array v4, v4, [Ljavax/jmdns/ServiceInfo;

    invoke-interface {v1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavax/jmdns/ServiceInfo;

    return-object v1

    .line 2097
    .restart local v0    # "i":I
    .restart local v2    # "loops":J
    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 2100
    :catch_5a
    move-exception v1

    goto :goto_2b
.end method

.method public serviceAdded(Ljavax/jmdns/ServiceEvent;)V
    .registers 8
    .param p1, "event"    # Ljavax/jmdns/ServiceEvent;

    .prologue
    .line 2040
    monitor-enter p0

    .line 2041
    :try_start_1
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    .line 2042
    .local v0, "info":Ljavax/jmdns/ServiceInfo;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->hasData()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2043
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2053
    :goto_16
    monitor-exit p0

    .line 2054
    return-void

    .line 2045
    :cond_18
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Ljavax/jmdns/ServiceInfo;->getSubtype()Ljava/lang/String;

    move-result-object v1

    .line 2046
    .local v1, "subtype":Ljava/lang/String;
    :goto_1e
    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getDNS()Ljavax/jmdns/JmDNS;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v1, v5}, Ljavax/jmdns/impl/JmDNSImpl;->resolveServiceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljavax/jmdns/impl/ServiceInfoImpl;

    move-result-object v0

    .line 2047
    if-eqz v0, :cond_43

    .line 2048
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 2053
    .end local v0    # "info":Ljavax/jmdns/ServiceInfo;
    .end local v1    # "subtype":Ljava/lang/String;
    :catchall_3d
    move-exception v2

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_3d

    throw v2

    .line 2045
    .restart local v0    # "info":Ljavax/jmdns/ServiceInfo;
    :cond_40
    :try_start_40
    const-string v1, ""

    goto :goto_1e

    .line 2050
    .restart local v1    # "subtype":Ljava/lang/String;
    :cond_43
    iget-object v2, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_events:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catchall {:try_start_40 .. :try_end_4c} :catchall_3d

    goto :goto_16
.end method

.method public serviceRemoved(Ljavax/jmdns/ServiceEvent;)V
    .registers 4
    .param p1, "event"    # Ljavax/jmdns/ServiceEvent;

    .prologue
    .line 2064
    monitor-enter p0

    .line 2065
    :try_start_1
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2066
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_events:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2067
    monitor-exit p0

    .line 2068
    return-void

    .line 2067
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public serviceResolved(Ljavax/jmdns/ServiceEvent;)V
    .registers 5
    .param p1, "event"    # Ljavax/jmdns/ServiceEvent;

    .prologue
    .line 2078
    monitor-enter p0

    .line 2079
    :try_start_1
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getInfo()Ljavax/jmdns/ServiceInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2080
    iget-object v0, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_events:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2081
    monitor-exit p0

    .line 2082
    return-void

    .line 2081
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2117
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2118
    .local v0, "aLog":Ljava/lang/StringBuffer;
    const-string v3, "\n\tType: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2119
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_type:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2120
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 2121
    const-string v3, "\n\tNo services collected."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2131
    :cond_1c
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_events:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 2132
    const-string v3, "\n\tNo event queued."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2142
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2123
    :cond_2e
    const-string v3, "\n\tServices"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2124
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2125
    .local v2, "key":Ljava/lang/String;
    const-string v3, "\n\t\tService: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2127
    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2128
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_infos:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_3d

    .line 2134
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    :cond_60
    const-string v3, "\n\tEvents"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2135
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_events:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_6f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2136
    .restart local v2    # "key":Ljava/lang/String;
    const-string v3, "\n\t\tEvent: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2138
    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2139
    iget-object v3, p0, Ljavax/jmdns/impl/JmDNSImpl$ServiceCollector;->_events:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_6f
.end method
