.class public Lcom/android/internal/telephony/uicc/UsimService;
.super Ljava/lang/Object;
.source "UsimService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LGE_USIM"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUsimInfo:Lcom/android/internal/telephony/uicc/IUsimInfo;

.field private uid:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UsimService;-><init>(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UsimService;->mContext:Landroid/content/Context;

    .line 46
    const-string v0, "iusiminfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IUsimInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/uicc/IUsimInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UsimService;->mUsimInfo:Lcom/android/internal/telephony/uicc/IUsimInfo;

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/telephony/uicc/UsimService;->uid:J

    .line 49
    return-void
.end method

.method private resetBinder()Z
    .locals 4

    .prologue
    .line 58
    const/4 v0, 0x6

    .line 60
    .local v0, bucket:I
    const-string v2, "LGE_USIM"

    const-string v3, "[UsimService] reset binder from RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    const-string v2, "iusiminfo"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IUsimInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/uicc/IUsimInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UsimService;->mUsimInfo:Lcom/android/internal/telephony/uicc/IUsimInfo;

    .line 65
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimService;->mUsimInfo:Lcom/android/internal/telephony/uicc/IUsimInfo;

    if-eqz v2, :cond_1

    .line 66
    const-string v2, "LGE_USIM"

    const-string v3, "[UsimService] reset binder ==> OK"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v2, 0x1

    .line 84
    :goto_0
    return v2

    .line 70
    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_2

    .line 81
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UsimService;->mUsimInfo:Lcom/android/internal/telephony/uicc/IUsimInfo;

    .line 82
    const-string v2, "LGE_USIM"

    const-string v3, "[UsimService] reset binder ==> FAIL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v2, 0x0

    goto :goto_0

    .line 73
    :cond_2
    const-string v2, "LGE_USIM"

    const-string v3, "[UsimService] reset binder ==> sleeping..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    if-gtz v0, :cond_0

    goto :goto_1

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, e:Ljava/lang/InterruptedException;
    goto :goto_1
.end method


# virtual methods
.method public PBMDeleteRecord(II)V
    .locals 5
    .parameter "EFdevice"
    .parameter "rec_index"

    .prologue
    .line 445
    const-string v2, "LGE_USIM"

    const-string v3, "[UsimService]PBMDeleteRecord()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_0
    const/4 v1, 0x0

    .line 451
    .local v1, reset:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimService;->mUsimInfo:Lcom/android/internal/telephony/uicc/IUsimInfo;

    iget-wide v3, p0, Lcom/android/internal/telephony/uicc/UsimService;->uid:J

    invoke-interface {v2, v3, v4, p1, p2}, Lcom/android/internal/telephony/uicc/IUsimInfo;->PBMDeleteRecord(JII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :goto_0
    if-nez v1, :cond_0

    .line 456
    return-void

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public PBMGetInfo(I)V
    .locals 5
    .parameter "EFdevice"

    .prologue
    .line 460
    const-string v2, "LGE_USIM"

    const-string v3, "[UsimService]PBMGetInfo()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_0
    const/4 v1, 0x0

    .line 466
    .local v1, reset:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimService;->mUsimInfo:Lcom/android/internal/telephony/uicc/IUsimInfo;

    iget-wide v3, p0, Lcom/android/internal/telephony/uicc/UsimService;->uid:J

    invoke-interface {v2, v3, v4, p1}, Lcom/android/internal/telephony/uicc/IUsimInfo;->PBMGetInfo(JI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :goto_0
    if-nez v1, :cond_0

    .line 471
    return-void

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public PBMReadRecord(II)V
    .locals 5
    .parameter "EFdevice"
    .parameter "rec_index"

    .prologue
    .line 417
    :cond_0
    const/4 v1, 0x0

    .line 419
    .local v1, reset:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimService;->mUsimInfo:Lcom/android/internal/telephony/uicc/IUsimInfo;

    iget-wide v3, p0, Lcom/android/internal/telephony/uicc/UsimService;->uid:J

    invoke-interface {v2, v3, v4, p1, p2}, Lcom/android/internal/telephony/uicc/IUsimInfo;->PBMReadRecord(JII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :goto_0
    if-nez v1, :cond_0

    .line 425
    return-void

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, e:Ljava/lang/Throwable;
    const-string v2, "LGE_USIM"

    const-string v3, "[UsimService]PBMReadRecord() call resetBinder"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public PBMWriteRecord(Lcom/android/internal/telephony/uicc/LGE_PBM_Records;)V
    .locals 5
    .parameter "RecordData"

    .prologue
    .line 429
    const-string v2, "LGE_USIM"

    const-string v3, "[UsimService]PBMWriteRecord()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    const/4 v1, 0x0

    .line 435
    .local v1, reset:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimService;->mUsimInfo:Lcom/android/internal/telephony/uicc/IUsimInfo;

    iget-wide v3, p0, Lcom/android/internal/telephony/uicc/UsimService;->uid:J

    invoke-interface {v2, v3, v4, p1}, Lcom/android/internal/telephony/uicc/IUsimInfo;->PBMWriteRecord(JLcom/android/internal/telephony/uicc/LGE_PBM_Records;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :goto_0
    if-nez v1, :cond_0

    .line 441
    return-void

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, e:Ljava/lang/Throwable;
    const-string v2, "LGE_USIM"

    const-string v3, "[UsimService]PBMWriteRecord() call resetBinder"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public ReadFromSIM(I)[B
    .locals 6
    .parameter "EF_ID"

    .prologue
    .line 118
    const-string v3, "LGE_USIM"

    const-string v4, "[UsimService] ReadFromSIM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v1, 0x0

    .line 123
    .local v1, read_buff:[B
    :cond_0
    const/4 v2, 0x0

    .line 125
    .local v2, reset:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimService;->mUsimInfo:Lcom/android/internal/telephony/uicc/IUsimInfo;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/uicc/IUsimInfo;->ReadFromSIM(I)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 130
    :goto_0
    if-nez v2, :cond_0

    .line 132
    return-object v1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/Throwable;
    const-string v3, "LGE_USIM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "binder is not ready yet : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimService;->resetBinder()Z

    move-result v2

    goto :goto_0
.end method

.method public WriteToSIM(I[B)[B
    .locals 6
    .parameter "efid"
    .parameter "data_to_be_sent"

    .prologue
    .line 137
    const-string v4, "LGE_USIM"

    const-string v5, "[UsimService]WriteToSIM()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v3, 0x0

    .line 140
    .local v3, ret:[B
    const/4 v0, 0x0

    .line 143
    .local v0, data:[B
    :cond_0
    const/4 v2, 0x0

    .line 145
    .local v2, reset:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UsimService;->mUsimInfo:Lcom/android/internal/telephony/uicc/IUsimInfo;

    invoke-interface {v4, p1, p2}, Lcom/android/internal/telephony/uicc/IUsimInfo;->WriteToSIM(I[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 149
    :goto_0
    if-nez v2, :cond_0

    .line 151
    return-object v3

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimService;->resetBinder()Z

    move-result v2

    goto :goto_0
.end method

.method public getEfRecordSize(I)I
    .locals 5
    .parameter "efid"

    .prologue
    .line 222
    const-string v3, "LGE_USIM"

    const-string v4, "[UsimService] getEfRecordSize"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v2, 0x0

    .line 227
    .local v2, size:I
    :cond_0
    const/4 v1, 0x0

    .line 229
    .local v1, reset:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimService;->mUsimInfo:Lcom/android/internal/telephony/uicc/IUsimInfo;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/uicc/IUsimInfo;->getEfRecordsSize(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 233
    :goto_0
    if-nez v1, :cond_0

    .line 235
    return v2

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public getIMSI_M()Ljava/lang/String;
    .locals 5

    .prologue
    .line 476
    const/4 v2, 0x0

    .line 479
    .local v2, retVal:Ljava/lang/String;
    const-string v3, "LGE_USIM"

    const-string v4, "[UsimService] getIMSI_M()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_0
    const/4 v1, 0x0

    .line 484
    .local v1, reset:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimService;->mUsimInfo:Lcom/android/internal/telephony/uicc/IUsimInfo;

    invoke-interface {v3}, Lcom/android/internal/telephony/uicc/IUsimInfo;->getIMSI_M()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 488
    :goto_0
    if-nez v1, :cond_0

    .line 490
    return-object v2

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public getSCAddressFromIcc()Ljava/lang/String;
    .locals 5

    .prologue
    .line 189
    const-string v3, "LGE_USIM"

    const-string v4, "[UsimService] getSCAddressFromIcc"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v2, 0x0

    .line 194
    .local v2, scAddr:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 196
    .local v1, reset:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimService;->mUsimInfo:Lcom/android/internal/telephony/uicc/IUsimInfo;

    invoke-interface {v3}, Lcom/android/internal/telephony/uicc/IUsimInfo;->getSCAddressFromIcc()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 200
    :goto_0
    if-nez v1, :cond_0

    .line 202
    return-object v2

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public getUsimIsEmpty()I
    .locals 5

    .prologue
    .line 156
    const-string v3, "LGE_USIM"

    const-string v4, "[UsimService]getUsimIsEmpty()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v2, -0x1

    .line 161
    .local v2, ret_val:I
    :cond_0
    const/4 v1, 0x0

    .line 163
    .local v1, reset:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimService;->mUsimInfo:Lcom/android/internal/telephony/uicc/IUsimInfo;

    invoke-interface {v3}, Lcom/android/internal/telephony/uicc/IUsimInfo;->getUsimIsEmpty()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 167
    :goto_0
    if-nez v1, :cond_0

    .line 169
    return v2

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public getUsimIsSponIMSI()I
    .locals 5

    .prologue
    .line 243
    const-string v3, "LGE_USIM"

    const-string v4, "[UsimService]getUsimIsSponIMSI()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v2, -0x1

    .line 248
    .local v2, ret_val:I
    :cond_0
    const/4 v1, 0x0

    .line 250
    .local v1, reset:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimService;->mUsimInfo:Lcom/android/internal/telephony/uicc/IUsimInfo;

    invoke-interface {v3}, Lcom/android/internal/telephony/uicc/IUsimInfo;->getUsimIsSponIMSI()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 254
    :goto_0
    if-nez v1, :cond_0

    .line 256
    return v2

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public getUsimType()I
    .locals 4

    .prologue
    .line 174
    const-string v1, "LGE_USIM"

    const-string v2, "[UsimService]getUsimType()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v1, "gsm.sim.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, gsmSimType:Ljava/lang/String;
    const-string v1, "LGE_USIM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsimType() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v1, "skt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 184
    :goto_0
    return v1

    .line 179
    :cond_0
    const-string v1, "kt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    .line 180
    :cond_1
    const-string v1, "lgu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    goto :goto_0

    .line 181
    :cond_2
    const-string v1, "test"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    .line 182
    :cond_3
    const-string v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    goto :goto_0

    .line 184
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readEF_Mdn(I)Ljava/lang/String;
    .locals 7
    .parameter "EF_ID"

    .prologue
    .line 326
    const-string v4, "LGE_USIM"

    const-string v5, "[UsimService]readEF_Mdn()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v2, 0x0

    .line 328
    .local v2, mMdn:[B
    const/4 v1, 0x0

    .line 332
    .local v1, mEFMdn:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .line 334
    .local v3, reset:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UsimService;->mUsimInfo:Lcom/android/internal/telephony/uicc/IUsimInfo;

    invoke-interface {v4, p1}, Lcom/android/internal/telephony/uicc/IUsimInfo;->ReadFromSIM(I)[B

    move-result-object v2

    .line 335
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->decodeMdn([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 340
    :goto_0
    if-nez v3, :cond_0

    .line 342
    return-object v1

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, e:Ljava/lang/Throwable;
    const-string v4, "LGE_USIM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "binder is not ready yet : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimService;->resetBinder()Z

    move-result v3

    goto :goto_0
.end method

.method public readEF_Roaming(I)Ljava/lang/String;
    .locals 7
    .parameter "EF_ID"

    .prologue
    .line 367
    const-string v4, "LGE_USIM"

    const-string v5, "[UsimService]readEF_Roaming()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v2, 0x0

    .line 369
    .local v2, mRoaming:[B
    const/4 v1, 0x0

    .line 373
    .local v1, mEFRoaming:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .line 375
    .local v3, reset:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UsimService;->mUsimInfo:Lcom/android/internal/telephony/uicc/IUsimInfo;

    invoke-interface {v4, p1}, Lcom/android/internal/telephony/uicc/IUsimInfo;->ReadFromSIM(I)[B

    move-result-object v2

    .line 376
    if-eqz v2, :cond_1

    .line 377
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 383
    :cond_1
    :goto_0
    if-nez v3, :cond_0

    .line 385
    return-object v1

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, e:Ljava/lang/Throwable;
    const-string v4, "LGE_USIM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "binder is not ready yet : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimService;->resetBinder()Z

    move-result v3

    goto :goto_0
.end method

.method public registerCallback(Lcom/android/internal/telephony/uicc/IUsimInfoCallback;)V
    .locals 5
    .parameter "cb"

    .prologue
    .line 92
    :cond_0
    const/4 v1, 0x0

    .line 94
    .local v1, reset:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimService;->mUsimInfo:Lcom/android/internal/telephony/uicc/IUsimInfo;

    iget-wide v3, p0, Lcom/android/internal/telephony/uicc/UsimService;->uid:J

    invoke-interface {v2, v3, v4, p1}, Lcom/android/internal/telephony/uicc/IUsimInfo;->registerCallback(JLcom/android/internal/telephony/uicc/IUsimInfoCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    if-nez v1, :cond_0

    .line 99
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public sendChangeToHomeIMSI()V
    .locals 4

    .prologue
    .line 291
    const-string v2, "LGE_USIM"

    const-string v3, "[UsimService]sendChangeToHomeIMSI()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    const/4 v1, 0x0

    .line 297
    .local v1, reset:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimService;->mUsimInfo:Lcom/android/internal/telephony/uicc/IUsimInfo;

    invoke-interface {v2}, Lcom/android/internal/telephony/uicc/IUsimInfo;->sendChangeToHomeIMSI()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    if-nez v1, :cond_0

    .line 302
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public sendChangeToSponIMSI()V
    .locals 4

    .prologue
    .line 261
    const-string v2, "LGE_USIM"

    const-string v3, "[UsimService]sendChangeToSponIMSI()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    const/4 v1, 0x0

    .line 267
    .local v1, reset:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimService;->mUsimInfo:Lcom/android/internal/telephony/uicc/IUsimInfo;

    invoke-interface {v2}, Lcom/android/internal/telephony/uicc/IUsimInfo;->sendChangeToSponIMSI()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    if-nez v1, :cond_0

    .line 272
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public sendUpdatePLMN()V
    .locals 4

    .prologue
    .line 276
    const-string v2, "LGE_USIM"

    const-string v3, "[UsimService]sendUpdatePLMN()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    const/4 v1, 0x0

    .line 282
    .local v1, reset:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimService;->mUsimInfo:Lcom/android/internal/telephony/uicc/IUsimInfo;

    invoke-interface {v2}, Lcom/android/internal/telephony/uicc/IUsimInfo;->sendUpdatePLMN()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_0
    if-nez v1, :cond_0

    .line 287
    return-void

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public setSCAddressToIcc(Ljava/lang/String;)V
    .locals 4
    .parameter "scAddr"

    .prologue
    .line 207
    const-string v2, "LGE_USIM"

    const-string v3, "[UsimService] setSCAddressToIcc"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    const/4 v1, 0x0

    .line 213
    .local v1, reset:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimService;->mUsimInfo:Lcom/android/internal/telephony/uicc/IUsimInfo;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/uicc/IUsimInfo;->setSCAddressToIcc(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    if-nez v1, :cond_0

    .line 218
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public startOtaService()I
    .locals 5

    .prologue
    .line 309
    const-string v3, "LGE_USIM"

    const-string v4, "[UsimService]startOtaService()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v2, -0x1

    .line 314
    .local v2, ret_val:I
    :cond_0
    const/4 v1, 0x0

    .line 316
    .local v1, reset:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimService;->mUsimInfo:Lcom/android/internal/telephony/uicc/IUsimInfo;

    invoke-interface {v3}, Lcom/android/internal/telephony/uicc/IUsimInfo;->startOtaService()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 320
    :goto_0
    if-nez v1, :cond_0

    .line 321
    return v2

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public unregisterCallback(Lcom/android/internal/telephony/uicc/IUsimInfoCallback;)V
    .locals 5
    .parameter "cb"

    .prologue
    .line 106
    :cond_0
    const/4 v1, 0x0

    .line 108
    .local v1, reset:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimService;->mUsimInfo:Lcom/android/internal/telephony/uicc/IUsimInfo;

    iget-wide v3, p0, Lcom/android/internal/telephony/uicc/UsimService;->uid:J

    invoke-interface {v2, v3, v4, p1}, Lcom/android/internal/telephony/uicc/IUsimInfo;->unregisterCallback(JLcom/android/internal/telephony/uicc/IUsimInfoCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    if-nez v1, :cond_0

    .line 113
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public writeEF_Mdn(Ljava/lang/String;)V
    .locals 5
    .parameter "mdn"

    .prologue
    .line 347
    const-string v3, "LGE_USIM"

    const-string v4, "[UsimService]writeEF_Mdn()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v1, 0x0

    .line 352
    .local v1, rawData:[B
    :cond_0
    const/4 v2, 0x0

    .line 354
    .local v2, reset:Z
    if-eqz p1, :cond_1

    :try_start_0
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 355
    :cond_1
    const-string v3, "ffffffffffffffffffffff"

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 358
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimService;->mUsimInfo:Lcom/android/internal/telephony/uicc/IUsimInfo;

    const/16 v4, 0x6f44

    invoke-interface {v3, v4, v1}, Lcom/android/internal/telephony/uicc/IUsimInfo;->WriteToSIM(I[B)[B

    .line 362
    :goto_1
    if-nez v2, :cond_0

    .line 363
    return-void

    .line 357
    :cond_2
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->encodeMdn(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimService;->resetBinder()Z

    move-result v2

    goto :goto_1
.end method

.method public writeEF_Roaming(Ljava/lang/String;)V
    .locals 5
    .parameter "roaming"

    .prologue
    .line 390
    const-string v3, "LGE_USIM"

    const-string v4, "[UsimService]writeEF_Roaming()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v1, 0x0

    .line 395
    .local v1, rawData:[B
    :cond_0
    const/4 v2, 0x0

    .line 397
    .local v2, reset:Z
    if-eqz p1, :cond_1

    :try_start_0
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 398
    :cond_1
    const-string v3, "00"

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 401
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UsimService;->mUsimInfo:Lcom/android/internal/telephony/uicc/IUsimInfo;

    const/16 v4, 0x2f50

    invoke-interface {v3, v4, v1}, Lcom/android/internal/telephony/uicc/IUsimInfo;->WriteToSIM(I[B)[B

    .line 405
    :goto_1
    if-nez v2, :cond_0

    .line 406
    return-void

    .line 400
    :cond_2
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimService;->resetBinder()Z

    move-result v2

    goto :goto_1
.end method
