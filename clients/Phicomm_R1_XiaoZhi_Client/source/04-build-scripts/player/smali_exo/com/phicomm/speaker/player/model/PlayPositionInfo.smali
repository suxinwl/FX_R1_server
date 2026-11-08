.class public Lcom/phicomm/speaker/player/model/PlayPositionInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/phicomm/speaker/player/model/PlayPositionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private api_data:Ljava/lang/String;

.field private music_id:Ljava/lang/String;

.field private play_time:I

.field private status:I

.field private timestamp:Ljava/lang/String;

.field private total_time:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    new-instance v0, Lcom/phicomm/speaker/player/model/PlayPositionInfo$1;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/model/PlayPositionInfo$1;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->music_id:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->status:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->total_time:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->play_time:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->timestamp:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->api_data:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getApiData()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->api_data:Ljava/lang/String;

    return-object v0
.end method

.method public getMusic_id()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->music_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPlay_time()I
    .registers 2

    .line 44
    iget v0, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->play_time:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    .line 48
    iget v0, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->status:I

    return v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal_time()I
    .registers 2

    .line 60
    iget v0, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->total_time:I

    return v0
.end method

.method public setApiData(Ljava/lang/String;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->api_data:Ljava/lang/String;

    return-void
.end method

.method public setMusic_id(Ljava/lang/String;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->music_id:Ljava/lang/String;

    return-void
.end method

.method public setPlay_time(I)V
    .registers 2

    .line 68
    iput p1, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->play_time:I

    return-void
.end method

.method public setStatus(I)V
    .registers 2

    .line 72
    iput p1, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->status:I

    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->timestamp:Ljava/lang/String;

    return-void
.end method

.method public setTotal_time(I)V
    .registers 2

    .line 80
    iput p1, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->total_time:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 88
    iget-object p2, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->music_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget p2, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget p2, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->total_time:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget p2, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->play_time:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object p2, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->api_data:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
