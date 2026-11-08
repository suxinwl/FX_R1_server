.class public final enum Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/exomedia/ExoMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RendererType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

.field public static final enum AUDIO:Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

.field public static final enum CLOSED_CAPTION:Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

.field public static final enum METADATA:Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

.field public static final enum VIDEO:Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    const-string v1, "AUDIO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;->AUDIO:Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    new-instance v0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    const-string v1, "VIDEO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;->VIDEO:Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    new-instance v0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    const-string v1, "CLOSED_CAPTION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;->CLOSED_CAPTION:Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    new-instance v0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    const-string v1, "METADATA"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;->METADATA:Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    sget-object v6, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;->AUDIO:Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;->VIDEO:Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;->CLOSED_CAPTION:Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;->$VALUES:[Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;
    .registers 2

    const-class v0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    return-object p0
.end method

.method public static values()[Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;
    .registers 1

    sget-object v0, Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;->$VALUES:[Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    invoke-virtual {v0}, [Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/phicomm/speaker/player/exomedia/ExoMedia$RendererType;

    return-object v0
.end method
