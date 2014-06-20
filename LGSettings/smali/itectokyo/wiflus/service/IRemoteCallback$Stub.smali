.class public abstract Litectokyo/wiflus/service/IRemoteCallback$Stub;
.super Landroid/os/Binder;
.source "IRemoteCallback.java"

# interfaces
.implements Litectokyo/wiflus/service/IRemoteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Litectokyo/wiflus/service/IRemoteCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Litectokyo/wiflus/service/IRemoteCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "itectokyo.wiflus.service.IRemoteCallback"

    invoke-virtual {p0, p0, v0}, Litectokyo/wiflus/service/IRemoteCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Litectokyo/wiflus/service/IRemoteCallback;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "itectokyo.wiflus.service.IRemoteCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Litectokyo/wiflus/service/IRemoteCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Litectokyo/wiflus/service/IRemoteCallback;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Litectokyo/wiflus/service/IRemoteCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Litectokyo/wiflus/service/IRemoteCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 243
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "itectokyo.wiflus.service.IRemoteCallback"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "itectokyo.wiflus.service.IRemoteCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Litectokyo/wiflus/service/IRemoteCallback$Stub;->onSessionCreated()V

    goto :goto_0

    .line 53
    :sswitch_2
    const-string v5, "itectokyo.wiflus.service.IRemoteCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Litectokyo/wiflus/service/IRemoteCallback$Stub;->onSessionDestroyed()V

    goto :goto_0

    .line 59
    :sswitch_3
    const-string v5, "itectokyo.wiflus.service.IRemoteCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Litectokyo/wiflus/service/IRemoteCallback$Stub;->onRegistrationCompleted(I)V

    goto :goto_0

    .line 67
    .end local v0           #_arg0:I
    :sswitch_4
    const-string v5, "itectokyo.wiflus.service.IRemoteCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 70
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Litectokyo/wiflus/service/IRemoteCallback$Stub;->onEngineStateChanged(I)V

    goto :goto_0

    .line 75
    .end local v0           #_arg0:I
    :sswitch_5
    const-string v5, "itectokyo.wiflus.service.IRemoteCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 78
    sget-object v5, Litectokyo/wiflus/service/bean/HostInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Litectokyo/wiflus/service/bean/HostInfoBean;

    .line 83
    .local v0, _arg0:Litectokyo/wiflus/service/bean/HostInfoBean;
    :goto_1
    invoke-virtual {p0, v0}, Litectokyo/wiflus/service/IRemoteCallback$Stub;->onHostAdded(Litectokyo/wiflus/service/bean/HostInfoBean;)V

    goto :goto_0

    .line 81
    .end local v0           #_arg0:Litectokyo/wiflus/service/bean/HostInfoBean;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Litectokyo/wiflus/service/bean/HostInfoBean;
    goto :goto_1

    .line 88
    .end local v0           #_arg0:Litectokyo/wiflus/service/bean/HostInfoBean;
    :sswitch_6
    const-string v5, "itectokyo.wiflus.service.IRemoteCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 91
    sget-object v5, Litectokyo/wiflus/service/bean/HostInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Litectokyo/wiflus/service/bean/HostInfoBean;

    .line 96
    .restart local v0       #_arg0:Litectokyo/wiflus/service/bean/HostInfoBean;
    :goto_2
    invoke-virtual {p0, v0}, Litectokyo/wiflus/service/IRemoteCallback$Stub;->onHostRemoved(Litectokyo/wiflus/service/bean/HostInfoBean;)V

    goto :goto_0

    .line 94
    .end local v0           #_arg0:Litectokyo/wiflus/service/bean/HostInfoBean;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Litectokyo/wiflus/service/bean/HostInfoBean;
    goto :goto_2

    .line 101
    .end local v0           #_arg0:Litectokyo/wiflus/service/bean/HostInfoBean;
    :sswitch_7
    const-string v5, "itectokyo.wiflus.service.IRemoteCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 104
    sget-object v5, Litectokyo/wiflus/service/bean/HostInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Litectokyo/wiflus/service/bean/HostInfoBean;

    .line 110
    .restart local v0       #_arg0:Litectokyo/wiflus/service/bean/HostInfoBean;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 111
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Litectokyo/wiflus/service/IRemoteCallback$Stub;->onHostChanged(Litectokyo/wiflus/service/bean/HostInfoBean;I)V

    goto :goto_0

    .line 107
    .end local v0           #_arg0:Litectokyo/wiflus/service/bean/HostInfoBean;
    .end local v2           #_arg1:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Litectokyo/wiflus/service/bean/HostInfoBean;
    goto :goto_3

    .line 116
    .end local v0           #_arg0:Litectokyo/wiflus/service/bean/HostInfoBean;
    :sswitch_8
    const-string v5, "itectokyo.wiflus.service.IRemoteCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 119
    sget-object v5, Litectokyo/wiflus/service/bean/DeviceInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Litectokyo/wiflus/service/bean/DeviceInfoBean;

    .line 124
    .local v0, _arg0:Litectokyo/wiflus/service/bean/DeviceInfoBean;
    :goto_4
    invoke-virtual {p0, v0}, Litectokyo/wiflus/service/IRemoteCallback$Stub;->onDeviceAdded(Litectokyo/wiflus/service/bean/DeviceInfoBean;)V

    goto/16 :goto_0

    .line 122
    .end local v0           #_arg0:Litectokyo/wiflus/service/bean/DeviceInfoBean;
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Litectokyo/wiflus/service/bean/DeviceInfoBean;
    goto :goto_4

    .line 129
    .end local v0           #_arg0:Litectokyo/wiflus/service/bean/DeviceInfoBean;
    :sswitch_9
    const-string v5, "itectokyo.wiflus.service.IRemoteCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 132
    sget-object v5, Litectokyo/wiflus/service/bean/DeviceInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Litectokyo/wiflus/service/bean/DeviceInfoBean;

    .line 137
    .restart local v0       #_arg0:Litectokyo/wiflus/service/bean/DeviceInfoBean;
    :goto_5
    invoke-virtual {p0, v0}, Litectokyo/wiflus/service/IRemoteCallback$Stub;->onDeviceRemoved(Litectokyo/wiflus/service/bean/DeviceInfoBean;)V

    goto/16 :goto_0

    .line 135
    .end local v0           #_arg0:Litectokyo/wiflus/service/bean/DeviceInfoBean;
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Litectokyo/wiflus/service/bean/DeviceInfoBean;
    goto :goto_5

    .line 142
    .end local v0           #_arg0:Litectokyo/wiflus/service/bean/DeviceInfoBean;
    :sswitch_a
    const-string v5, "itectokyo.wiflus.service.IRemoteCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    .line 145
    sget-object v5, Litectokyo/wiflus/service/bean/DeviceInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Litectokyo/wiflus/service/bean/DeviceInfoBean;

    .line 150
    .restart local v0       #_arg0:Litectokyo/wiflus/service/bean/DeviceInfoBean;
    :goto_6
    invoke-virtual {p0, v0}, Litectokyo/wiflus/service/IRemoteCallback$Stub;->onDeviceChanged(Litectokyo/wiflus/service/bean/DeviceInfoBean;)V

    goto/16 :goto_0

    .line 148
    .end local v0           #_arg0:Litectokyo/wiflus/service/bean/DeviceInfoBean;
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #_arg0:Litectokyo/wiflus/service/bean/DeviceInfoBean;
    goto :goto_6

    .line 155
    .end local v0           #_arg0:Litectokyo/wiflus/service/bean/DeviceInfoBean;
    :sswitch_b
    const-string v5, "itectokyo.wiflus.service.IRemoteCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 158
    sget-object v5, Litectokyo/wiflus/service/bean/DeviceInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Litectokyo/wiflus/service/bean/DeviceInfoBean;

    .line 164
    .restart local v0       #_arg0:Litectokyo/wiflus/service/bean/DeviceInfoBean;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 165
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Litectokyo/wiflus/service/IRemoteCallback$Stub;->onDeviceError(Litectokyo/wiflus/service/bean/DeviceInfoBean;I)V

    goto/16 :goto_0

    .line 161
    .end local v0           #_arg0:Litectokyo/wiflus/service/bean/DeviceInfoBean;
    .end local v2           #_arg1:I
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #_arg0:Litectokyo/wiflus/service/bean/DeviceInfoBean;
    goto :goto_7

    .line 170
    .end local v0           #_arg0:Litectokyo/wiflus/service/bean/DeviceInfoBean;
    :sswitch_c
    const-string v5, "itectokyo.wiflus.service.IRemoteCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 173
    sget-object v5, Litectokyo/wiflus/service/bean/MessageBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Litectokyo/wiflus/service/bean/MessageBean;

    .line 178
    .local v0, _arg0:Litectokyo/wiflus/service/bean/MessageBean;
    :goto_8
    invoke-virtual {p0, v0}, Litectokyo/wiflus/service/IRemoteCallback$Stub;->onMessageReceived(Litectokyo/wiflus/service/bean/MessageBean;)V

    goto/16 :goto_0

    .line 176
    .end local v0           #_arg0:Litectokyo/wiflus/service/bean/MessageBean;
    :cond_7
    const/4 v0, 0x0

    .restart local v0       #_arg0:Litectokyo/wiflus/service/bean/MessageBean;
    goto :goto_8

    .line 183
    .end local v0           #_arg0:Litectokyo/wiflus/service/bean/MessageBean;
    :sswitch_d
    const-string v5, "itectokyo.wiflus.service.IRemoteCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    .line 186
    sget-object v5, Litectokyo/wiflus/service/bean/MessageBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Litectokyo/wiflus/service/bean/MessageBean;

    .line 192
    .restart local v0       #_arg0:Litectokyo/wiflus/service/bean/MessageBean;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 193
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Litectokyo/wiflus/service/IRemoteCallback$Stub;->onMessageError(Litectokyo/wiflus/service/bean/MessageBean;I)V

    goto/16 :goto_0

    .line 189
    .end local v0           #_arg0:Litectokyo/wiflus/service/bean/MessageBean;
    .end local v2           #_arg1:I
    :cond_8
    const/4 v0, 0x0

    .restart local v0       #_arg0:Litectokyo/wiflus/service/bean/MessageBean;
    goto :goto_9

    .line 198
    .end local v0           #_arg0:Litectokyo/wiflus/service/bean/MessageBean;
    :sswitch_e
    const-string v5, "itectokyo.wiflus.service.IRemoteCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    sget-object v5, Litectokyo/wiflus/service/bean/TransferInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 201
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Litectokyo/wiflus/service/bean/TransferInfoBean;>;"
    invoke-virtual {p0, v1}, Litectokyo/wiflus/service/IRemoteCallback$Stub;->onFileBegin(Ljava/util/List;)V

    goto/16 :goto_0

    .line 206
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Litectokyo/wiflus/service/bean/TransferInfoBean;>;"
    :sswitch_f
    const-string v5, "itectokyo.wiflus.service.IRemoteCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    .line 209
    sget-object v5, Litectokyo/wiflus/service/bean/TransferInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Litectokyo/wiflus/service/bean/TransferInfoBean;

    .line 214
    .local v0, _arg0:Litectokyo/wiflus/service/bean/TransferInfoBean;
    :goto_a
    invoke-virtual {p0, v0}, Litectokyo/wiflus/service/IRemoteCallback$Stub;->onNextFile(Litectokyo/wiflus/service/bean/TransferInfoBean;)V

    goto/16 :goto_0

    .line 212
    .end local v0           #_arg0:Litectokyo/wiflus/service/bean/TransferInfoBean;
    :cond_9
    const/4 v0, 0x0

    .restart local v0       #_arg0:Litectokyo/wiflus/service/bean/TransferInfoBean;
    goto :goto_a

    .line 219
    .end local v0           #_arg0:Litectokyo/wiflus/service/bean/TransferInfoBean;
    :sswitch_10
    const-string v5, "itectokyo.wiflus.service.IRemoteCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    sget-object v5, Litectokyo/wiflus/service/bean/TransferInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 222
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Litectokyo/wiflus/service/bean/TransferInfoBean;>;"
    invoke-virtual {p0, v1}, Litectokyo/wiflus/service/IRemoteCallback$Stub;->onFileFinish(Ljava/util/List;)V

    goto/16 :goto_0

    .line 227
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Litectokyo/wiflus/service/bean/TransferInfoBean;>;"
    :sswitch_11
    const-string v5, "itectokyo.wiflus.service.IRemoteCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    sget-object v5, Litectokyo/wiflus/service/bean/TransferInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 230
    .restart local v1       #_arg0:Ljava/util/List;,"Ljava/util/List<Litectokyo/wiflus/service/bean/TransferInfoBean;>;"
    invoke-virtual {p0, v1}, Litectokyo/wiflus/service/IRemoteCallback$Stub;->onFileError(Ljava/util/List;)V

    goto/16 :goto_0

    .line 235
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Litectokyo/wiflus/service/bean/TransferInfoBean;>;"
    :sswitch_12
    const-string v5, "itectokyo.wiflus.service.IRemoteCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 238
    .local v3, cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 239
    .local v0, _arg0:Ljava/util/Map;
    invoke-virtual {p0, v0}, Litectokyo/wiflus/service/IRemoteCallback$Stub;->onEvent(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
