.class public abstract Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;
.super Landroid/os/Binder;
.source "ISmartShareManager.java"

# interfaces
.implements Lcom/lge/smartshare/iface/aidl/ISmartShareManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/smartshare/iface/aidl/ISmartShareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p0, p0, v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/smartshare/iface/aidl/ISmartShareManager;
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
    const-string v1, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lge/smartshare/iface/aidl/ISmartShareManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/lge/smartshare/iface/aidl/ISmartShareManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 456
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 43
    :sswitch_0
    const-string v7, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v7, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->getManagerVersionCode()I

    move-result v5

    .line 50
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 56
    .end local v5           #_result:I
    :sswitch_2
    const-string v7, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback;

    move-result-object v2

    .line 61
    .local v2, _arg1:Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback;
    invoke-virtual {p0, v0, v2}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->register(Ljava/lang/String;Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 67
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback;
    :sswitch_3
    const-string v7, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->unregister(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 76
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_4
    const-string v7, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->getPlayerId(Ljava/lang/String;)I

    move-result v5

    .line 80
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 86
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v5           #_result:I
    :sswitch_5
    const-string v7, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->getRenderers()[Lcom/lge/smartshare/iface/aidl/DataRenderer;

    move-result-object v5

    .line 88
    .local v5, _result:[Lcom/lge/smartshare/iface/aidl/DataRenderer;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v5, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 94
    .end local v5           #_result:[Lcom/lge/smartshare/iface/aidl/DataRenderer;
    :sswitch_6
    const-string v8, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->getRendererIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 98
    .local v5, _result:Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v5, :cond_0

    .line 100
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    invoke-virtual {v5, p3, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 110
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v5           #_result:Landroid/graphics/Bitmap;
    :sswitch_7
    const-string v7, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->getRendererUsageInfo()[Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;

    move-result-object v5

    .line 112
    .local v5, _result:[Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v5, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 118
    .end local v5           #_result:[Lcom/lge/smartshare/iface/aidl/DataRendererUsageInfo;
    :sswitch_8
    const-string v8, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v0, v6

    .line 121
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->refreshRenderer(Z)I

    move-result v5

    .line 122
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v5           #_result:I
    :cond_1
    move v0, v7

    .line 120
    goto :goto_1

    .line 128
    :sswitch_9
    const-string v7, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->checkSupportContent(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 134
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 140
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v5           #_result:I
    :sswitch_a
    const-string v7, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 144
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 146
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    .line 147
    sget-object v7, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/smartshare/iface/aidl/DataContentInfo;

    .line 153
    .local v3, _arg2:Lcom/lge/smartshare/iface/aidl/DataContentInfo;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 154
    .local v4, _arg3:I
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->startRenderer(ILjava/lang/String;Lcom/lge/smartshare/iface/aidl/DataContentInfo;I)I

    move-result v5

    .line 155
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 150
    .end local v3           #_arg2:Lcom/lge/smartshare/iface/aidl/DataContentInfo;
    .end local v4           #_arg3:I
    .end local v5           #_result:I
    :cond_2
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/lge/smartshare/iface/aidl/DataContentInfo;
    goto :goto_2

    .line 161
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Lcom/lge/smartshare/iface/aidl/DataContentInfo;
    :sswitch_b
    const-string v7, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 164
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->stopRenderer(I)I

    move-result v5

    .line 165
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 171
    .end local v0           #_arg0:I
    .end local v5           #_result:I
    :sswitch_c
    const-string v7, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 175
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    .line 176
    sget-object v7, Lcom/lge/smartshare/iface/aidl/DataContentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/smartshare/iface/aidl/DataContentInfo;

    .line 182
    .local v2, _arg1:Lcom/lge/smartshare/iface/aidl/DataContentInfo;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 183
    .local v3, _arg2:I
    invoke-virtual {p0, v0, v2, v3}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->play(ILcom/lge/smartshare/iface/aidl/DataContentInfo;I)I

    move-result v5

    .line 184
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 179
    .end local v2           #_arg1:Lcom/lge/smartshare/iface/aidl/DataContentInfo;
    .end local v3           #_arg2:I
    .end local v5           #_result:I
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/lge/smartshare/iface/aidl/DataContentInfo;
    goto :goto_3

    .line 190
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Lcom/lge/smartshare/iface/aidl/DataContentInfo;
    :sswitch_d
    const-string v7, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 193
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->stop(I)I

    move-result v5

    .line 194
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 200
    .end local v0           #_arg0:I
    .end local v5           #_result:I
    :sswitch_e
    const-string v7, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 203
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->pause(I)I

    move-result v5

    .line 204
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 210
    .end local v0           #_arg0:I
    .end local v5           #_result:I
    :sswitch_f
    const-string v7, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 213
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->resume(I)I

    move-result v5

    .line 214
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 220
    .end local v0           #_arg0:I
    .end local v5           #_result:I
    :sswitch_10
    const-string v7, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 224
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 225
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->seek(II)I

    move-result v5

    .line 226
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 232
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    .end local v5           #_result:I
    :sswitch_11
    const-string v7, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 236
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 237
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->setVolume(II)I

    move-result v5

    .line 238
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 244
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    .end local v5           #_result:I
    :sswitch_12
    const-string v7, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 247
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->getVolume(I)I

    move-result v5

    .line 248
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 254
    .end local v0           #_arg0:I
    .end local v5           #_result:I
    :sswitch_13
    const-string v8, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 257
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->getPlayerStatus(I)Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;

    move-result-object v5

    .line 258
    .local v5, _result:Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    if-eqz v5, :cond_4

    .line 260
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    invoke-virtual {v5, p3, v6}, Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 264
    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 270
    .end local v0           #_arg0:I
    .end local v5           #_result:Lcom/lge/smartshare/iface/aidl/DataPlayerStatus;
    :sswitch_14
    const-string v8, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 273
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->getSelectedRenderer(I)Lcom/lge/smartshare/iface/aidl/DataRenderer;

    move-result-object v5

    .line 274
    .local v5, _result:Lcom/lge/smartshare/iface/aidl/DataRenderer;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    if-eqz v5, :cond_5

    .line 276
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    invoke-virtual {v5, p3, v6}, Lcom/lge/smartshare/iface/aidl/DataRenderer;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 280
    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 286
    .end local v0           #_arg0:I
    .end local v5           #_result:Lcom/lge/smartshare/iface/aidl/DataRenderer;
    :sswitch_15
    const-string v7, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 290
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->selectRenderer(ILjava/lang/String;)I

    move-result v5

    .line 292
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 298
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v5           #_result:I
    :sswitch_16
    const-string v7, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->getPushMode()I

    move-result v5

    .line 300
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 306
    .end local v5           #_result:I
    :sswitch_17
    const-string v8, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6

    move v0, v6

    .line 309
    .local v0, _arg0:Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->refreshServer(Z)I

    move-result v5

    .line 310
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v5           #_result:I
    :cond_6
    move v0, v7

    .line 308
    goto :goto_4

    .line 316
    :sswitch_18
    const-string v8, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->isConnectedWifiInterface()Z

    move-result v5

    .line 318
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    if-eqz v5, :cond_7

    move v7, v6

    :cond_7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 324
    .end local v5           #_result:Z
    :sswitch_19
    const-string v8, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->isConnectedWifiDirectInterface()Z

    move-result v5

    .line 326
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    if-eqz v5, :cond_8

    move v7, v6

    :cond_8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 332
    .end local v5           #_result:Z
    :sswitch_1a
    const-string v7, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->getWFDDevices()[Lcom/lge/smartshare/iface/aidl/DataWFDDevice;

    move-result-object v5

    .line 334
    .local v5, _result:[Lcom/lge/smartshare/iface/aidl/DataWFDDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {p3, v5, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 340
    .end local v5           #_result:[Lcom/lge/smartshare/iface/aidl/DataWFDDevice;
    :sswitch_1b
    const-string v8, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_9

    move v0, v6

    .line 343
    .restart local v0       #_arg0:Z
    :goto_5
    invoke-virtual {p0, v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->refreshWFDDevice(Z)I

    move-result v5

    .line 344
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v5           #_result:I
    :cond_9
    move v0, v7

    .line 342
    goto :goto_5

    .line 350
    :sswitch_1c
    const-string v7, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 354
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 356
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 358
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 359
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->initWFD(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 360
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 366
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_result:I
    :sswitch_1d
    const-string v8, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->isAllServersCollected()Z

    move-result v5

    .line 368
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    if-eqz v5, :cond_a

    move v7, v6

    :cond_a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 374
    .end local v5           #_result:Z
    :sswitch_1e
    const-string v8, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 377
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->isServerCollected(J)Z

    move-result v5

    .line 378
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    if-eqz v5, :cond_b

    move v7, v6

    :cond_b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 384
    .end local v0           #_arg0:J
    .end local v5           #_result:Z
    :sswitch_1f
    const-string v7, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->getDeviceNetworkType(Ljava/lang/String;)I

    move-result v5

    .line 388
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 394
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v5           #_result:I
    :sswitch_20
    const-string v7, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 397
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->getDeviceIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 398
    .local v5, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 404
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v5           #_result:Ljava/lang/String;
    :sswitch_21
    const-string v7, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 408
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback;

    move-result-object v2

    .line 409
    .local v2, _arg1:Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback;
    invoke-virtual {p0, v0, v2}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->unregisterWithCallback(Ljava/lang/String;Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback;)V

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 415
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Lcom/lge/smartshare/iface/aidl/ISmartShareManagerCallback;
    :sswitch_22
    const-string v8, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->isAllHomecloudServersCollected()Z

    move-result v5

    .line 417
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    if-eqz v5, :cond_c

    move v7, v6

    :cond_c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 423
    .end local v5           #_result:Z
    :sswitch_23
    const-string v8, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 426
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->isHomecloudServerCollected(J)Z

    move-result v5

    .line 427
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    if-eqz v5, :cond_d

    move v7, v6

    :cond_d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 433
    .end local v0           #_arg0:J
    .end local v5           #_result:Z
    :sswitch_24
    const-string v8, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->isHomecloudLogin()Z

    move-result v5

    .line 435
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    if-eqz v5, :cond_e

    move v7, v6

    :cond_e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 441
    .end local v5           #_result:Z
    :sswitch_25
    const-string v7, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->getHomecloudRAServerCnt()I

    move-result v5

    .line 443
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 449
    .end local v5           #_result:I
    :sswitch_26
    const-string v8, "com.lge.smartshare.iface.aidl.ISmartShareManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lcom/lge/smartshare/iface/aidl/ISmartShareManager$Stub;->isConnectedMobileInterface()Z

    move-result v5

    .line 451
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    if-eqz v5, :cond_f

    move v7, v6

    :cond_f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 39
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
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
