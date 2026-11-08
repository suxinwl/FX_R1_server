.class public final enum Ljavax/jmdns/impl/constants/DNSLabel;
.super Ljava/lang/Enum;
.source "DNSLabel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/jmdns/impl/constants/DNSLabel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/jmdns/impl/constants/DNSLabel;

.field public static final enum Compressed:Ljavax/jmdns/impl/constants/DNSLabel;

.field public static final enum Extended:Ljavax/jmdns/impl/constants/DNSLabel;

.field static final LABEL_MASK:I = 0xc0

.field static final LABEL_NOT_MASK:I = 0x3f

.field public static final enum Standard:Ljavax/jmdns/impl/constants/DNSLabel;

.field public static final enum Unknown:Ljavax/jmdns/impl/constants/DNSLabel;


# instance fields
.field private final _externalName:Ljava/lang/String;

.field private final _index:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 15
    new-instance v0, Ljavax/jmdns/impl/constants/DNSLabel;

    const-string v1, "Unknown"

    const-string v2, ""

    const/16 v3, 0x80

    invoke-direct {v0, v1, v4, v2, v3}, Ljavax/jmdns/impl/constants/DNSLabel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSLabel;->Unknown:Ljavax/jmdns/impl/constants/DNSLabel;

    .line 19
    new-instance v0, Ljavax/jmdns/impl/constants/DNSLabel;

    const-string v1, "Standard"

    const-string v2, "standard label"

    invoke-direct {v0, v1, v5, v2, v4}, Ljavax/jmdns/impl/constants/DNSLabel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSLabel;->Standard:Ljavax/jmdns/impl/constants/DNSLabel;

    .line 23
    new-instance v0, Ljavax/jmdns/impl/constants/DNSLabel;

    const-string v1, "Compressed"

    const-string v2, "compressed label"

    const/16 v3, 0xc0

    invoke-direct {v0, v1, v6, v2, v3}, Ljavax/jmdns/impl/constants/DNSLabel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSLabel;->Compressed:Ljavax/jmdns/impl/constants/DNSLabel;

    .line 27
    new-instance v0, Ljavax/jmdns/impl/constants/DNSLabel;

    const-string v1, "Extended"

    const-string v2, "extended label"

    const/16 v3, 0x40

    invoke-direct {v0, v1, v7, v2, v3}, Ljavax/jmdns/impl/constants/DNSLabel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSLabel;->Extended:Ljavax/jmdns/impl/constants/DNSLabel;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Ljavax/jmdns/impl/constants/DNSLabel;

    sget-object v1, Ljavax/jmdns/impl/constants/DNSLabel;->Unknown:Ljavax/jmdns/impl/constants/DNSLabel;

    aput-object v1, v0, v4

    sget-object v1, Ljavax/jmdns/impl/constants/DNSLabel;->Standard:Ljavax/jmdns/impl/constants/DNSLabel;

    aput-object v1, v0, v5

    sget-object v1, Ljavax/jmdns/impl/constants/DNSLabel;->Compressed:Ljavax/jmdns/impl/constants/DNSLabel;

    aput-object v1, v0, v6

    sget-object v1, Ljavax/jmdns/impl/constants/DNSLabel;->Extended:Ljavax/jmdns/impl/constants/DNSLabel;

    aput-object v1, v0, v7

    sput-object v0, Ljavax/jmdns/impl/constants/DNSLabel;->$VALUES:[Ljavax/jmdns/impl/constants/DNSLabel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Ljavax/jmdns/impl/constants/DNSLabel;->_externalName:Ljava/lang/String;

    .line 41
    iput p4, p0, Ljavax/jmdns/impl/constants/DNSLabel;->_index:I

    .line 42
    return-void
.end method

.method public static labelForByte(I)Ljavax/jmdns/impl/constants/DNSLabel;
    .registers 7
    .param p0, "index"    # I

    .prologue
    .line 67
    and-int/lit16 v4, p0, 0xc0

    .line 68
    .local v4, "maskedIndex":I
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSLabel;->values()[Ljavax/jmdns/impl/constants/DNSLabel;

    move-result-object v1

    .local v1, "arr$":[Ljavax/jmdns/impl/constants/DNSLabel;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_8
    if-ge v2, v3, :cond_14

    aget-object v0, v1, v2

    .line 69
    .local v0, "aLabel":Ljavax/jmdns/impl/constants/DNSLabel;
    iget v5, v0, Ljavax/jmdns/impl/constants/DNSLabel;->_index:I

    if-ne v5, v4, :cond_11

    .line 71
    .end local v0    # "aLabel":Ljavax/jmdns/impl/constants/DNSLabel;
    :goto_10
    return-object v0

    .line 68
    .restart local v0    # "aLabel":Ljavax/jmdns/impl/constants/DNSLabel;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 71
    .end local v0    # "aLabel":Ljavax/jmdns/impl/constants/DNSLabel;
    :cond_14
    sget-object v0, Ljavax/jmdns/impl/constants/DNSLabel;->Unknown:Ljavax/jmdns/impl/constants/DNSLabel;

    goto :goto_10
.end method

.method public static labelValue(I)I
    .registers 2
    .param p0, "index"    # I

    .prologue
    .line 79
    and-int/lit8 v0, p0, 0x3f

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/jmdns/impl/constants/DNSLabel;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Ljavax/jmdns/impl/constants/DNSLabel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/constants/DNSLabel;

    return-object v0
.end method

.method public static values()[Ljavax/jmdns/impl/constants/DNSLabel;
    .registers 1

    .prologue
    .line 11
    sget-object v0, Ljavax/jmdns/impl/constants/DNSLabel;->$VALUES:[Ljavax/jmdns/impl/constants/DNSLabel;

    invoke-virtual {v0}, [Ljavax/jmdns/impl/constants/DNSLabel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/jmdns/impl/constants/DNSLabel;

    return-object v0
.end method


# virtual methods
.method public externalName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSLabel;->_externalName:Ljava/lang/String;

    return-object v0
.end method

.method public indexValue()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Ljavax/jmdns/impl/constants/DNSLabel;->_index:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSLabel;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSLabel;->indexValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
