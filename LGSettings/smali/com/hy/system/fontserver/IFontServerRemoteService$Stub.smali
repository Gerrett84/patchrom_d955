.class public abstract Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;
.super Landroid/os/Binder;
.source "IFontServerRemoteService.java"

# interfaces
.implements Lcom/hy/system/fontserver/IFontServerRemoteService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hy/system/fontserver/IFontServerRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hy/system/fontserver/IFontServerRemoteService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p0, p0, v0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hy/system/fontserver/IFontServerRemoteService;
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
    const-string v1, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/hy/system/fontserver/IFontServerRemoteService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/hy/system/fontserver/IFontServerRemoteService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
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

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v3, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->updateFontServer()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 54
    :sswitch_2
    const-string v3, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 57
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->selectDefaultTypeface(I)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    .end local v0           #_arg0:I
    :sswitch_3
    const-string v3, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->getDefaultTypefaceIndex()I

    move-result v1

    .line 65
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 71
    .end local v1           #_result:I
    :sswitch_4
    const-string v3, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->getNumAllFonts()I

    move-result v1

    .line 73
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 79
    .end local v1           #_result:I
    :sswitch_5
    const-string v3, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->getNumEmbeddedFonts()I

    move-result v1

    .line 81
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 87
    .end local v1           #_result:I
    :sswitch_6
    const-string v3, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->getSummary()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_7
    const-string v3, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->getAllFontNames()[Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    .line 103
    .end local v1           #_result:[Ljava/lang/String;
    :sswitch_8
    const-string v3, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->getAllFontWebFaceNames()[Ljava/lang/String;

    move-result-object v1

    .line 105
    .restart local v1       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    .end local v1           #_result:[Ljava/lang/String;
    :sswitch_9
    const-string v3, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->getAllFontFullPath()[Ljava/lang/String;

    move-result-object v1

    .line 113
    .restart local v1       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 119
    .end local v1           #_result:[Ljava/lang/String;
    :sswitch_a
    const-string v3, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 122
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->getFontFullPath(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    .end local v0           #_arg0:I
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_b
    const-string v3, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->getDownloadFontSrcPath()Ljava/lang/String;

    move-result-object v1

    .line 131
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_c
    const-string v3, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->getDownloadFontDstPath()Ljava/lang/String;

    move-result-object v1

    .line 139
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 145
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_d
    const-string v3, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->getSystemDefaultTypefaceIndex()I

    move-result v1

    .line 147
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 153
    .end local v1           #_result:I
    :sswitch_e
    const-string v3, "com.hy.system.fontserver.IFontServerRemoteService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/hy/system/fontserver/IFontServerRemoteService$Stub;->setDefault()I

    move-result v1

    .line 155
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
