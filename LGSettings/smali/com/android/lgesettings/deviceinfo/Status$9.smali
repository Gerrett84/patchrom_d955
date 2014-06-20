.class Lcom/android/lgesettings/deviceinfo/Status$9;
.super Ljava/lang/Thread;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/deviceinfo/Status;->putDataLifeTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/deviceinfo/Status;)V
    .locals 0
    .parameter

    .prologue
    .line 1528
    iput-object p1, p0, Lcom/android/lgesettings/deviceinfo/Status$9;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 1530
    const-wide/16 v4, 0x0

    .line 1531
    .local v4, iLifeTimeData:J
    const/4 v10, 0x0

    .line 1534
    .local v10, sLifeTimeData:Ljava/lang/String;
    const/16 v12, 0x1f40

    :try_start_0
    invoke-static {v12}, Lcom/android/lgesettings/lge/OverlayUtils;->LgSvcCmd_getCmdValue(I)Ljava/lang/String;

    move-result-object v10

    .line 1535
    const-string v12, "aboutphone # Status"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "status:: GET CMD_LIFETIME_DATA : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    if-eqz v10, :cond_1

    .line 1538
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    int-to-long v4, v12

    .line 1545
    :goto_0
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v12

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v14

    add-long v8, v12, v14

    .line 1546
    .local v8, iTrafficStats:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/deviceinfo/Status$9;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    invoke-virtual {v12}, Lcom/android/lgesettings/deviceinfo/Status;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {}, Lcom/android/lgesettings/lge/OverlayUtils;->LifeTime_NvBackup()Ljava/lang/String;

    move-result-object v13

    const-wide/16 v14, 0x0

    invoke-static {v12, v13, v14, v15}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 1547
    .local v2, iLastWrittenBytes:J
    const-string v12, "aboutphone # Status"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "iLastWrittenBytes = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    cmp-long v12, v2, v8

    if-lez v12, :cond_0

    .line 1550
    const-string v12, "aboutphone # Status"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "status:: TrafficStats was reset: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    const-string v12, "aboutphone # Status"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "status:: Reset LastWrittenBytes from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " to 0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/deviceinfo/Status$9;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    invoke-virtual {v12}, Lcom/android/lgesettings/deviceinfo/Status;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {}, Lcom/android/lgesettings/lge/OverlayUtils;->LifeTime_NvBackup()Ljava/lang/String;

    move-result-object v13

    const-wide/16 v14, 0x0

    invoke-static {v12, v13, v14, v15}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1555
    :cond_0
    sub-long v12, v8, v2

    const-wide/16 v14, 0x400

    div-long v6, v12, v14

    .line 1557
    .local v6, iNewKBytes:J
    const-string v12, "aboutphone # Status"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "status:: current TrafficStats: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    const-string v12, "aboutphone # Status"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "status:: current LastWrittenBytes: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    const-string v12, "aboutphone # Status"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "status:: current NewKBytes: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " (KB)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/deviceinfo/Status$9;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    #getter for: Lcom/android/lgesettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/lgesettings/deviceinfo/Status;->access$1800(Lcom/android/lgesettings/deviceinfo/Status;)Landroid/os/Handler;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/lgesettings/deviceinfo/Status$9;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    #getter for: Lcom/android/lgesettings/deviceinfo/Status;->mHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/lgesettings/deviceinfo/Status;->access$1800(Lcom/android/lgesettings/deviceinfo/Status;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x384

    add-long v15, v4, v6

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1563
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-lez v12, :cond_2

    .line 1564
    add-long v12, v4, v6

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 1565
    const/16 v12, 0x1f41

    invoke-static {v12, v10}, Lcom/android/lgesettings/lge/OverlayUtils;->LgSvcCmd_setCmdValue(ILjava/lang/String;)I

    .line 1566
    const-string v12, "aboutphone # Status"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "status:: PUT CMD_LIFETIME_DATA : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/lgesettings/deviceinfo/Status$9;->this$0:Lcom/android/lgesettings/deviceinfo/Status;

    invoke-virtual {v12}, Lcom/android/lgesettings/deviceinfo/Status;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {}, Lcom/android/lgesettings/lge/OverlayUtils;->LifeTime_NvBackup()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v8, v9}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1573
    :goto_1
    const-string v12, "aboutphone # Status"

    const-string v13, "status:: putDataLifeTime(), EXIT"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    .end local v2           #iLastWrittenBytes:J
    .end local v6           #iNewKBytes:J
    .end local v8           #iTrafficStats:J
    :goto_2
    return-void

    .line 1540
    :cond_1
    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 1541
    .local v11, zero:Ljava/lang/String;
    const-string v12, "aboutphone # Status"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "status:: SET init Value(0) to LifeTimeData NV : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    const/16 v12, 0x1f41

    invoke-static {v12, v11}, Lcom/android/lgesettings/lge/OverlayUtils;->LgSvcCmd_setCmdValue(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1574
    .end local v11           #zero:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1575
    .local v1, e:Ljava/lang/Exception;
    const-string v12, "aboutphone # Status"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "status::putDataLifeTime fail "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1570
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #iLastWrittenBytes:J
    .restart local v6       #iNewKBytes:J
    .restart local v8       #iTrafficStats:J
    :cond_2
    :try_start_1
    const-string v12, "aboutphone # Status"

    const-string v13, "status:: Skip NV Update because new traffic is small"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
