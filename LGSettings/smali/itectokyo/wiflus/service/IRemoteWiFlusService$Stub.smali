.class public abstract Litectokyo/wiflus/service/IRemoteWiFlusService$Stub;
.super Landroid/os/Binder;
.source "IRemoteWiFlusService.java"

# interfaces
.implements Litectokyo/wiflus/service/IRemoteWiFlusService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Litectokyo/wiflus/service/IRemoteWiFlusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Litectokyo/wiflus/service/IRemoteWiFlusService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "itectokyo.wiflus.service.IRemoteWiFlusService"

    invoke-virtual {p0, p0, v0}, Litectokyo/wiflus/service/IRemoteWiFlusService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Litectokyo/wiflus/service/IRemoteWiFlusService;
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
    const-string v1, "itectokyo.wiflus.service.IRemoteWiFlusService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Litectokyo/wiflus/service/IRemoteWiFlusService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Litectokyo/wiflus/service/IRemoteWiFlusService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Litectokyo/wiflus/service/IRemoteWiFlusService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Litectokyo/wiflus/service/IRemoteWiFlusService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 252
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 42
    :sswitch_0
    const-string v5, "itectokyo.wiflus.service.IRemoteWiFlusService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "itectokyo.wiflus.service.IRemoteWiFlusService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Litectokyo/wiflus/service/IRemoteWiFlusService$Stub;->version()I

    move-result v4

    .line 49
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v4           #_result:I
    :sswitch_2
    const-string v7, "itectokyo.wiflus.service.IRemoteWiFlusService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 59
    .local v0, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Litectokyo/wiflus/service/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Litectokyo/wiflus/service/IRemoteCallback;

    move-result-object v2

    .line 60
    .local v2, _arg1:Litectokyo/wiflus/service/IRemoteCallback;
    invoke-virtual {p0, v0, v1, v2}, Litectokyo/wiflus/service/IRemoteWiFlusService$Stub;->registerCallback(JLitectokyo/wiflus/service/IRemoteCallback;)Z

    move-result v4

    .line 61
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v4, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 67
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Litectokyo/wiflus/service/IRemoteCallback;
    .end local v4           #_result:Z
    :sswitch_3
    const-string v7, "itectokyo.wiflus.service.IRemoteWiFlusService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 70
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Litectokyo/wiflus/service/IRemoteWiFlusService$Stub;->unregisterCallback(J)Z

    move-result v4

    .line 71
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v4, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 77
    .end local v0           #_arg0:J
    .end local v4           #_result:Z
    :sswitch_4
    const-string v7, "itectokyo.wiflus.service.IRemoteWiFlusService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 81
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    .line 82
    sget-object v7, Litectokyo/wiflus/service/bean/ClientInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Litectokyo/wiflus/service/bean/ClientInfoBean;

    .line 88
    .local v2, _arg1:Litectokyo/wiflus/service/bean/ClientInfoBean;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Litectokyo/wiflus/service/IRemoteWiFlusService$Stub;->registerClient(JLitectokyo/wiflus/service/bean/ClientInfoBean;Ljava/lang/String;)Z

    move-result v4

    .line 90
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v4, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 85
    .end local v2           #_arg1:Litectokyo/wiflus/service/bean/ClientInfoBean;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_result:Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #_arg1:Litectokyo/wiflus/service/bean/ClientInfoBean;
    goto :goto_1

    .line 96
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Litectokyo/wiflus/service/bean/ClientInfoBean;
    :sswitch_5
    const-string v5, "itectokyo.wiflus.service.IRemoteWiFlusService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 100
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 101
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v1, v2}, Litectokyo/wiflus/service/IRemoteWiFlusService$Stub;->isRegisteredClient(JI)I

    move-result v4

    .line 102
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 108
    .end local v0           #_arg0:J
    .end local v2           #_arg1:I
    .end local v4           #_result:I
    :sswitch_6
    const-string v7, "itectokyo.wiflus.service.IRemoteWiFlusService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 112
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 114
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 115
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Litectokyo/wiflus/service/IRemoteWiFlusService$Stub;->attachSessionToClient(JILjava/lang/String;)Z

    move-result v4

    .line 116
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v4, :cond_4

    move v5, v6

    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 122
    .end local v0           #_arg0:J
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_7
    const-string v7, "itectokyo.wiflus.service.IRemoteWiFlusService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 126
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 127
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v1, v2}, Litectokyo/wiflus/service/IRemoteWiFlusService$Stub;->detachSessionToClient(JI)Z

    move-result v4

    .line 128
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v4, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 134
    .end local v0           #_arg0:J
    .end local v2           #_arg1:I
    .end local v4           #_result:Z
    :sswitch_8
    const-string v7, "itectokyo.wiflus.service.IRemoteWiFlusService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 137
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Litectokyo/wiflus/service/IRemoteWiFlusService$Stub;->shutdownNow(J)Z

    move-result v4

    .line 138
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v4, :cond_6

    move v5, v6

    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 144
    .end local v0           #_arg0:J
    .end local v4           #_result:Z
    :sswitch_9
    const-string v5, "itectokyo.wiflus.service.IRemoteWiFlusService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 148
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 149
    sget-object v5, Litectokyo/wiflus/service/bean/CommandBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Litectokyo/wiflus/service/bean/CommandBean;

    .line 154
    .local v2, _arg1:Litectokyo/wiflus/service/bean/CommandBean;
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Litectokyo/wiflus/service/IRemoteWiFlusService$Stub;->setCommand(JLitectokyo/wiflus/service/bean/CommandBean;)I

    move-result v4

    .line 155
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 152
    .end local v2           #_arg1:Litectokyo/wiflus/service/bean/CommandBean;
    .end local v4           #_result:I
    :cond_7
    const/4 v2, 0x0

    .restart local v2       #_arg1:Litectokyo/wiflus/service/bean/CommandBean;
    goto :goto_2

    .line 161
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Litectokyo/wiflus/service/bean/CommandBean;
    :sswitch_a
    const-string v7, "itectokyo.wiflus.service.IRemoteWiFlusService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 165
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 167
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 168
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Litectokyo/wiflus/service/IRemoteWiFlusService$Stub;->getCommand(JILjava/lang/String;)Litectokyo/wiflus/service/bean/CommandBean;

    move-result-object v4

    .line 169
    .local v4, _result:Litectokyo/wiflus/service/bean/CommandBean;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v4, :cond_8

    .line 171
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    invoke-virtual {v4, p3, v6}, Litectokyo/wiflus/service/bean/CommandBean;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 175
    :cond_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 181
    .end local v0           #_arg0:J
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_result:Litectokyo/wiflus/service/bean/CommandBean;
    :sswitch_b
    const-string v5, "itectokyo.wiflus.service.IRemoteWiFlusService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 185
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 186
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v1, v2}, Litectokyo/wiflus/service/IRemoteWiFlusService$Stub;->getHostList(JI)Ljava/util/List;

    move-result-object v4

    .line 187
    .local v4, _result:Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 193
    .end local v0           #_arg0:J
    .end local v2           #_arg1:I
    .end local v4           #_result:Ljava/util/List;
    :sswitch_c
    const-string v5, "itectokyo.wiflus.service.IRemoteWiFlusService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 197
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Litectokyo/wiflus/service/IRemoteWiFlusService$Stub;->getTransferList(JLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 199
    .restart local v4       #_result:Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 205
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Ljava/util/List;
    :sswitch_d
    const-string v5, "itectokyo.wiflus.service.IRemoteWiFlusService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 209
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 210
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Litectokyo/wiflus/service/IRemoteWiFlusService$Stub;->getHistoryList(JLjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 211
    .restart local v4       #_result:Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 217
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v4           #_result:Ljava/util/List;
    :sswitch_e
    const-string v5, "itectokyo.wiflus.service.IRemoteWiFlusService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 221
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 223
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    .line 224
    sget-object v5, Litectokyo/wiflus/service/bean/TransferBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Litectokyo/wiflus/service/bean/TransferBean;

    .line 229
    .local v3, _arg2:Litectokyo/wiflus/service/bean/TransferBean;
    :goto_3
    invoke-virtual {p0, v0, v1, v2, v3}, Litectokyo/wiflus/service/IRemoteWiFlusService$Stub;->transfer(JILitectokyo/wiflus/service/bean/TransferBean;)I

    move-result v4

    .line 230
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 227
    .end local v3           #_arg2:Litectokyo/wiflus/service/bean/TransferBean;
    .end local v4           #_result:I
    :cond_9
    const/4 v3, 0x0

    .restart local v3       #_arg2:Litectokyo/wiflus/service/bean/TransferBean;
    goto :goto_3

    .line 236
    .end local v0           #_arg0:J
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Litectokyo/wiflus/service/bean/TransferBean;
    :sswitch_f
    const-string v5, "itectokyo.wiflus.service.IRemoteWiFlusService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 240
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 241
    sget-object v5, Litectokyo/wiflus/service/bean/MessageBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Litectokyo/wiflus/service/bean/MessageBean;

    .line 246
    .local v2, _arg1:Litectokyo/wiflus/service/bean/MessageBean;
    :goto_4
    invoke-virtual {p0, v0, v1, v2}, Litectokyo/wiflus/service/IRemoteWiFlusService$Stub;->message(JLitectokyo/wiflus/service/bean/MessageBean;)I

    move-result v4

    .line 247
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 244
    .end local v2           #_arg1:Litectokyo/wiflus/service/bean/MessageBean;
    .end local v4           #_result:I
    :cond_a
    const/4 v2, 0x0

    .restart local v2       #_arg1:Litectokyo/wiflus/service/bean/MessageBean;
    goto :goto_4

    .line 38
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
