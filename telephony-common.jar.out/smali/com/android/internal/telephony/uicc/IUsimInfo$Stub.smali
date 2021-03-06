.class public abstract Lcom/android/internal/telephony/uicc/IUsimInfo$Stub;
.super Landroid/os/Binder;
.source "IUsimInfo.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IUsimInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IUsimInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/IUsimInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.uicc.IUsimInfo"

.field static final TRANSACTION_PBMDeleteRecord:I = 0x5

.field static final TRANSACTION_PBMGetInfo:I = 0x6

.field static final TRANSACTION_PBMReadRecord:I = 0x3

.field static final TRANSACTION_PBMWriteRecord:I = 0x4

.field static final TRANSACTION_ReadFromSIM:I = 0x8

.field static final TRANSACTION_WriteToSIM:I = 0x9

.field static final TRANSACTION_getATR:I = 0x16

.field static final TRANSACTION_getEfRecordsSize:I = 0xc

.field static final TRANSACTION_getIMSI_M:I = 0x14

.field static final TRANSACTION_getSCAddressFromIcc:I = 0xa

.field static final TRANSACTION_getSCAddressTemp:I = 0xd

.field static final TRANSACTION_getUsimIsEmpty:I = 0x7

.field static final TRANSACTION_getUsimIsSponIMSI:I = 0xf

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_sendAPDUToIcc:I = 0x15

.field static final TRANSACTION_sendChangeToHomeIMSI:I = 0x11

.field static final TRANSACTION_sendChangeToSponIMSI:I = 0x10

.field static final TRANSACTION_sendUpdatePLMN:I = 0x12

.field static final TRANSACTION_setSCAddressTemp:I = 0xe

.field static final TRANSACTION_setSCAddressToIcc:I = 0xb

.field static final TRANSACTION_startOtaService:I = 0x13

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.telephony.uicc.IUsimInfo"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/uicc/IUsimInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/uicc/IUsimInfo;
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
    const-string v1, "com.android.internal.telephony.uicc.IUsimInfo"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/uicc/IUsimInfo;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/internal/telephony/uicc/IUsimInfo;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/uicc/IUsimInfo$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/IUsimInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 270
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.android.internal.telephony.uicc.IUsimInfo"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.android.internal.telephony.uicc.IUsimInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 51
    .local v8, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IUsimInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/uicc/IUsimInfoCallback;

    move-result-object v2

    .line 52
    .local v2, _arg1:Lcom/android/internal/telephony/uicc/IUsimInfoCallback;
    invoke-virtual {p0, v8, v9, v2}, Lcom/android/internal/telephony/uicc/IUsimInfo$Stub;->registerCallback(JLcom/android/internal/telephony/uicc/IUsimInfoCallback;)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    const/4 v0, 0x1

    goto :goto_0

    .line 58
    .end local v2           #_arg1:Lcom/android/internal/telephony/uicc/IUsimInfoCallback;
    .end local v8           #_arg0:J
    :sswitch_2
    const-string v0, "com.android.internal.telephony.uicc.IUsimInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 62
    .restart local v8       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IUsimInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/uicc/IUsimInfoCallback;

    move-result-object v2

    .line 63
    .restart local v2       #_arg1:Lcom/android/internal/telephony/uicc/IUsimInfoCallback;
    invoke-virtual {p0, v8, v9, v2}, Lcom/android/internal/telephony/uicc/IUsimInfo$Stub;->unregisterCallback(JLcom/android/internal/telephony/uicc/IUsimInfoCallback;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    const/4 v0, 0x1

    goto :goto_0

    .line 69
    .end local v2           #_arg1:Lcom/android/internal/telephony/uicc/IUsimInfoCallback;
    .end local v8           #_arg0:J
    :sswitch_3
    const-string v0, "com.android.internal.telephony.uicc.IUsimInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 73
    .restart local v8       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 75
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 76
    .local v3, _arg2:I
    invoke-virtual {p0, v8, v9, v2, v3}, Lcom/android/internal/telephony/uicc/IUsimInfo$Stub;->PBMReadRecord(JII)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    const/4 v0, 0x1

    goto :goto_0

    .line 82
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v8           #_arg0:J
    :sswitch_4
    const-string v0, "com.android.internal.telephony.uicc.IUsimInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 86
    .restart local v8       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/LGE_PBM_Records;

    .line 92
    .local v2, _arg1:Lcom/android/internal/telephony/uicc/LGE_PBM_Records;
    :goto_1
    invoke-virtual {p0, v8, v9, v2}, Lcom/android/internal/telephony/uicc/IUsimInfo$Stub;->PBMWriteRecord(JLcom/android/internal/telephony/uicc/LGE_PBM_Records;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    const/4 v0, 0x1

    goto :goto_0

    .line 90
    .end local v2           #_arg1:Lcom/android/internal/telephony/uicc/LGE_PBM_Records;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/android/internal/telephony/uicc/LGE_PBM_Records;
    goto :goto_1

    .line 98
    .end local v2           #_arg1:Lcom/android/internal/telephony/uicc/LGE_PBM_Records;
    .end local v8           #_arg0:J
    :sswitch_5
    const-string v0, "com.android.internal.telephony.uicc.IUsimInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 102
    .restart local v8       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 104
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 105
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v8, v9, v2, v3}, Lcom/android/internal/telephony/uicc/IUsimInfo$Stub;->PBMDeleteRecord(JII)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 111
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v8           #_arg0:J
    :sswitch_6
    const-string v0, "com.android.internal.telephony.uicc.IUsimInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 115
    .restart local v8       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 116
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v8, v9, v2}, Lcom/android/internal/telephony/uicc/IUsimInfo$Stub;->PBMGetInfo(JI)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 122
    .end local v2           #_arg1:I
    .end local v8           #_arg0:J
    :sswitch_7
    const-string v0, "com.android.internal.telephony.uicc.IUsimInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IUsimInfo$Stub;->getUsimIsEmpty()I

    move-result v10

    .line 124
    .local v10, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 130
    .end local v10           #_result:I
    :sswitch_8
    const-string v0, "com.android.internal.telephony.uicc.IUsimInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 133
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IUsimInfo$Stub;->ReadFromSIM(I)[B

    move-result-object v10

    .line 134
    .local v10, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 136
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 140
    .end local v1           #_arg0:I
    .end local v10           #_result:[B
    :sswitch_9
    const-string v0, "com.android.internal.telephony.uicc.IUsimInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 144
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 145
    .local v2, _arg1:[B
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/uicc/IUsimInfo$Stub;->WriteToSIM(I[B)[B

    move-result-object v10

    .line 146
    .restart local v10       #_result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 148
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 152
    .end local v1           #_arg0:I
    .end local v2           #_arg1:[B
    .end local v10           #_result:[B
    :sswitch_a
    const-string v0, "com.android.internal.telephony.uicc.IUsimInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IUsimInfo$Stub;->getSCAddressFromIcc()Ljava/lang/String;

    move-result-object v10

    .line 154
    .local v10, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 160
    .end local v10           #_result:Ljava/lang/String;
    :sswitch_b
    const-string v0, "com.android.internal.telephony.uicc.IUsimInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IUsimInfo$Stub;->setSCAddressToIcc(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 169
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_c
    const-string v0, "com.android.internal.telephony.uicc.IUsimInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 172
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IUsimInfo$Stub;->getEfRecordsSize(I)I

    move-result v10

    .line 173
    .local v10, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 179
    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_d
    const-string v0, "com.android.internal.telephony.uicc.IUsimInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IUsimInfo$Stub;->getSCAddressTemp()Ljava/lang/String;

    move-result-object v10

    .line 181
    .local v10, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 187
    .end local v10           #_result:Ljava/lang/String;
    :sswitch_e
    const-string v0, "com.android.internal.telephony.uicc.IUsimInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IUsimInfo$Stub;->setSCAddressTemp(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 196
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_f
    const-string v0, "com.android.internal.telephony.uicc.IUsimInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IUsimInfo$Stub;->getUsimIsSponIMSI()I

    move-result v10

    .line 198
    .local v10, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 204
    .end local v10           #_result:I
    :sswitch_10
    const-string v0, "com.android.internal.telephony.uicc.IUsimInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IUsimInfo$Stub;->sendChangeToSponIMSI()V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 211
    :sswitch_11
    const-string v0, "com.android.internal.telephony.uicc.IUsimInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IUsimInfo$Stub;->sendChangeToHomeIMSI()V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 218
    :sswitch_12
    const-string v0, "com.android.internal.telephony.uicc.IUsimInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IUsimInfo$Stub;->sendUpdatePLMN()V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 225
    :sswitch_13
    const-string v0, "com.android.internal.telephony.uicc.IUsimInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IUsimInfo$Stub;->startOtaService()I

    move-result v10

    .line 227
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 233
    .end local v10           #_result:I
    :sswitch_14
    const-string v0, "com.android.internal.telephony.uicc.IUsimInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IUsimInfo$Stub;->getIMSI_M()Ljava/lang/String;

    move-result-object v10

    .line 235
    .local v10, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 241
    .end local v10           #_result:Ljava/lang/String;
    :sswitch_15
    const-string v0, "com.android.internal.telephony.uicc.IUsimInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 245
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 247
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 249
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 251
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 253
    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 255
    .local v6, _arg5:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, _arg6:Ljava/lang/String;
    move-object v0, p0

    .line 256
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/uicc/IUsimInfo$Stub;->sendAPDUToIcc(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 257
    .restart local v10       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 263
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:I
    .end local v7           #_arg6:Ljava/lang/String;
    .end local v10           #_result:Ljava/lang/String;
    :sswitch_16
    const-string v0, "com.android.internal.telephony.uicc.IUsimInfo"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IUsimInfo$Stub;->getATR()[B

    move-result-object v10

    .line 265
    .local v10, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 267
    const/4 v0, 0x1

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
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
