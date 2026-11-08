.class public final enum Ljavax/jmdns/impl/constants/DNSState;
.super Ljava/lang/Enum;
.source "DNSState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/constants/DNSState$1;,
        Ljavax/jmdns/impl/constants/DNSState$StateClass;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/jmdns/impl/constants/DNSState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum ANNOUNCED:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum ANNOUNCING_1:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum ANNOUNCING_2:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum CANCELED:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum CANCELING_1:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum CANCELING_2:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum CANCELING_3:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum CLOSED:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum CLOSING:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum PROBING_1:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum PROBING_2:Ljavax/jmdns/impl/constants/DNSState;

.field public static final enum PROBING_3:Ljavax/jmdns/impl/constants/DNSState;


# instance fields
.field private final _name:Ljava/lang/String;

.field private final _state:Ljavax/jmdns/impl/constants/DNSState$StateClass;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 17
    new-instance v0, Ljavax/jmdns/impl/constants/DNSState;

    const-string v1, "PROBING_1"

    const-string v2, "probing 1"

    sget-object v3, Ljavax/jmdns/impl/constants/DNSState$StateClass;->probing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v5, v2, v3}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_1:Ljavax/jmdns/impl/constants/DNSState;

    .line 21
    new-instance v0, Ljavax/jmdns/impl/constants/DNSState;

    const-string v1, "PROBING_2"

    const-string v2, "probing 2"

    sget-object v3, Ljavax/jmdns/impl/constants/DNSState$StateClass;->probing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v6, v2, v3}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_2:Ljavax/jmdns/impl/constants/DNSState;

    .line 25
    new-instance v0, Ljavax/jmdns/impl/constants/DNSState;

    const-string v1, "PROBING_3"

    const-string v2, "probing 3"

    sget-object v3, Ljavax/jmdns/impl/constants/DNSState$StateClass;->probing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v7, v2, v3}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_3:Ljavax/jmdns/impl/constants/DNSState;

    .line 29
    new-instance v0, Ljavax/jmdns/impl/constants/DNSState;

    const-string v1, "ANNOUNCING_1"

    const-string v2, "announcing 1"

    sget-object v3, Ljavax/jmdns/impl/constants/DNSState$StateClass;->announcing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v8, v2, v3}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCING_1:Ljavax/jmdns/impl/constants/DNSState;

    .line 33
    new-instance v0, Ljavax/jmdns/impl/constants/DNSState;

    const-string v1, "ANNOUNCING_2"

    const-string v2, "announcing 2"

    sget-object v3, Ljavax/jmdns/impl/constants/DNSState$StateClass;->announcing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v9, v2, v3}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCING_2:Ljavax/jmdns/impl/constants/DNSState;

    .line 37
    new-instance v0, Ljavax/jmdns/impl/constants/DNSState;

    const-string v1, "ANNOUNCED"

    const/4 v2, 0x5

    const-string v3, "announced"

    sget-object v4, Ljavax/jmdns/impl/constants/DNSState$StateClass;->announced:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCED:Ljavax/jmdns/impl/constants/DNSState;

    .line 41
    new-instance v0, Ljavax/jmdns/impl/constants/DNSState;

    const-string v1, "CANCELING_1"

    const/4 v2, 0x6

    const-string v3, "canceling 1"

    sget-object v4, Ljavax/jmdns/impl/constants/DNSState$StateClass;->canceling:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_1:Ljavax/jmdns/impl/constants/DNSState;

    .line 45
    new-instance v0, Ljavax/jmdns/impl/constants/DNSState;

    const-string v1, "CANCELING_2"

    const/4 v2, 0x7

    const-string v3, "canceling 2"

    sget-object v4, Ljavax/jmdns/impl/constants/DNSState$StateClass;->canceling:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_2:Ljavax/jmdns/impl/constants/DNSState;

    .line 49
    new-instance v0, Ljavax/jmdns/impl/constants/DNSState;

    const-string v1, "CANCELING_3"

    const/16 v2, 0x8

    const-string v3, "canceling 3"

    sget-object v4, Ljavax/jmdns/impl/constants/DNSState$StateClass;->canceling:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_3:Ljavax/jmdns/impl/constants/DNSState;

    .line 53
    new-instance v0, Ljavax/jmdns/impl/constants/DNSState;

    const-string v1, "CANCELED"

    const/16 v2, 0x9

    const-string v3, "canceled"

    sget-object v4, Ljavax/jmdns/impl/constants/DNSState$StateClass;->canceled:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSState;->CANCELED:Ljavax/jmdns/impl/constants/DNSState;

    .line 57
    new-instance v0, Ljavax/jmdns/impl/constants/DNSState;

    const-string v1, "CLOSING"

    const/16 v2, 0xa

    const-string v3, "closing"

    sget-object v4, Ljavax/jmdns/impl/constants/DNSState$StateClass;->closing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSState;->CLOSING:Ljavax/jmdns/impl/constants/DNSState;

    .line 61
    new-instance v0, Ljavax/jmdns/impl/constants/DNSState;

    const-string v1, "CLOSED"

    const/16 v2, 0xb

    const-string v3, "closed"

    sget-object v4, Ljavax/jmdns/impl/constants/DNSState$StateClass;->closed:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/constants/DNSState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSState;->CLOSED:Ljavax/jmdns/impl/constants/DNSState;

    .line 12
    const/16 v0, 0xc

    new-array v0, v0, [Ljavax/jmdns/impl/constants/DNSState;

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState;->PROBING_1:Ljavax/jmdns/impl/constants/DNSState;

    aput-object v1, v0, v5

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState;->PROBING_2:Ljavax/jmdns/impl/constants/DNSState;

    aput-object v1, v0, v6

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState;->PROBING_3:Ljavax/jmdns/impl/constants/DNSState;

    aput-object v1, v0, v7

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCING_1:Ljavax/jmdns/impl/constants/DNSState;

    aput-object v1, v0, v8

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCING_2:Ljavax/jmdns/impl/constants/DNSState;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCED:Ljavax/jmdns/impl/constants/DNSState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_1:Ljavax/jmdns/impl/constants/DNSState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_2:Ljavax/jmdns/impl/constants/DNSState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_3:Ljavax/jmdns/impl/constants/DNSState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Ljavax/jmdns/impl/constants/DNSState;->CANCELED:Ljavax/jmdns/impl/constants/DNSState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Ljavax/jmdns/impl/constants/DNSState;->CLOSING:Ljavax/jmdns/impl/constants/DNSState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Ljavax/jmdns/impl/constants/DNSState;->CLOSED:Ljavax/jmdns/impl/constants/DNSState;

    aput-object v2, v0, v1

    sput-object v0, Ljavax/jmdns/impl/constants/DNSState;->$VALUES:[Ljavax/jmdns/impl/constants/DNSState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljavax/jmdns/impl/constants/DNSState$StateClass;)V
    .registers 5
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "state"    # Ljavax/jmdns/impl/constants/DNSState$StateClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljavax/jmdns/impl/constants/DNSState$StateClass;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput-object p3, p0, Ljavax/jmdns/impl/constants/DNSState;->_name:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Ljavax/jmdns/impl/constants/DNSState;->_state:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    .line 76
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/jmdns/impl/constants/DNSState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Ljavax/jmdns/impl/constants/DNSState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/constants/DNSState;

    return-object v0
.end method

.method public static values()[Ljavax/jmdns/impl/constants/DNSState;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->$VALUES:[Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {v0}, [Ljavax/jmdns/impl/constants/DNSState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/jmdns/impl/constants/DNSState;

    return-object v0
.end method


# virtual methods
.method public final advance()Ljavax/jmdns/impl/constants/DNSState;
    .registers 3

    .prologue
    .line 91
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState$1;->$SwitchMap$javax$jmdns$impl$constants$DNSState:[I

    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 118
    .end local p0    # "this":Ljavax/jmdns/impl/constants/DNSState;
    :goto_b
    return-object p0

    .line 93
    .restart local p0    # "this":Ljavax/jmdns/impl/constants/DNSState;
    :pswitch_c
    sget-object p0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_2:Ljavax/jmdns/impl/constants/DNSState;

    goto :goto_b

    .line 95
    :pswitch_f
    sget-object p0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_3:Ljavax/jmdns/impl/constants/DNSState;

    goto :goto_b

    .line 97
    :pswitch_12
    sget-object p0, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCING_1:Ljavax/jmdns/impl/constants/DNSState;

    goto :goto_b

    .line 99
    :pswitch_15
    sget-object p0, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCING_2:Ljavax/jmdns/impl/constants/DNSState;

    goto :goto_b

    .line 101
    :pswitch_18
    sget-object p0, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCED:Ljavax/jmdns/impl/constants/DNSState;

    goto :goto_b

    .line 103
    :pswitch_1b
    sget-object p0, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCED:Ljavax/jmdns/impl/constants/DNSState;

    goto :goto_b

    .line 105
    :pswitch_1e
    sget-object p0, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_2:Ljavax/jmdns/impl/constants/DNSState;

    goto :goto_b

    .line 107
    :pswitch_21
    sget-object p0, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_3:Ljavax/jmdns/impl/constants/DNSState;

    goto :goto_b

    .line 109
    :pswitch_24
    sget-object p0, Ljavax/jmdns/impl/constants/DNSState;->CANCELED:Ljavax/jmdns/impl/constants/DNSState;

    goto :goto_b

    .line 111
    :pswitch_27
    sget-object p0, Ljavax/jmdns/impl/constants/DNSState;->CANCELED:Ljavax/jmdns/impl/constants/DNSState;

    goto :goto_b

    .line 113
    :pswitch_2a
    sget-object p0, Ljavax/jmdns/impl/constants/DNSState;->CLOSED:Ljavax/jmdns/impl/constants/DNSState;

    goto :goto_b

    .line 115
    :pswitch_2d
    sget-object p0, Ljavax/jmdns/impl/constants/DNSState;->CLOSED:Ljavax/jmdns/impl/constants/DNSState;

    goto :goto_b

    .line 91
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
    .end packed-switch
.end method

.method public final isAnnounced()Z
    .registers 3

    .prologue
    .line 176
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSState;->_state:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->announced:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isAnnouncing()Z
    .registers 3

    .prologue
    .line 167
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSState;->_state:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->announcing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isCanceled()Z
    .registers 3

    .prologue
    .line 194
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSState;->_state:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->canceled:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isCanceling()Z
    .registers 3

    .prologue
    .line 185
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSState;->_state:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->canceling:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isClosed()Z
    .registers 3

    .prologue
    .line 212
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSState;->_state:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->closed:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isClosing()Z
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSState;->_state:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->closing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isProbing()Z
    .registers 3

    .prologue
    .line 158
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSState;->_state:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$StateClass;->probing:Ljavax/jmdns/impl/constants/DNSState$StateClass;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final revert()Ljavax/jmdns/impl/constants/DNSState;
    .registers 3

    .prologue
    .line 128
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState$1;->$SwitchMap$javax$jmdns$impl$constants$DNSState:[I

    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 148
    .end local p0    # "this":Ljavax/jmdns/impl/constants/DNSState;
    :goto_b
    return-object p0

    .line 135
    .restart local p0    # "this":Ljavax/jmdns/impl/constants/DNSState;
    :pswitch_c
    sget-object p0, Ljavax/jmdns/impl/constants/DNSState;->PROBING_1:Ljavax/jmdns/impl/constants/DNSState;

    goto :goto_b

    .line 139
    :pswitch_f
    sget-object p0, Ljavax/jmdns/impl/constants/DNSState;->CANCELING_1:Ljavax/jmdns/impl/constants/DNSState;

    goto :goto_b

    .line 141
    :pswitch_12
    sget-object p0, Ljavax/jmdns/impl/constants/DNSState;->CANCELED:Ljavax/jmdns/impl/constants/DNSState;

    goto :goto_b

    .line 143
    :pswitch_15
    sget-object p0, Ljavax/jmdns/impl/constants/DNSState;->CLOSING:Ljavax/jmdns/impl/constants/DNSState;

    goto :goto_b

    .line 145
    :pswitch_18
    sget-object p0, Ljavax/jmdns/impl/constants/DNSState;->CLOSED:Ljavax/jmdns/impl/constants/DNSState;

    goto :goto_b

    .line 128
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSState;->_name:Ljava/lang/String;

    return-object v0
.end method
