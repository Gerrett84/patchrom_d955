.class public final Lcom/lge/uicc/SmartCardWrapper;
.super Ljava/lang/Object;
.source "SmartCardWrapper.java"


# static fields
.field private static final CHANNEL_BYTES:I = 0x3

.field public static final SMARTCARD_IO_ALREADY_CONNECTED:I = -0x2

.field public static final SMARTCARD_IO_CARD_NOT_EXIST:I = -0x7

.field public static final SMARTCARD_IO_ERROR_ATR_BUFFER:I = -0x6

.field public static final SMARTCARD_IO_ERROR_NOT_CONNECT:I = -0x3

.field public static final SMARTCARD_IO_ERROR_OPEN_CHANNEL:I = -0x1

.field public static final SMARTCARD_IO_ERROR_RESPONSE_BUFFER:I = -0x5

.field public static final SMARTCARD_IO_ERROR_TRANSMIT_BUFFER:I = -0x4

.field public static final SMARTCARD_IO_ERROR_UNKNOWN:I = -0x8

.field public static final SMARTCARD_IO_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LGE_USIM"

.field private static sInstance:Lcom/lge/uicc/SmartCardWrapper;


# instance fields
.field private channel:I

.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/lge/uicc/SmartCardWrapper;

    invoke-direct {v0}, Lcom/lge/uicc/SmartCardWrapper;-><init>()V

    sput-object v0, Lcom/lge/uicc/SmartCardWrapper;->sInstance:Lcom/lge/uicc/SmartCardWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/uicc/SmartCardWrapper;->channel:I

    .line 70
    return-void
.end method

.method public static getInstance()Lcom/lge/uicc/SmartCardWrapper;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/lge/uicc/SmartCardWrapper;->sInstance:Lcom/lge/uicc/SmartCardWrapper;

    return-object v0
.end method


# virtual methods
.method public connect()I
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v4, -0x1

    .line 81
    const-string v5, "LGE_USIM"

    const-string v6, "Smartcard connect()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-array v0, v7, [B

    fill-array-data v0, :array_0

    .line 83
    .local v0, command:[B
    const/4 v5, 0x3

    new-array v1, v5, [B

    .line 85
    .local v1, response:[B
    const/4 v3, 0x0

    .line 88
    .local v3, searchSW:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-eq v5, v7, :cond_1

    .line 90
    const-string v4, "LGE_USIM"

    const-string v5, "[connect] Usim Card Not Inserted!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v4, -0x7

    .line 113
    :cond_0
    :goto_0
    return v4

    .line 95
    :cond_1
    iget v5, p0, Lcom/lge/uicc/SmartCardWrapper;->channel:I

    if-eq v5, v4, :cond_2

    .line 97
    const-string v4, "LGE_USIM"

    const-string v5, "[connect] Logical Channel is already open!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v4, -0x2

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/lge/uicc/SmartCardWrapper;->transmit([B[B)I

    move-result v2

    .line 102
    .local v2, response_length:I
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 103
    const-string v5, "LGE_USIM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[connect] response : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v5, "9000"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 110
    const/4 v4, 0x0

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lcom/lge/uicc/SmartCardWrapper;->channel:I

    .line 111
    const-string v4, "LGE_USIM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "open channel : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/uicc/SmartCardWrapper;->channel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget v4, p0, Lcom/lge/uicc/SmartCardWrapper;->channel:I

    goto :goto_0

    .line 82
    :array_0
    .array-data 0x1
        0x0t
        0x70t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public disconnect()I
    .locals 9

    .prologue
    const/4 v7, 0x2

    const/4 v8, -0x1

    const/4 v4, 0x0

    .line 120
    const-string v5, "LGE_USIM"

    const-string v6, "Smartcard disconnect()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v5, 0x4

    new-array v0, v5, [B

    aput-byte v4, v0, v4

    const/4 v5, 0x1

    const/16 v6, 0x70

    aput-byte v6, v0, v5

    const/16 v5, -0x80

    aput-byte v5, v0, v7

    const/4 v5, 0x3

    iget v6, p0, Lcom/lge/uicc/SmartCardWrapper;->channel:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 122
    .local v0, command:[B
    new-array v1, v7, [B

    .line 124
    .local v1, response:[B
    const/4 v3, 0x0

    .line 127
    .local v3, searchSW:Ljava/lang/String;
    iget v5, p0, Lcom/lge/uicc/SmartCardWrapper;->channel:I

    if-ne v5, v8, :cond_0

    .line 129
    const/4 v4, -0x3

    .line 142
    :goto_0
    return v4

    .line 132
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/lge/uicc/SmartCardWrapper;->transmit([B[B)I

    move-result v2

    .line 133
    .local v2, response_length:I
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 134
    const-string v5, "LGE_USIM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[disconnect] response : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v5, "9000"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 138
    const/4 v4, -0x8

    goto :goto_0

    .line 141
    :cond_1
    iput v8, p0, Lcom/lge/uicc/SmartCardWrapper;->channel:I

    goto :goto_0
.end method

.method public getATR([B)I
    .locals 9
    .parameter "atr"

    .prologue
    const/4 v8, 0x0

    const/4 v4, -0x8

    .line 203
    const-string v5, "LGE_USIM"

    const-string v6, "Smartcard getATR()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v3, 0x0

    .line 207
    .local v3, tmpdata:Lcom/android/internal/telephony/uicc/SmartCardResult;
    const-string v5, "ISmartCardInfo"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 210
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 211
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "ISmartCardInfo binder not available!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 213
    :cond_0
    invoke-static {v0}, Lcom/lge/uicc/ISmartCardInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/uicc/ISmartCardInfo;

    move-result-object v2

    .line 217
    .local v2, mSCInfo:Lcom/lge/uicc/ISmartCardInfo;
    :try_start_0
    invoke-interface {v2}, Lcom/lge/uicc/ISmartCardInfo;->smartCardGetATR()Lcom/android/internal/telephony/uicc/SmartCardResult;

    move-result-object v3

    .line 218
    const-string v5, "LGE_USIM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getATR] tmpdata.ret : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/uicc/SmartCardResult;->ret:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " tmpdata.data : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/internal/telephony/uicc/SmartCardResult;->data:[B

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    if-nez v3, :cond_2

    .line 243
    :cond_1
    :goto_1
    return v4

    .line 220
    :catch_0
    move-exception v1

    .line 222
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "LGE_USIM"

    const-string v6, "Call getATR Failed"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 230
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    iget v5, v3, Lcom/android/internal/telephony/uicc/SmartCardResult;->ret:I

    if-nez v5, :cond_1

    .line 232
    iget v4, v3, Lcom/android/internal/telephony/uicc/SmartCardResult;->data_length:I

    array-length v5, p1

    if-le v4, v5, :cond_3

    .line 234
    const-string v4, "LGE_USIM"

    const-string v5, "[getATR] SMARTCARD_IO_ERROR_ATR_BUFFER!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v4, -0x6

    goto :goto_1

    .line 237
    :cond_3
    iget-object v4, v3, Lcom/android/internal/telephony/uicc/SmartCardResult;->data:[B

    iget v5, v3, Lcom/android/internal/telephony/uicc/SmartCardResult;->data_length:I

    invoke-static {v4, v8, p1, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    const-string v4, "LGE_USIM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getATR] atr : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget v4, v3, Lcom/android/internal/telephony/uicc/SmartCardResult;->data_length:I

    goto :goto_1
.end method

.method public getChannel()I
    .locals 2

    .prologue
    .line 250
    const-string v0, "LGE_USIM"

    const-string v1, "Smartcard getChannel()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget v0, p0, Lcom/lge/uicc/SmartCardWrapper;->channel:I

    if-gez v0, :cond_0

    .line 254
    const/4 v0, -0x3

    .line 256
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lge/uicc/SmartCardWrapper;->channel:I

    goto :goto_0
.end method

.method public transmit([B[B)I
    .locals 9
    .parameter "command"
    .parameter "response"

    .prologue
    const/4 v8, 0x0

    const/4 v4, -0x8

    .line 148
    const-string v5, "LGE_USIM"

    const-string v6, "Smartcard transmit()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v5, "ISmartCardInfo"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 153
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 154
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "ISmartCardInfo binder not available!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 156
    :cond_0
    invoke-static {v0}, Lcom/lge/uicc/ISmartCardInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/uicc/ISmartCardInfo;

    move-result-object v2

    .line 158
    .local v2, mSCInfo:Lcom/lge/uicc/ISmartCardInfo;
    const/4 v3, 0x0

    .line 160
    .local v3, tmpdata:Lcom/android/internal/telephony/uicc/SmartCardResult;
    if-nez p1, :cond_2

    .line 162
    const/4 v4, -0x4

    .line 196
    :cond_1
    :goto_0
    return v4

    .line 165
    :cond_2
    const-string v5, "LGE_USIM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[transmit] command : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :try_start_0
    invoke-interface {v2, p1}, Lcom/lge/uicc/ISmartCardInfo;->smartCardTransmit([B)Lcom/android/internal/telephony/uicc/SmartCardResult;

    move-result-object v3

    .line 170
    const-string v5, "LGE_USIM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[transmit] tmpdata.ret : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/internal/telephony/uicc/SmartCardResult;->ret:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " tmpdata.data : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/internal/telephony/uicc/SmartCardResult;->data:[B

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_1
    if-eqz v3, :cond_1

    .line 182
    iget v5, v3, Lcom/android/internal/telephony/uicc/SmartCardResult;->ret:I

    if-nez v5, :cond_4

    .line 184
    iget v4, v3, Lcom/android/internal/telephony/uicc/SmartCardResult;->data_length:I

    array-length v5, p2

    if-le v4, v5, :cond_3

    .line 186
    const-string v4, "LGE_USIM"

    const-string v5, "[transmit] SMARTCARD_IO_ERROR_RESPONSE_BUFFER!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v4, -0x5

    goto :goto_0

    .line 172
    :catch_0
    move-exception v1

    .line 174
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "LGE_USIM"

    const-string v6, "Call smartCardTransmit Failed"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 189
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_3
    iget-object v4, v3, Lcom/android/internal/telephony/uicc/SmartCardResult;->data:[B

    iget v5, v3, Lcom/android/internal/telephony/uicc/SmartCardResult;->data_length:I

    invoke-static {v4, v8, p2, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    const-string v4, "LGE_USIM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[transmit] response : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget v4, v3, Lcom/android/internal/telephony/uicc/SmartCardResult;->data_length:I

    goto/16 :goto_0

    .line 195
    :cond_4
    const-string v5, "LGE_USIM"

    const-string v6, "[transmit] transmit error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
