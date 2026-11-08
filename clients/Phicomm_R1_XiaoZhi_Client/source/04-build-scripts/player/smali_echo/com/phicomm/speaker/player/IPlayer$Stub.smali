.class public abstract Lcom/phicomm/speaker/player/IPlayer$Stub;
.super Landroid/os/Binder;
.source "IPlayer.java"

# interfaces
.implements Lcom/phicomm/speaker/player/IPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/IPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/IPlayer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.phicomm.speaker.player.IPlayer"

.field static final TRANSACTION_ackNewPage:I = 0x10

.field static final TRANSACTION_getCurrentSongName:I = 0xb

.field static final TRANSACTION_getPlayAllStates:I = 0xe

.field static final TRANSACTION_getPlayMode:I = 0xc

.field static final TRANSACTION_getPlayPosition:I = 0xf

.field static final TRANSACTION_isPlaying:I = 0xd

.field static final TRANSACTION_pause:I = 0x6

.field static final TRANSACTION_play:I = 0x2

.field static final TRANSACTION_playIndex:I = 0x3

.field static final TRANSACTION_playNext:I = 0x9

.field static final TRANSACTION_playPre:I = 0x8

.field static final TRANSACTION_registerCallback:I = 0x13

.field static final TRANSACTION_setPlayMode:I = 0xa

.field static final TRANSACTION_start:I = 0x1

.field static final TRANSACTION_startFadeIn:I = 0x4

.field static final TRANSACTION_startServer:I = 0x11

.field static final TRANSACTION_stop:I = 0x7

.field static final TRANSACTION_stopFadeOut:I = 0x5

.field static final TRANSACTION_stopServer:I = 0x12

.field static final TRANSACTION_unregisterCallback:I = 0x14


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p0, p0, v0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/phicomm/speaker/player/IPlayer;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 25
    if-nez p0, :cond_4

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_3
    return-object v0

    .line 28
    :cond_4
    const-string v1, "com.phicomm.speaker.player.IPlayer"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/phicomm/speaker/player/IPlayer;

    if-eqz v1, :cond_13

    .line 30
    check-cast v0, Lcom/phicomm/speaker/player/IPlayer;

    goto :goto_3

    .line 32
    :cond_13
    new-instance v0, Lcom/phicomm/speaker/player/IPlayer$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/IPlayer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_1f0

    .line 255
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_9
    return v5

    .line 44
    :sswitch_a
    const-string v4, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 49
    :sswitch_10
    const-string v6, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->start()Z

    move-result v3

    .line 51
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v3, :cond_1f

    move v4, v5

    :cond_1f
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 57
    .end local v3    # "_result":Z
    :sswitch_23
    const-string v6, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4b

    .line 60
    sget-object v6, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;

    .line 66
    .local v0, "_arg0":Lcom/phicomm/speaker/player/model/PlayRequestInfo;
    :goto_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4d

    move v2, v5

    .line 67
    .local v2, "_arg1":Z
    :goto_3d
    invoke-virtual {p0, v0, v2}, Lcom/phicomm/speaker/player/IPlayer$Stub;->play(Lcom/phicomm/speaker/player/model/PlayRequestInfo;Z)Z

    move-result v3

    .line 68
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v3, :cond_47

    move v4, v5

    :cond_47
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 63
    .end local v0    # "_arg0":Lcom/phicomm/speaker/player/model/PlayRequestInfo;
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_4b
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/phicomm/speaker/player/model/PlayRequestInfo;
    goto :goto_36

    :cond_4d
    move v2, v4

    .line 66
    goto :goto_3d

    .line 74
    .end local v0    # "_arg0":Lcom/phicomm/speaker/player/model/PlayRequestInfo;
    :sswitch_4f
    const-string v6, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6d

    move v2, v5

    .line 79
    .restart local v2    # "_arg1":Z
    :goto_5f
    invoke-virtual {p0, v0, v2}, Lcom/phicomm/speaker/player/IPlayer$Stub;->playIndex(IZ)Z

    move-result v3

    .line 80
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v3, :cond_69

    move v4, v5

    :cond_69
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_6d
    move v2, v4

    .line 78
    goto :goto_5f

    .line 86
    .end local v0    # "_arg0":I
    :sswitch_6f
    const-string v6, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 89
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/player/IPlayer$Stub;->startFadeIn(J)Z

    move-result v3

    .line 90
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v3, :cond_82

    move v4, v5

    :cond_82
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 96
    .end local v0    # "_arg0":J
    .end local v3    # "_result":Z
    :sswitch_86
    const-string v6, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 99
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/player/IPlayer$Stub;->stopFadeOut(J)Z

    move-result v3

    .line 100
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v3, :cond_99

    move v4, v5

    :cond_99
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 106
    .end local v0    # "_arg0":J
    .end local v3    # "_result":Z
    :sswitch_9e
    const-string v6, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->pause()Z

    move-result v3

    .line 108
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v3, :cond_ad

    move v4, v5

    :cond_ad
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 114
    .end local v3    # "_result":Z
    :sswitch_b2
    const-string v6, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->stop()Z

    move-result v3

    .line 116
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v3, :cond_c1

    move v4, v5

    :cond_c1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 122
    .end local v3    # "_result":Z
    :sswitch_c6
    const-string v6, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e1

    move v0, v5

    .line 125
    .local v0, "_arg0":Z
    :goto_d2
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->playPre(Z)Z

    move-result v3

    .line 126
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v3, :cond_dc

    move v4, v5

    :cond_dc
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v3    # "_result":Z
    :cond_e1
    move v0, v4

    .line 124
    goto :goto_d2

    .line 132
    :sswitch_e3
    const-string v6, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_fe

    move v0, v5

    .line 135
    .restart local v0    # "_arg0":Z
    :goto_ef
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->playNext(Z)Z

    move-result v3

    .line 136
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v3, :cond_f9

    move v4, v5

    :cond_f9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0    # "_arg0":Z
    .end local v3    # "_result":Z
    :cond_fe
    move v0, v4

    .line 134
    goto :goto_ef

    .line 142
    :sswitch_100
    const-string v6, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 145
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->setPlayMode(I)Z

    move-result v3

    .line 146
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v3, :cond_113

    move v4, v5

    :cond_113
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 152
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Z
    :sswitch_118
    const-string v6, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->getCurrentSongName()Lcom/phicomm/speaker/player/model/PlaySong;

    move-result-object v3

    .line 154
    .local v3, "_result":Lcom/phicomm/speaker/player/model/PlaySong;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v3, :cond_12e

    .line 156
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    invoke-virtual {v3, p3, v5}, Lcom/phicomm/speaker/player/model/PlaySong;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 160
    :cond_12e
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 166
    .end local v3    # "_result":Lcom/phicomm/speaker/player/model/PlaySong;
    :sswitch_133
    const-string v4, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->getPlayMode()I

    move-result v3

    .line 168
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 174
    .end local v3    # "_result":I
    :sswitch_144
    const-string v6, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->isPlaying()Z

    move-result v3

    .line 176
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v3, :cond_153

    move v4, v5

    :cond_153
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 182
    .end local v3    # "_result":Z
    :sswitch_158
    const-string v6, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->getPlayAllStates()Lcom/phicomm/speaker/player/model/PlayAllStates;

    move-result-object v3

    .line 184
    .local v3, "_result":Lcom/phicomm/speaker/player/model/PlayAllStates;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    if-eqz v3, :cond_16e

    .line 186
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    invoke-virtual {v3, p3, v5}, Lcom/phicomm/speaker/player/model/PlayAllStates;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 190
    :cond_16e
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 196
    .end local v3    # "_result":Lcom/phicomm/speaker/player/model/PlayAllStates;
    :sswitch_173
    const-string v6, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->getPlayPosition()Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    move-result-object v3

    .line 198
    .local v3, "_result":Lcom/phicomm/speaker/player/model/PlayPositionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    if-eqz v3, :cond_189

    .line 200
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    invoke-virtual {v3, p3, v5}, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 204
    :cond_189
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 210
    .end local v3    # "_result":Lcom/phicomm/speaker/player/model/PlayPositionInfo;
    :sswitch_18e
    const-string v4, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a9

    .line 213
    sget-object v4, Lcom/phicomm/speaker/player/model/PlayRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/player/model/PlayRequestInfo;

    .line 218
    .local v0, "_arg0":Lcom/phicomm/speaker/player/model/PlayRequestInfo;
    :goto_1a1
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->ackNewPage(Lcom/phicomm/speaker/player/model/PlayRequestInfo;)V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 216
    .end local v0    # "_arg0":Lcom/phicomm/speaker/player/model/PlayRequestInfo;
    :cond_1a9
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/phicomm/speaker/player/model/PlayRequestInfo;
    goto :goto_1a1

    .line 224
    .end local v0    # "_arg0":Lcom/phicomm/speaker/player/model/PlayRequestInfo;
    :sswitch_1ab
    const-string v4, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->startServer()V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 231
    :sswitch_1b8
    const-string v4, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->stopServer()V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 238
    :sswitch_1c5
    const-string v4, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/phicomm/speaker/player/IPlayerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/phicomm/speaker/player/IPlayerCallback;

    move-result-object v0

    .line 241
    .local v0, "_arg0":Lcom/phicomm/speaker/player/IPlayerCallback;
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->registerCallback(Lcom/phicomm/speaker/player/IPlayerCallback;)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 247
    .end local v0    # "_arg0":Lcom/phicomm/speaker/player/IPlayerCallback;
    :sswitch_1da
    const-string v4, "com.phicomm.speaker.player.IPlayer"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/phicomm/speaker/player/IPlayerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/phicomm/speaker/player/IPlayerCallback;

    move-result-object v0

    .line 250
    .restart local v0    # "_arg0":Lcom/phicomm/speaker/player/IPlayerCallback;
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/player/IPlayer$Stub;->unregisterCallback(Lcom/phicomm/speaker/player/IPlayerCallback;)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 40
    nop

    :sswitch_data_1f0
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_4f
        0x4 -> :sswitch_6f
        0x5 -> :sswitch_86
        0x6 -> :sswitch_9e
        0x7 -> :sswitch_b2
        0x8 -> :sswitch_c6
        0x9 -> :sswitch_e3
        0xa -> :sswitch_100
        0xb -> :sswitch_118
        0xc -> :sswitch_133
        0xd -> :sswitch_144
        0xe -> :sswitch_158
        0xf -> :sswitch_173
        0x10 -> :sswitch_18e
        0x11 -> :sswitch_1ab
        0x12 -> :sswitch_1b8
        0x13 -> :sswitch_1c5
        0x14 -> :sswitch_1da
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
