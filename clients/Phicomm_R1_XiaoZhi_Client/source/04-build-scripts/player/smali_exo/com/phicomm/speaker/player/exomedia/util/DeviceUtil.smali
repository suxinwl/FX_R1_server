.class public Lcom/phicomm/speaker/player/exomedia/util/DeviceUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/exomedia/util/DeviceUtil$NonCompatibleDevice;
    }
.end annotation


# static fields
.field protected static final NON_COMPATIBLE_DEVICES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/player/exomedia/util/DeviceUtil$NonCompatibleDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/player/exomedia/util/DeviceUtil;->NON_COMPATIBLE_DEVICES:Ljava/util/List;

    new-instance v1, Lcom/phicomm/speaker/player/exomedia/util/DeviceUtil$NonCompatibleDevice;

    const-string v2, "Amazon"

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/player/exomedia/util/DeviceUtil$NonCompatibleDevice;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDeviceTV(Landroid/content/Context;)Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_19

    const-string v0, "uimode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    return p1
.end method

.method public isNotCompatible(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/player/exomedia/util/DeviceUtil$NonCompatibleDevice;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/player/exomedia/util/DeviceUtil$NonCompatibleDevice;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/util/DeviceUtil$NonCompatibleDevice;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/util/DeviceUtil$NonCompatibleDevice;->ignoreModel()Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_32

    :cond_24
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/util/DeviceUtil$NonCompatibleDevice;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    :goto_32
    return v1
.end method

.method public supportsExoPlayer(Landroid/content/Context;)Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_f

    sget-object v0, Lcom/phicomm/speaker/player/exomedia/util/DeviceUtil;->NON_COMPATIBLE_DEVICES:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/player/exomedia/util/DeviceUtil;->isNotCompatible(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_26

    :cond_f
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/exomedia/util/DeviceUtil;->isDeviceTV(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_26

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p1, v0, :cond_26

    goto :goto_28

    :cond_26
    :goto_26
    const/4 p1, 0x1

    goto :goto_29

    :cond_28
    :goto_28
    const/4 p1, 0x0

    :goto_29
    return p1
.end method
