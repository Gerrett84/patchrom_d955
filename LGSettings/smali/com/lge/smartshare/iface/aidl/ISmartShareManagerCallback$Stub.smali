.class public abstract Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback$Stub;
.super Landroid/os/Binder;
.source "ISmartShareManagerCallback.java"

# interfaces
.implements Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.lge.smartshare.iface.aidl.ISmartShareManagerCallback"

    invoke-virtual {p0, p0, v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.lge.smartshare.iface.aidl.ISmartShareManagerCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v2, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 262
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 43
    :sswitch_0
    const-string v3, "com.lge.smartshare.iface.aidl.ISmartShareManagerCallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v3, "com.lge.smartshare.iface.aidl.ISmartShareManagerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 51
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback$Stub;->onCheckSupprotContent(Z)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 50
    .end local v0           #_arg0:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 57
    :sswitch_2
    const-string v3, "com.lge.smartshare.iface.aidl.ISmartShareManagerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 67
    .local v1, _arg1:Landroid/graphics/Bitmap;
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback$Stub;->onReceiveRendererIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 65
    .end local v1           #_arg1:Landroid/graphics/Bitmap;
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/graphics/Bitmap;
    goto :goto_2

    .line 73
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Landroid/graphics/Bitmap;
    :sswitch_3
    const-string v3, "com.lge.smartshare.iface.aidl.ISmartShareManagerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback$Stub;->onPlay(I)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 82
    .end local v0           #_arg0:I
    :sswitch_4
    const-string v3, "com.lge.smartshare.iface.aidl.ISmartShareManagerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback$Stub;->onStop(I)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 91
    .end local v0           #_arg0:I
    :sswitch_5
    const-string v3, "com.lge.smartshare.iface.aidl.ISmartShareManagerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 94
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback$Stub;->onPause(I)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 100
    .end local v0           #_arg0:I
    :sswitch_6
    const-string v3, "com.lge.smartshare.iface.aidl.ISmartShareManagerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 103
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback$Stub;->onSeek(I)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 109
    .end local v0           #_arg0:I
    :sswitch_7
    const-string v3, "com.lge.smartshare.iface.aidl.ISmartShareManagerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    sget-object v3, Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;

    .line 119
    .local v1, _arg1:Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback$Stub;->onGetVolume(ILcom/lge/smartshare/iface/aidl/DataVolumeInfo;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 117
    .end local v1           #_arg1:Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #_arg1:Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;
    goto :goto_3

    .line 125
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Lcom/lge/smartshare/iface/aidl/DataVolumeInfo;
    :sswitch_8
    const-string v3, "com.lge.smartshare.iface.aidl.ISmartShareManagerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 128
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback$Stub;->onSetVolume(I)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 134
    .end local v0           #_arg0:I
    :sswitch_9
    const-string v3, "com.lge.smartshare.iface.aidl.ISmartShareManagerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 138
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 139
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback$Stub;->onReady(II)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 145
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_a
    const-string v3, "com.lge.smartshare.iface.aidl.ISmartShareManagerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 148
    sget-object v3, Lcom/lge/smartshare/iface/aidl/DataRenderer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/smartshare/iface/aidl/DataRenderer;

    .line 153
    .local v0, _arg0:Lcom/lge/smartshare/iface/aidl/DataRenderer;
    :goto_4
    invoke-virtual {p0, v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback$Stub;->onRendererAdded(Lcom/lge/smartshare/iface/aidl/DataRenderer;)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 151
    .end local v0           #_arg0:Lcom/lge/smartshare/iface/aidl/DataRenderer;
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/lge/smartshare/iface/aidl/DataRenderer;
    goto :goto_4

    .line 159
    .end local v0           #_arg0:Lcom/lge/smartshare/iface/aidl/DataRenderer;
    :sswitch_b
    const-string v3, "com.lge.smartshare.iface.aidl.ISmartShareManagerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback$Stub;->onRendererRemoved(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 168
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_c
    const-string v3, "com.lge.smartshare.iface.aidl.ISmartShareManagerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback$Stub;->onLostSelectedRenderer()V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 175
    :sswitch_d
    const-string v3, "com.lge.smartshare.iface.aidl.ISmartShareManagerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 178
    sget-object v3, Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;

    .line 183
    .local v0, _arg0:Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;
    :goto_5
    invoke-virtual {p0, v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback$Stub;->onPlayerStatusUpdate(Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 181
    .end local v0           #_arg0:Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;
    goto :goto_5

    .line 189
    .end local v0           #_arg0:Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;
    :sswitch_e
    const-string v3, "com.lge.smartshare.iface.aidl.ISmartShareManagerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback$Stub;->onCompletion()V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 196
    :sswitch_f
    const-string v3, "com.lge.smartshare.iface.aidl.ISmartShareManagerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback$Stub;->onBadConnection()V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 203
    :sswitch_10
    const-string v3, "com.lge.smartshare.iface.aidl.ISmartShareManagerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback$Stub;->onGetBuaKeyStart()V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 210
    :sswitch_11
    const-string v3, "com.lge.smartshare.iface.aidl.ISmartShareManagerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback$Stub;->onGetBuaKeyEnd()V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 217
    :sswitch_12
    const-string v3, "com.lge.smartshare.iface.aidl.ISmartShareManagerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 220
    sget-object v3, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    .line 225
    .local v0, _arg0:Lcom/lge/smartshare/iface/aidl/DataWFDDevice;
    :goto_6
    invoke-virtual {p0, v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback$Stub;->onWFDAdded(Lcom/lge/smartshare/iface/aidl/DataWFDDevice;)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 223
    .end local v0           #_arg0:Lcom/lge/smartshare/iface/aidl/DataWFDDevice;
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/lge/smartshare/iface/aidl/DataWFDDevice;
    goto :goto_6

    .line 231
    .end local v0           #_arg0:Lcom/lge/smartshare/iface/aidl/DataWFDDevice;
    :sswitch_13
    const-string v3, "com.lge.smartshare.iface.aidl.ISmartShareManagerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback$Stub;->onWFDRemoved(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 240
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_14
    const-string v3, "com.lge.smartshare.iface.aidl.ISmartShareManagerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 243
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback$Stub;->onWFDInitCompleted(I)V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 249
    .end local v0           #_arg0:I
    :sswitch_15
    const-string v3, "com.lge.smartshare.iface.aidl.ISmartShareManagerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 252
    sget-object v3, Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;

    .line 257
    .local v0, _arg0:Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;
    :goto_7
    invoke-virtual {p0, v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback$Stub;->onRendererUsageChanged(Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 255
    .end local v0           #_arg0:Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;
    goto :goto_7

    .line 39
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
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
