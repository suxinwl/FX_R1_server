.class public final enum Lcom/alibaba/fastjson/PropertyNamingStrategy;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum KebabCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum NoChange:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum PascalCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum SnakeCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 7
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string v1, "CamelCase"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 8
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string v1, "PascalCase"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->PascalCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 9
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string v1, "SnakeCase"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->SnakeCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 10
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string v1, "KebabCase"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->KebabCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 11
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string v1, "NoChange"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->NoChange:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 6
    sget-object v7, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    aput-object v7, v1, v2

    sget-object v2, Lcom/alibaba/fastjson/PropertyNamingStrategy;->PascalCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/fastjson/PropertyNamingStrategy;->SnakeCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    aput-object v2, v1, v4

    sget-object v2, Lcom/alibaba/fastjson/PropertyNamingStrategy;->KebabCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->$VALUES:[Lcom/alibaba/fastjson/PropertyNamingStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .registers 2

    .line 6
    const-class v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .registers 1

    .line 6
    sget-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->$VALUES:[Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-virtual {v0}, [Lcom/alibaba/fastjson/PropertyNamingStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson/PropertyNamingStrategy;

    return-object v0
.end method


# virtual methods
.method public translate(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 14
    sget-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy$1;->$SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy:[I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x41

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_7e

    const/4 v3, 0x2

    if-eq v0, v3, :cond_52

    const/4 v3, 0x3

    if-eq v0, v3, :cond_34

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1a

    return-object p1

    .line 58
    :cond_1a
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v2, :cond_33

    if-gt v0, v1, :cond_33

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 61
    aget-char v0, p1, v4

    add-int/lit8 v0, v0, 0x20

    int-to-char v0, v0

    aput-char v0, p1, v4

    .line 62
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_33
    return-object p1

    .line 48
    :cond_34
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-lt v0, v1, :cond_51

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_51

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 51
    aget-char v0, p1, v4

    add-int/lit8 v0, v0, -0x20

    int-to-char v0, v0

    aput-char v0, p1, v4

    .line 52
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_51
    return-object p1

    .line 32
    :cond_52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    :goto_57
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v4, v3, :cond_79

    .line 34
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v2, :cond_73

    if-gt v3, v1, :cond_73

    add-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    if-lez v4, :cond_6f

    const/16 v5, 0x2d

    .line 38
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    :cond_6f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_76

    .line 42
    :cond_73
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_76
    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    .line 45
    :cond_79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 16
    :cond_7e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    :goto_83
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v4, v3, :cond_a5

    .line 18
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v2, :cond_9f

    if-gt v3, v1, :cond_9f

    add-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    if-lez v4, :cond_9b

    const/16 v5, 0x5f

    .line 22
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    :cond_9b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a2

    .line 26
    :cond_9f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_a2
    add-int/lit8 v4, v4, 0x1

    goto :goto_83

    .line 29
    :cond_a5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
