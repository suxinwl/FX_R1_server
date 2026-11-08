.class public Lcom/phicomm/speaker/player/exomedia/util/DeviceUtil$NonCompatibleDevice;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/exomedia/util/DeviceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NonCompatibleDevice"
.end annotation


# instance fields
.field private ignoreModel:Z

.field private final manufacturer:Ljava/lang/String;

.field private final model:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/util/DeviceUtil$NonCompatibleDevice;->manufacturer:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/util/DeviceUtil$NonCompatibleDevice;->model:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/phicomm/speaker/player/exomedia/util/DeviceUtil$NonCompatibleDevice;->ignoreModel:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/util/DeviceUtil$NonCompatibleDevice;->model:Ljava/lang/String;

    iput-object p2, p0, Lcom/phicomm/speaker/player/exomedia/util/DeviceUtil$NonCompatibleDevice;->manufacturer:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getManufacturer()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/DeviceUtil$NonCompatibleDevice;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/util/DeviceUtil$NonCompatibleDevice;->model:Ljava/lang/String;

    return-object v0
.end method

.method public ignoreModel()Z
    .registers 2

    iget-boolean v0, p0, Lcom/phicomm/speaker/player/exomedia/util/DeviceUtil$NonCompatibleDevice;->ignoreModel:Z

    return v0
.end method
