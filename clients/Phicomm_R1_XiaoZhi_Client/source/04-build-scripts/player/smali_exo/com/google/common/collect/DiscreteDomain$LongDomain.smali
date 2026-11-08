.class final Lcom/google/common/collect/DiscreteDomain$LongDomain;
.super Lcom/google/common/collect/DiscreteDomain;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/DiscreteDomain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LongDomain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/DiscreteDomain<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/collect/DiscreteDomain$LongDomain;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 107
    new-instance v0, Lcom/google/common/collect/DiscreteDomain$LongDomain;

    invoke-direct {v0}, Lcom/google/common/collect/DiscreteDomain$LongDomain;-><init>()V

    sput-object v0, Lcom/google/common/collect/DiscreteDomain$LongDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomain$LongDomain;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Lcom/google/common/collect/DiscreteDomain;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/google/common/collect/DiscreteDomain$LongDomain;
    .registers 1

    .line 106
    sget-object v0, Lcom/google/common/collect/DiscreteDomain$LongDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomain$LongDomain;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .line 144
    sget-object v0, Lcom/google/common/collect/DiscreteDomain$LongDomain;->INSTANCE:Lcom/google/common/collect/DiscreteDomain$LongDomain;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic distance(Ljava/lang/Comparable;Ljava/lang/Comparable;)J
    .registers 3

    .line 106
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/DiscreteDomain$LongDomain;->distance(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide p1

    return-wide p1
.end method

.method public distance(Ljava/lang/Long;Ljava/lang/Long;)J
    .registers 12

    .line 123
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 124
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v4

    if-lez v8, :cond_21

    cmp-long v2, v0, v6

    if-gez v2, :cond_21

    const-wide p1, 0x7fffffffffffffffL

    return-wide p1

    .line 127
    :cond_21
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long v4, v2, p1

    if-gez v4, :cond_34

    cmp-long p1, v0, v6

    if-lez p1, :cond_34

    const-wide/high16 p1, -0x8000000000000000L

    return-wide p1

    :cond_34
    return-wide v0
.end method

.method public bridge synthetic maxValue()Ljava/lang/Comparable;
    .registers 2

    .line 106
    invoke-virtual {p0}, Lcom/google/common/collect/DiscreteDomain$LongDomain;->maxValue()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public maxValue()Ljava/lang/Long;
    .registers 3

    const-wide v0, 0x7fffffffffffffffL

    .line 140
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic minValue()Ljava/lang/Comparable;
    .registers 2

    .line 106
    invoke-virtual {p0}, Lcom/google/common/collect/DiscreteDomain$LongDomain;->minValue()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public minValue()Ljava/lang/Long;
    .registers 3

    const-wide/high16 v0, -0x8000000000000000L

    .line 135
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .registers 2

    .line 106
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/DiscreteDomain$LongDomain;->next(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public next(Ljava/lang/Long;)Ljava/lang/Long;
    .registers 6

    .line 111
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p1, v0, v2

    if-nez p1, :cond_f

    const/4 p1, 0x0

    goto :goto_16

    :cond_f
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 112
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_16
    return-object p1
.end method

.method public bridge synthetic previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .registers 2

    .line 106
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/DiscreteDomain$LongDomain;->previous(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public previous(Ljava/lang/Long;)Ljava/lang/Long;
    .registers 6

    .line 117
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p1, v0, v2

    if-nez p1, :cond_c

    const/4 p1, 0x0

    goto :goto_13

    :cond_c
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 118
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_13
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "DiscreteDomain.longs()"

    return-object v0
.end method
