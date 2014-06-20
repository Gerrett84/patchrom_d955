.class public Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;
.super Ljava/lang/Object;
.source "LgeBluetoothSimManager.java"


# static fields
.field private static final ACTION_SAP_REQUEST:Ljava/lang/String; = "com.lge.bluetooth.sap.ACTION_SAP_REQUEST"

.field private static final ACTION_SAP_RESPONSE:Ljava/lang/String; = "com.lge.bluetooth.sap.ACTION_SAP_RESPONSE"

.field private static final BTSC_CARD_STATUS_INSERTED:I = 0x4

.field private static final CARD_STATUS_NOT_ACCESSIBLE:I = 0x2

.field private static final CARD_STATUS_RECOVERED:I = 0x5

.field private static final CARD_STATUS_REMOVED:I = 0x3

.field private static final CARD_STATUS_RESET:I = 0x1

.field private static final CARD_STATUS_UNKNOWN:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final QCT_SAP_CONNECTION_CHECK_STATUS:I = 0x2

.field private static final QCT_SAP_CONNECTION_CONNECT:I = 0x1

.field private static final QCT_SAP_CONNECTION_DISCONNECT:I = 0x0

.field private static final QCT_SAP_REQUEST_OP_GET_ATR:I = 0x0

.field private static final QCT_SAP_REQUEST_OP_POWER_SIM_OFF:I = 0x2

.field private static final QCT_SAP_REQUEST_OP_POWER_SIM_ON:I = 0x3

.field private static final QCT_SAP_REQUEST_OP_READER_STATUS:I = 0x5

.field private static final QCT_SAP_REQUEST_OP_RESET_SIM:I = 0x4

.field private static final QCT_SAP_REQUEST_OP_SEND_APDU:I = 0x1

.field private static final RESULT_OK:I = 0x0

.field private static final RIL_FOR_2CHIP:Z = false

.field private static final RIL_REQ_SAP_CONNECTION_DONE:I = 0xc8

.field private static final RIL_REQ_SAP_DONE:I = 0xc9

.field private static final SAP_DISABLE_EVT:I = 0xb

.field private static final SAP_ENABLE_EVT:I = 0xa

.field private static final SIM_APDU_RESP:I = 0x5

.field private static final SIM_ATR_RESP:I = 0x4

.field private static final SIM_CARD_READER_STATUS_EVT:I = 0x7

.field private static final SIM_CARD_READER_STATUS_RESP:I = 0x7

.field private static final SIM_CARD_STATUS_RESP:I = 0x6

.field private static final SIM_CLOSE_EVT:I = 0x1

.field private static final SIM_CLOSE_RESP:I = 0xb

.field private static final SIM_DISCONNECT_RESP:I = 0x0

.field private static final SIM_OPEN_EVT:I = 0x0

.field private static final SIM_OPEN_RESP:I = 0xa

.field private static final SIM_POWER_OFF_EVT:I = 0x4

.field private static final SIM_POWER_OFF_RESP:I = 0x2

.field private static final SIM_POWER_ON_EVT:I = 0x3

.field private static final SIM_POWER_ON_RESP:I = 0x1

.field private static final SIM_RESET_EVT:I = 0x2

.field private static final SIM_RESET_RESP:I = 0x3

.field private static final SIM_TRANSFER_APDU_EVT:I = 0x6

.field private static final SIM_TRANSFER_ATR_EVT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "LgeBluetoothSimManager"

.field private static mContext:Landroid/content/Context;

.field private static mIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCM:Lcom/android/internal/telephony/CommandsInterface;

.field private mHandler:Landroid/os/Handler;

.field private mReqType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "persist.service.sap.debug"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 3
    .parameter "context"
    .parameter "phone"

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$1;-><init>(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 333
    new-instance v0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager$2;-><init>(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mHandler:Landroid/os/Handler;

    .line 95
    sput-object p1, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mContext:Landroid/content/Context;

    .line 96
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mIntentFilter:Landroid/content/IntentFilter;

    .line 99
    sget-object v0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.lge.bluetooth.sap.ACTION_SAP_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    return-void
.end method

.method private static ByteArrayToString([BI)Ljava/lang/String;
    .locals 4
    .parameter "b"
    .parameter "start"

    .prologue
    .line 222
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 223
    .local v1, s:Ljava/lang/StringBuffer;
    move v0, p1

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 224
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mReqType:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mReqType:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;[BILandroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->sendSapRequestToSim([BILandroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->DBG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->onGetRilResponse(Landroid/os/Message;)V

    return-void
.end method

.method private onGetRilResponse(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x7

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 248
    const/4 v10, 0x0

    .line 250
    .local v10, ril_resp:Ljava/lang/String;
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 320
    :goto_0
    return-void

    .line 253
    :pswitch_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mReqType:I

    if-nez v0, :cond_0

    .line 254
    const-string v0, "LgeBluetoothSimManager"

    const-string v1, "[BTUI] ### SIM_OPEN_RESP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/16 v1, 0xa

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->onSapResponseToManager(IIILjava/lang/String;I)V

    goto :goto_0

    .line 257
    :cond_0
    const-string v0, "LgeBluetoothSimManager"

    const-string v1, "[BTUI] ### SIM_CLOSE_RESP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/16 v1, 0xb

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->onSapResponseToManager(IIILjava/lang/String;I)V

    goto :goto_0

    .line 263
    :pswitch_1
    const-string v0, "LgeBluetoothSimManager"

    const-string v3, "[BTUI] RIL_REQ_SAP_DONE"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 265
    .local v7, ar:Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 266
    const-string v0, "LgeBluetoothSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BTUI] exception happens : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    :cond_1
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 268
    const-string v0, "LgeBluetoothSimManager"

    const-string v1, "[BTUI] result is vacant"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    :cond_2
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    .line 271
    .local v6, apdu_rsp:[Ljava/lang/String;
    aget-object v0, v6, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 272
    .local v8, op_type:I
    aget-object v9, v6, v1

    .line 273
    .local v9, payload:Ljava/lang/String;
    iget v0, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mReqType:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 275
    :pswitch_2
    const-string v0, "LgeBluetoothSimManager"

    const-string v1, "[BTUI] ### SIM_RESET_RESP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v1, 0x3

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->onSapResponseToManager(IIILjava/lang/String;I)V

    goto/16 :goto_0

    .line 279
    :pswitch_3
    const-string v0, "LgeBluetoothSimManager"

    const-string v3, "[BTUI] ### SIM_POWER_ON_RESP"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move v3, v2

    move v5, v2

    .line 280
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->onSapResponseToManager(IIILjava/lang/String;I)V

    goto/16 :goto_0

    .line 283
    :pswitch_4
    const-string v0, "LgeBluetoothSimManager"

    const-string v1, "[BTUI] ### SIM_POWER_OFF_RESP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v1, 0x2

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->onSapResponseToManager(IIILjava/lang/String;I)V

    goto/16 :goto_0

    .line 287
    :pswitch_5
    if-eqz v9, :cond_3

    .line 288
    const-string v0, "LgeBluetoothSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BTUI] ### SIM_ATR_RESP = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (len: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v1, 0x4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v3, v2

    move-object v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->onSapResponseToManager(IIILjava/lang/String;I)V

    goto/16 :goto_0

    .line 291
    :cond_3
    const-string v0, "LgeBluetoothSimManager"

    const-string v1, "[BTUI] ### SIM_ATR_RESP : playload is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 295
    :pswitch_6
    if-eqz v9, :cond_4

    .line 296
    const-string v0, "LgeBluetoothSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BTUI] ### SIM_APDU_RESP = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (len: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v1, 0x5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v3, v2

    move-object v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->onSapResponseToManager(IIILjava/lang/String;I)V

    goto/16 :goto_0

    .line 299
    :cond_4
    const-string v0, "LgeBluetoothSimManager"

    const-string v1, "[BTUI] ### SIM_APDU_RESP : playload is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 303
    :pswitch_7
    if-eqz v9, :cond_5

    .line 304
    const-string v0, "LgeBluetoothSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BTUI] ### SIM_CARD_READER_STATUS_RESP = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (len: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v1, v11

    move v3, v2

    move-object v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->onSapResponseToManager(IIILjava/lang/String;I)V

    goto/16 :goto_0

    .line 307
    :cond_5
    const-string v0, "LgeBluetoothSimManager"

    const-string v1, "[BTUI] ### SIM_CARD_READER_STATUS_RESP : playload is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move v1, v11

    move v3, v2

    move v5, v2

    .line 308
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->onSapResponseToManager(IIILjava/lang/String;I)V

    goto/16 :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 273
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static parseChannelNumber(B)I
    .locals 2
    .parameter "cla"

    .prologue
    .line 231
    and-int/lit8 v1, p0, 0x40

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 233
    .local v0, isFirstInterindustryClassByteCoding:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 236
    and-int/lit8 v1, p0, 0x3

    .line 240
    :goto_1
    return v1

    .line 231
    .end local v0           #isFirstInterindustryClassByteCoding:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 240
    .restart local v0       #isFirstInterindustryClassByteCoding:Z
    :cond_1
    and-int/lit8 v1, p0, 0xf

    add-int/lit8 v1, v1, 0x4

    goto :goto_1
.end method

.method private sendSapRequestToSim([BILandroid/os/Message;)V
    .locals 4
    .parameter "req_byte"
    .parameter "op_type"
    .parameter "msg"

    .prologue
    .line 201
    const-string v1, "LgeBluetoothSimManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BTUI] sendSapRequestToSim: op_type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, input_data:Ljava/lang/String;
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 206
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->ByteArrayToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 207
    const-string v1, "LgeBluetoothSimManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BTUI] sendSapRequestToSim: input_data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    if-eqz v0, :cond_0

    .line 209
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p2, v0, p3}, Lcom/android/internal/telephony/CommandsInterface;->SAPrequest(ILjava/lang/String;Landroid/os/Message;)V

    .line 219
    .end local v0           #input_data:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 212
    .restart local v0       #input_data:Ljava/lang/String;
    :cond_1
    const-string v1, "LgeBluetoothSimManager"

    const-string v2, "[BTUI] sendSapRequestToSim: req_byte is null or length is 0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    .end local v0           #input_data:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2, p3}, Lcom/android/internal/telephony/CommandsInterface;->SAPrequest(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method


# virtual methods
.method public onSapResponseToManager(IIILjava/lang/String;I)V
    .locals 2
    .parameter "resp_type"
    .parameter "result_code"
    .parameter "is_apdu_7816"
    .parameter "resp_data"
    .parameter "resp_len"

    .prologue
    .line 324
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.bluetooth.sap.ACTION_SAP_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, sapRespIntent:Landroid/content/Intent;
    const-string v1, "resp_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 326
    const-string v1, "result_code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 327
    const-string v1, "is_apdu_7816"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 328
    const-string v1, "resp_data"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string v1, "resp_len"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 330
    sget-object v1, Lcom/android/internal/telephony/gsm/LgeBluetoothSimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 331
    return-void
.end method
