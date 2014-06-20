.class Lcom/android/lgesettings/deviceinfo/Status$MyHandler;
.super Landroid/os/Handler;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private mStatus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/lgesettings/deviceinfo/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/deviceinfo/Status;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 367
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 368
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/lgesettings/deviceinfo/Status$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    .line 369
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    .line 373
    iget-object v9, p0, Lcom/android/lgesettings/deviceinfo/Status$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/lgesettings/deviceinfo/Status;

    .line 374
    .local v7, status:Lcom/android/lgesettings/deviceinfo/Status;
    if-nez v7, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    goto :goto_0

    .line 382
    :sswitch_0
    invoke-virtual {v7}, Lcom/android/lgesettings/deviceinfo/Status;->updateSignalStrength()V

    goto :goto_0

    .line 386
    :sswitch_1
    #getter for: Lcom/android/lgesettings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    invoke-static {v7}, Lcom/android/lgesettings/deviceinfo/Status;->access$000(Lcom/android/lgesettings/deviceinfo/Status;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    .line 387
    .local v6, serviceState:Landroid/telephony/ServiceState;
    #calls: Lcom/android/lgesettings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V
    invoke-static {v7, v6}, Lcom/android/lgesettings/deviceinfo/Status;->access$100(Lcom/android/lgesettings/deviceinfo/Status;Landroid/telephony/ServiceState;)V

    goto :goto_0

    .line 391
    .end local v6           #serviceState:Landroid/telephony/ServiceState;
    :sswitch_2
    invoke-virtual {v7}, Lcom/android/lgesettings/deviceinfo/Status;->updateTimes()V

    .line 392
    const/16 v9, 0x1f4

    const-wide/16 v10, 0x3e8

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/lgesettings/deviceinfo/Status$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 397
    :sswitch_3
    const-string v9, "aboutphone # Status"

    const-string v10, "Status EVENT_WDC_LOADED "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    #getter for: Lcom/android/lgesettings/deviceinfo/Status;->mWdc:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/lgesettings/deviceinfo/Status;->access$200(Lcom/android/lgesettings/deviceinfo/Status;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    #getter for: Lcom/android/lgesettings/deviceinfo/Status;->retryCountToReadNv:I
    invoke-static {v7}, Lcom/android/lgesettings/deviceinfo/Status;->access$300(Lcom/android/lgesettings/deviceinfo/Status;)I

    move-result v9

    const/4 v10, 0x3

    if-gt v9, v10, :cond_2

    .line 400
    const-string v9, "aboutphone # Status"

    const-string v10, "Retry to get Wdc NV item "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    #calls: Lcom/android/lgesettings/deviceinfo/Status;->getWdcNvItem()V
    invoke-static {v7}, Lcom/android/lgesettings/deviceinfo/Status;->access$400(Lcom/android/lgesettings/deviceinfo/Status;)V

    .line 402
    invoke-static {v7}, Lcom/android/lgesettings/deviceinfo/Status;->access$308(Lcom/android/lgesettings/deviceinfo/Status;)I

    goto :goto_0

    .line 405
    :cond_2
    #getter for: Lcom/android/lgesettings/deviceinfo/Status;->mWdc:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/lgesettings/deviceinfo/Status;->access$200(Lcom/android/lgesettings/deviceinfo/Status;)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/lgesettings/deviceinfo/Status;->onWdcLoaded(Ljava/lang/String;)V
    invoke-static {v7, v9}, Lcom/android/lgesettings/deviceinfo/Status;->access$500(Lcom/android/lgesettings/deviceinfo/Status;Ljava/lang/String;)V

    goto :goto_0

    .line 410
    :sswitch_4
    const-string v9, "aboutphone # Status"

    const-string v10, "Status EVENT_LIFETIME_LOADED "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    #getter for: Lcom/android/lgesettings/deviceinfo/Status;->mLifeTimer:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/lgesettings/deviceinfo/Status;->access$600(Lcom/android/lgesettings/deviceinfo/Status;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 414
    :try_start_0
    #getter for: Lcom/android/lgesettings/deviceinfo/Status;->mLifeTimer:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/lgesettings/deviceinfo/Status;->access$600(Lcom/android/lgesettings/deviceinfo/Status;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    #calls: Lcom/android/lgesettings/deviceinfo/Status;->onLifeTimeLoaded(I)V
    invoke-static {v7, v9}, Lcom/android/lgesettings/deviceinfo/Status;->access$700(Lcom/android/lgesettings/deviceinfo/Status;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 415
    :catch_0
    move-exception v3

    .line 416
    .local v3, nfe:Ljava/lang/NumberFormatException;
    const/4 v9, 0x0

    #calls: Lcom/android/lgesettings/deviceinfo/Status;->onLifeTimeLoaded(I)V
    invoke-static {v7, v9}, Lcom/android/lgesettings/deviceinfo/Status;->access$700(Lcom/android/lgesettings/deviceinfo/Status;I)V

    goto :goto_0

    .line 419
    .end local v3           #nfe:Ljava/lang/NumberFormatException;
    :cond_3
    #getter for: Lcom/android/lgesettings/deviceinfo/Status;->retryCountToReadNv:I
    invoke-static {v7}, Lcom/android/lgesettings/deviceinfo/Status;->access$300(Lcom/android/lgesettings/deviceinfo/Status;)I

    move-result v9

    const/4 v10, 0x3

    if-gt v9, v10, :cond_0

    .line 420
    const-string v9, "0"

    #setter for: Lcom/android/lgesettings/deviceinfo/Status;->mLifeTimer:Ljava/lang/String;
    invoke-static {v7, v9}, Lcom/android/lgesettings/deviceinfo/Status;->access$602(Lcom/android/lgesettings/deviceinfo/Status;Ljava/lang/String;)Ljava/lang/String;

    .line 421
    const-string v9, "aboutphone # Status"

    const-string v10, "Retry to get lifetimer NV item "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    #calls: Lcom/android/lgesettings/deviceinfo/Status;->getLifetimeCallsNvItem()V
    invoke-static {v7}, Lcom/android/lgesettings/deviceinfo/Status;->access$800(Lcom/android/lgesettings/deviceinfo/Status;)V

    .line 423
    invoke-static {v7}, Lcom/android/lgesettings/deviceinfo/Status;->access$308(Lcom/android/lgesettings/deviceinfo/Status;)I

    goto/16 :goto_0

    .line 429
    :sswitch_5
    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg2:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/lgesettings/deviceinfo/Status;->onCHSIDLoaded(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v7, v9, v10}, Lcom/android/lgesettings/deviceinfo/Status;->access$900(Lcom/android/lgesettings/deviceinfo/Status;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 434
    :sswitch_6
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #calls: Lcom/android/lgesettings/deviceinfo/Status;->onLifeTimeDataLoaded(Ljava/lang/Object;)V
    invoke-static {v7, v9}, Lcom/android/lgesettings/deviceinfo/Status;->access$1000(Lcom/android/lgesettings/deviceinfo/Status;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 439
    :sswitch_7
    const-string v5, ""

    .line 440
    .local v5, ret:Ljava/lang/String;
    const-string v8, ""

    .line 441
    .local v8, temp:Ljava/lang/String;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 442
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 443
    .local v2, mSmsc:Ljava/lang/String;
    const-string v9, "aboutphone # Status"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mSmsc = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    if-nez v2, :cond_4

    .line 446
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/android/lgesettings/deviceinfo/Status;->updateSMSC(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 448
    :cond_4
    const-string v9, ","

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 449
    const-string v9, ","

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v8, v9, v10

    .line 453
    :goto_1
    const/4 v9, 0x1

    new-array v1, v9, [C

    const/4 v9, 0x0

    const/16 v10, 0x22

    aput-char v10, v1, v9

    .line 454
    .local v1, char_quote:[C
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    .line 456
    .local v4, quote:Ljava/lang/String;
    invoke-virtual {v8, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 457
    const/4 v9, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 458
    const-string v9, "aboutphone # Status"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ret = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_5
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_7

    if-eqz v2, :cond_7

    .line 462
    invoke-virtual {v7, v5}, Lcom/android/lgesettings/deviceinfo/Status;->updateSMSC(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 451
    .end local v1           #char_quote:[C
    .end local v4           #quote:Ljava/lang/String;
    :cond_6
    move-object v8, v2

    goto :goto_1

    .line 464
    .restart local v1       #char_quote:[C
    .restart local v4       #quote:Ljava/lang/String;
    :cond_7
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/android/lgesettings/deviceinfo/Status;->updateSMSC(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 380
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_1
        0x1f4 -> :sswitch_2
        0x258 -> :sswitch_3
        0x2bc -> :sswitch_4
        0x320 -> :sswitch_5
        0x384 -> :sswitch_6
        0x3ed -> :sswitch_7
    .end sparse-switch
.end method
