.class synthetic Ljavax/jmdns/impl/DNSIncoming$1;
.super Ljava/lang/Object;
.source "DNSIncoming.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSIncoming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$javax$jmdns$impl$constants$DNSLabel:[I

.field static final synthetic $SwitchMap$javax$jmdns$impl$constants$DNSOptionCode:[I

.field static final synthetic $SwitchMap$javax$jmdns$impl$constants$DNSRecordType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 298
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSRecordType;->values()[Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSRecordType:[I

    :try_start_9
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSRecordType:[I

    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_ff

    :goto_14
    :try_start_14
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSRecordType:[I

    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_fc

    :goto_1f
    :try_start_1f
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSRecordType:[I

    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_CNAME:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_f9

    :goto_2a
    :try_start_2a
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSRecordType:[I

    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_PTR:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_f6

    :goto_35
    :try_start_35
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSRecordType:[I

    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_TXT:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_f3

    :goto_40
    :try_start_40
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSRecordType:[I

    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_SRV:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_f0

    :goto_4b
    :try_start_4b
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSRecordType:[I

    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_HINFO:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_ed

    :goto_56
    :try_start_56
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSRecordType:[I

    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_OPT:Ljavax/jmdns/impl/constants/DNSRecordType;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_ea

    .line 370
    :goto_62
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSOptionCode;->values()[Ljavax/jmdns/impl/constants/DNSOptionCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSOptionCode:[I

    :try_start_6b
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSOptionCode:[I

    sget-object v1, Ljavax/jmdns/impl/constants/DNSOptionCode;->Owner:Ljavax/jmdns/impl/constants/DNSOptionCode;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSOptionCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_76} :catch_e8

    :goto_76
    :try_start_76
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSOptionCode:[I

    sget-object v1, Ljavax/jmdns/impl/constants/DNSOptionCode;->LLQ:Ljavax/jmdns/impl/constants/DNSOptionCode;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSOptionCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76 .. :try_end_81} :catch_e6

    :goto_81
    :try_start_81
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSOptionCode:[I

    sget-object v1, Ljavax/jmdns/impl/constants/DNSOptionCode;->NSID:Ljavax/jmdns/impl/constants/DNSOptionCode;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSOptionCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_8c} :catch_e4

    :goto_8c
    :try_start_8c
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSOptionCode:[I

    sget-object v1, Ljavax/jmdns/impl/constants/DNSOptionCode;->UL:Ljavax/jmdns/impl/constants/DNSOptionCode;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSOptionCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_97
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_97} :catch_e2

    :goto_97
    :try_start_97
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSOptionCode:[I

    sget-object v1, Ljavax/jmdns/impl/constants/DNSOptionCode;->Unknown:Ljavax/jmdns/impl/constants/DNSOptionCode;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSOptionCode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_a2} :catch_e0

    .line 124
    :goto_a2
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSLabel;->values()[Ljavax/jmdns/impl/constants/DNSLabel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSLabel:[I

    :try_start_ab
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSLabel:[I

    sget-object v1, Ljavax/jmdns/impl/constants/DNSLabel;->Standard:Ljavax/jmdns/impl/constants/DNSLabel;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSLabel;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ab .. :try_end_b6} :catch_de

    :goto_b6
    :try_start_b6
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSLabel:[I

    sget-object v1, Ljavax/jmdns/impl/constants/DNSLabel;->Compressed:Ljavax/jmdns/impl/constants/DNSLabel;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSLabel;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c1} :catch_dc

    :goto_c1
    :try_start_c1
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSLabel:[I

    sget-object v1, Ljavax/jmdns/impl/constants/DNSLabel;->Extended:Ljavax/jmdns/impl/constants/DNSLabel;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSLabel;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c1 .. :try_end_cc} :catch_da

    :goto_cc
    :try_start_cc
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSLabel:[I

    sget-object v1, Ljavax/jmdns/impl/constants/DNSLabel;->Unknown:Ljavax/jmdns/impl/constants/DNSLabel;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSLabel;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_d7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc .. :try_end_d7} :catch_d8

    :goto_d7
    return-void

    :catch_d8
    move-exception v0

    goto :goto_d7

    :catch_da
    move-exception v0

    goto :goto_cc

    :catch_dc
    move-exception v0

    goto :goto_c1

    :catch_de
    move-exception v0

    goto :goto_b6

    .line 370
    :catch_e0
    move-exception v0

    goto :goto_a2

    :catch_e2
    move-exception v0

    goto :goto_97

    :catch_e4
    move-exception v0

    goto :goto_8c

    :catch_e6
    move-exception v0

    goto :goto_81

    :catch_e8
    move-exception v0

    goto :goto_76

    .line 298
    :catch_ea
    move-exception v0

    goto/16 :goto_62

    :catch_ed
    move-exception v0

    goto/16 :goto_56

    :catch_f0
    move-exception v0

    goto/16 :goto_4b

    :catch_f3
    move-exception v0

    goto/16 :goto_40

    :catch_f6
    move-exception v0

    goto/16 :goto_35

    :catch_f9
    move-exception v0

    goto/16 :goto_2a

    :catch_fc
    move-exception v0

    goto/16 :goto_1f

    :catch_ff
    move-exception v0

    goto/16 :goto_14
.end method
