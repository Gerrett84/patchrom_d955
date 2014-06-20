.class Lcom/android/internal/telephony/LGEDataConnectionTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "LGEDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGEDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/LGEDataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 248
    .local v5, action:Ljava/lang/String;
    const-string v23, "[LGE_DATA][LGEDCT] "

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "onReceive: action="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v23, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 630
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 252
    :cond_1
    const-string v23, "lge.test.limit_data_usage"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 253
    const-string v23, "[LGE_DATA][LGEDCT] "

    const-string v24, "[LGE_DATA] lge.test.limit_data_usage"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v23, "cause"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    const-string v24, "2"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->handleSKT_QA:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v25, ""

    const/16 v26, 0x2

    invoke-virtual/range {v23 .. v26}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    goto :goto_0

    .line 258
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->handleSKT_QA:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v25, ""

    const/16 v26, 0x5

    invoke-virtual/range {v23 .. v26}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    goto :goto_0

    .line 262
    :cond_3
    const-string v23, "com.skt.CALL_PROTECTION_STATUS_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 266
    const-string v23, "on_off"

    const/16 v24, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 268
    .local v12, enabled:Z
    const-string v23, "[LGE_DATA][LGEDCT] "

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[LGE_DATA] CALL_PROTECTION_STATUS_CHANGED ::"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    if-nez v12, :cond_4

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->setBlockPacketMenuProcess:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v25, ""

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    goto/16 :goto_0

    .line 277
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->setBlockPacketMenuProcess:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v25, ""

    const/16 v26, 0x1

    invoke-virtual/range {v23 .. v26}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 280
    .end local v12           #enabled:Z
    :cond_5
    const-string v23, "com.skt.CALL_PROTECTION_MENU_OFF"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 284
    const-string v23, "[LGE_DATA][LGEDCT] "

    const-string v24, "[LGE_DATA] com.skt.CALL_PROTECTION_MENU_OFF"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->setAlreadyAppUsedPacket:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v25, ""

    const/16 v26, 0x1

    invoke-virtual/range {v23 .. v26}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    goto/16 :goto_0

    .line 292
    :cond_6
    const-string v23, "com.skt.CALL_PROTECTION_MENU_ON"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 296
    const-string v23, "[LGE_DATA][LGEDCT] "

    const-string v24, "[LGE_DATA] com.skt.CALL_PROTECTION_MENU_ON"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_VOICE_PROTECTION_KR:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->setAlreadyAppUsedPacket:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v25, ""

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 305
    :cond_7
    const-string v23, "com.skt.test_intent"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 308
    const-string v23, "[LGE_DATA][LGEDCT] "

    const-string v24, "[LGE_DATA] com.skt.test_intent"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->functionForPacketList:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v25, ""

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 313
    :cond_8
    const-string v23, "com.kt.CALL_PROTECTION_CALL_START"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MULTIRAB_KT:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "multi_rab_setting"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    const/4 v9, 0x1

    .line 316
    .local v9, blockPacketMenuFlag:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_b

    :cond_9
    const/16 v22, 0x1

    .line 318
    .local v22, validCallState:Z
    :goto_2
    const-string v23, "LGE_DATA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "com.kt.CALL_PROTECTION_CALL_START settingFlag : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " callState : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    if-eqz v22, :cond_0

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/LGfeature;->myfeatureset:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "KTBASE"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    move/from16 v23, v0

    if-nez v23, :cond_0

    .line 321
    const-string v23, "LGE_DATA"

    const-string v24, "com.kt.CALL_PROTECTION_CALL_START"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v23

    const-string v24, "mms"

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v23

    const-string v24, "ims"

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v23

    const-string v24, "supl"

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v23

    const-string v24, "ktmultirab1"

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_c

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v24, v0

    const v25, 0x42035

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    const-wide/16 v25, 0xbb8

    invoke-virtual/range {v23 .. v26}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 315
    .end local v9           #blockPacketMenuFlag:Z
    .end local v22           #validCallState:Z
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 316
    .restart local v9       #blockPacketMenuFlag:Z
    :cond_b
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 332
    .restart local v22       #validCallState:Z
    :cond_c
    const-string v23, "LGE_DATA"

    const-string v24, "mFDTimeoutMaxCount 10sec"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v17, Landroid/content/Intent;

    const-string v23, "com.lge.ACTION_FD_TRIGGER_TIME_VAL_CHANGED"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    .local v17, sendIntent:Landroid/content/Intent;
    const-string v23, "value"

    const/16 v24, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 340
    .end local v9           #blockPacketMenuFlag:Z
    .end local v17           #sendIntent:Landroid/content/Intent;
    .end local v22           #validCallState:Z
    :cond_d
    const-string v23, "com.kt.CALL_PROTECTION_MENU_OFF"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MULTIRAB_KT:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 342
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "multi_rab_setting"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    const/4 v9, 0x1

    .line 343
    .restart local v9       #blockPacketMenuFlag:Z
    :goto_3
    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/LGfeature;->myfeatureset:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "KTBASE"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 344
    const-string v23, "LGE_DATA"

    const-string v24, "com.kt.CALL_PROTECTION_MENU_OFF"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->setAlreadyAppUsedPacket:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v25, ""

    const/16 v26, 0x1

    invoke-virtual/range {v23 .. v26}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 342
    .end local v9           #blockPacketMenuFlag:Z
    :cond_e
    const/4 v9, 0x0

    goto :goto_3

    .line 351
    :cond_f
    const-string v23, "com.kt.CALL_PROTECTION_MENU_ON"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MULTIRAB_KT:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 353
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "multi_rab_setting"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    const/4 v9, 0x1

    .line 354
    .restart local v9       #blockPacketMenuFlag:Z
    :goto_4
    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/LGfeature;->myfeatureset:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "KTBASE"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 355
    const-string v23, "LGE_DATA"

    const-string v24, "com.kt.CALL_PROTECTION_MENU_ON"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/internal/telephony/DataConnectionManager$FunctionName;->setAlreadyAppUsedPacket:Lcom/android/internal/telephony/DataConnectionManager$FunctionName;

    const-string v25, ""

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Lcom/android/internal/telephony/DataConnectionManager;->IntegrationAPI(Lcom/android/internal/telephony/DataConnectionManager$FunctionName;Ljava/lang/String;I)I

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v23

    const-string v24, "activity"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 359
    .local v6, am:Landroid/app/ActivityManager;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v19

    .line 360
    .local v19, taskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v19, :cond_0

    .line 362
    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    .line 363
    .local v20, topActivity:Landroid/content/ComponentName;
    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 364
    .local v14, name:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v21

    .line 365
    .local v21, topclassname:Ljava/lang/String;
    const-string v23, "LGE_DATA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "topActivity.getPackageName(); = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const-string v23, "LGE_DATA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "topActivity.getClassName(); = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string v23, "com.android.phone.InCallScreen"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v23

    const-string v24, "mms"

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v23

    const-string v24, "ktmultirab1"

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_11

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v24, v0

    const v25, 0x42035

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    const-wide/16 v25, 0xbb8

    invoke-virtual/range {v23 .. v26}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 353
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v9           #blockPacketMenuFlag:Z
    .end local v14           #name:Ljava/lang/String;
    .end local v19           #taskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v20           #topActivity:Landroid/content/ComponentName;
    .end local v21           #topclassname:Ljava/lang/String;
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 374
    .restart local v6       #am:Landroid/app/ActivityManager;
    .restart local v9       #blockPacketMenuFlag:Z
    .restart local v14       #name:Ljava/lang/String;
    .restart local v19       #taskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v20       #topActivity:Landroid/content/ComponentName;
    .restart local v21       #topclassname:Ljava/lang/String;
    :cond_11
    const-string v23, "LGE_DATA"

    const-string v24, "mFDTimeoutMaxCount 10sec"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    new-instance v17, Landroid/content/Intent;

    const-string v23, "com.lge.ACTION_FD_TRIGGER_TIME_VAL_CHANGED"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 376
    .restart local v17       #sendIntent:Landroid/content/Intent;
    const-string v23, "value"

    const/16 v24, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 381
    .end local v17           #sendIntent:Landroid/content/Intent;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    goto/16 :goto_0

    .line 389
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v9           #blockPacketMenuFlag:Z
    .end local v14           #name:Ljava/lang/String;
    .end local v19           #taskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v20           #topActivity:Landroid/content/ComponentName;
    .end local v21           #topclassname:Ljava/lang/String;
    :cond_13
    const-string v23, "com.lge.GprsAttachedIsTrue"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_15

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v23, v0

    const-string v24, "default"

    invoke-virtual/range {v23 .. v24}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/ApnContext;

    .line 395
    .local v11, defaultContext:Lcom/android/internal/telephony/ApnContext;
    const/4 v13, -0x1

    .line 396
    .local v13, gprsState:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v23

    if-eqz v23, :cond_14

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v13

    .line 401
    :cond_14
    const-string v23, "[LGE_DATA][LGEDCT] "

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[LGE_DATA] com.lge.GprsAttachedIsTrue / default : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " / gprsState : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_0

    if-nez v13, :cond_0

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/DataConnectionTracker;->onDataConnectionAttached()V

    goto/16 :goto_0

    .line 413
    .end local v11           #defaultContext:Lcom/android/internal/telephony/ApnContext;
    .end local v13           #gprsState:I
    :cond_15
    const-string v23, "android.intent.action.ANY_DATA_STATE"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_25

    .line 415
    const-string v23, "apnType"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 416
    .local v8, apnType:Ljava/lang/String;
    const-class v23, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v24, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 420
    .local v18, state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    if-nez v8, :cond_16

    .line 421
    const-string v23, "[LGE_DATA][LGEDCT] "

    const-string v24, "[LG_DATA] onReceive() ACTION_ANY_DATA_CONNECTION_STATE_CHANGED apnType is NULL"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v8, ""

    .line 426
    :cond_16
    const-string v23, "[LGE_DATA][LGEDCT] "

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[LGE_DATA] ACTION_ANY_DATA_CONNECTION_STATE_CHANGED : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "  type "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    sget-object v23, Lcom/android/internal/telephony/LGEDataConnectionTracker$2;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v24

    aget v23, v23, v24

    packed-switch v23, :pswitch_data_0

    goto/16 :goto_0

    .line 429
    :pswitch_1
    invoke-static {}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$200()[Z

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v24, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v24

    aget-boolean v23, v23, v24

    if-eqz v23, :cond_17

    .line 430
    invoke-static {}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$200()[Z

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v24, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v24

    const/16 v25, 0x0

    aput-boolean v25, v23, v24

    .line 432
    :cond_17
    const-string v23, "wifi"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_18

    .line 433
    const-string v23, "[LGE_DATA][LGEDCT] "

    const-string v24, "handleConnectionFailure: mIsWifiConnected = false"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    .line 437
    :cond_18
    const-string v23, "wifi"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_19

    .line 439
    const-string v23, "[LGE_DATA][LGEDCT] "

    const-string v24, "[LGE_DATA] handleDisconnect() : mJustIsWifiConnected = false"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/16 v23, 0x0

    sput-boolean v23, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mJustIsWifiConnected:Z

    .line 444
    :cond_19
    const-string v23, "bluetooth"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 446
    const-string v23, "[LGE_DATA][LGEDCT] "

    const-string v24, "[LGE_DATA] handleDisconnect() : mJustIsBTConnected = false"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/16 v23, 0x0

    sput-boolean v23, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mJustIsBTConnected:Z

    .line 452
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MMS_ON_DATA_DISABLED_SKT:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1b

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mConnMgr:Landroid/net/ConnectivityManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v24, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v10

    .line 456
    .local v10, checkInfo:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "mobile_data"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    if-nez v23, :cond_1b

    if-eqz v10, :cond_1b

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1b

    .line 459
    const-string v23, "[LGE_DATA][LGEDCT] "

    const-string v24, "[LGE_DATA] Remove default DNS not to allow other apps. to do DNS query Except for MMS."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    sget-boolean v23, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mJustIsWifiConnected:Z

    if-nez v23, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v24, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v24

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_MPDN_KR:Z

    move/from16 v24, v0

    #calls: Lcom/android/internal/telephony/LGEDataConnectionTracker;->deleteDefualt_DNS(Z)V
    invoke-static/range {v23 .. v24}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$300(Lcom/android/internal/telephony/LGEDataConnectionTracker;Z)V

    .line 467
    .end local v10           #checkInfo:Landroid/net/NetworkInfo;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/telephony/LGfeature;->EMERGENCY_SUPPORT:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1c

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mConnMgr:Landroid/net/ConnectivityManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v24, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    const/16 v24, 0x17

    invoke-virtual/range {v23 .. v24}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v10

    .line 471
    .restart local v10       #checkInfo:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "mobile_data"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    if-nez v23, :cond_1c

    if-eqz v10, :cond_1c

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1c

    .line 474
    const-string v23, "[LGE_DATA][LGEDCT] "

    const-string v24, "[LGE_DATA] Remove default DNS not to allow other apps. to do DNS query Except for Emergency."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    sget-boolean v23, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mJustIsWifiConnected:Z

    if-nez v23, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v24, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v24

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_MPDN_KR:Z

    move/from16 v24, v0

    #calls: Lcom/android/internal/telephony/LGEDataConnectionTracker;->deleteDefualt_DNS(Z)V
    invoke-static/range {v23 .. v24}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$300(Lcom/android/internal/telephony/LGEDataConnectionTracker;Z)V

    .line 481
    .end local v10           #checkInfo:Landroid/net/NetworkInfo;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_MPDN_KR:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1d

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "mobile_data"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    if-nez v23, :cond_1d

    .line 485
    const-string v23, "[LGE_DATA][LGEDCT] "

    const-string v24, "[LGE_DATA_DNS] Remove default DNS ."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    sget-boolean v23, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mJustIsWifiConnected:Z

    if-nez v23, :cond_1d

    sget-boolean v23, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mJustIsBTConnected:Z

    if-nez v23, :cond_1d

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v24, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v24

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_MPDN_KR:Z

    move/from16 v24, v0

    #calls: Lcom/android/internal/telephony/LGEDataConnectionTracker;->deleteDefualt_DNS(Z)V
    invoke-static/range {v23 .. v24}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$300(Lcom/android/internal/telephony/LGEDataConnectionTracker;Z)V

    .line 495
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_MPDN_UPLUS_INIT:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v23

    const/16 v24, 0xc

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 498
    const-string v3, "8.8.8.8"

    .line 499
    .local v3, DNS_DEFAULT_SERVER1:Ljava/lang/String;
    const-string v4, "8.8.4.4"

    .line 501
    .local v4, DNS_DEFAULT_SERVER2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mConnMgr:Landroid/net/ConnectivityManager;

    move-object/from16 v23, v0

    const/16 v24, 0x12

    invoke-virtual/range {v23 .. v24}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v15

    .line 504
    .local v15, newLp:Landroid/net/LinkProperties;
    if-eqz v15, :cond_0

    .line 505
    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 506
    invoke-static {v4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto/16 :goto_0

    .line 522
    .end local v3           #DNS_DEFAULT_SERVER1:Ljava/lang/String;
    .end local v4           #DNS_DEFAULT_SERVER2:Ljava/lang/String;
    .end local v15           #newLp:Landroid/net/LinkProperties;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_TOAST_ON_WIFI_OFF_UPLUS:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_UIAPP_PAYPOPUP_KT:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1f

    .line 523
    :cond_1e
    const-string v23, "wifi"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1f

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    .line 525
    const-string v23, "[LGE_DATA][LGEDCT] "

    const-string v24, "[LG_DATA]WIFI IS CONNECTED"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_1f
    const-string v23, "wifi"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_20

    .line 532
    const-string v23, "[LGE_DATA][LGEDCT] "

    const-string v24, "[LGE_DATA] handleConnect() : mJustIsWifiConnected = true"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/16 v23, 0x1

    sput-boolean v23, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mJustIsWifiConnected:Z

    .line 536
    :cond_20
    const-string v23, "bluetooth"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_21

    .line 538
    const-string v23, "[LGE_DATA][LGEDCT] "

    const-string v24, "[LGE_DATA] handleconnect() : mJustIsBTConnected = true"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/16 v23, 0x1

    sput-boolean v23, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mJustIsBTConnected:Z

    .line 544
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_DATACONNECTION_MMS_ON_DATA_DISABLED_SKT:Z

    move/from16 v23, v0

    if-eqz v23, :cond_22

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mConnMgr:Landroid/net/ConnectivityManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v24, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v10

    .line 548
    .restart local v10       #checkInfo:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "mobile_data"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    if-nez v23, :cond_22

    if-eqz v10, :cond_22

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_22

    .line 551
    const-string v23, "[LGE_DATA][LGEDCT] "

    const-string v24, "[LGE_DATA] Remove default DNS not to allow other apps. to do DNS query Except for MMS."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    sget-boolean v23, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mJustIsWifiConnected:Z

    if-nez v23, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v24, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v24

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_MPDN_KR:Z

    move/from16 v24, v0

    #calls: Lcom/android/internal/telephony/LGEDataConnectionTracker;->deleteDefualt_DNS(Z)V
    invoke-static/range {v23 .. v24}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$300(Lcom/android/internal/telephony/LGEDataConnectionTracker;Z)V

    .line 559
    .end local v10           #checkInfo:Landroid/net/NetworkInfo;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/telephony/LGfeature;->EMERGENCY_SUPPORT:Z

    move/from16 v23, v0

    if-eqz v23, :cond_23

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mConnMgr:Landroid/net/ConnectivityManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v24, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    const/16 v24, 0x17

    invoke-virtual/range {v23 .. v24}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v10

    .line 563
    .restart local v10       #checkInfo:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "mobile_data"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    if-nez v23, :cond_23

    if-eqz v10, :cond_23

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_23

    .line 566
    const-string v23, "[LGE_DATA][LGEDCT] "

    const-string v24, "[LGE_DATA] Remove default DNS not to allow other apps. to do DNS query Except for Emergency."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    sget-boolean v23, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mJustIsWifiConnected:Z

    if-nez v23, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v24, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v24

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_MPDN_KR:Z

    move/from16 v24, v0

    #calls: Lcom/android/internal/telephony/LGEDataConnectionTracker;->deleteDefualt_DNS(Z)V
    invoke-static/range {v23 .. v24}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$300(Lcom/android/internal/telephony/LGEDataConnectionTracker;Z)V

    .line 573
    .end local v10           #checkInfo:Landroid/net/NetworkInfo;
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_MPDN_KR:Z

    move/from16 v23, v0

    if-eqz v23, :cond_24

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "mobile_data"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    if-nez v23, :cond_24

    .line 577
    sget-boolean v23, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mJustIsWifiConnected:Z

    if-nez v23, :cond_24

    sget-boolean v23, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mJustIsBTConnected:Z

    if-nez v23, :cond_24

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v24, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v24

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_MPDN_KR:Z

    move/from16 v24, v0

    #calls: Lcom/android/internal/telephony/LGEDataConnectionTracker;->deleteDefualt_DNS(Z)V
    invoke-static/range {v23 .. v24}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$300(Lcom/android/internal/telephony/LGEDataConnectionTracker;Z)V

    .line 587
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$100(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/telephony/LGfeature;->LGP_DATA_PDN_MPDN_UPLUS_INIT:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v23

    const/16 v24, 0xc

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 590
    const-string v3, "8.8.8.8"

    .line 591
    .restart local v3       #DNS_DEFAULT_SERVER1:Ljava/lang/String;
    const-string v4, "8.8.4.4"

    .line 593
    .restart local v4       #DNS_DEFAULT_SERVER2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker;->mConnMgr:Landroid/net/ConnectivityManager;

    move-object/from16 v23, v0

    const/16 v24, 0x12

    invoke-virtual/range {v23 .. v24}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v15

    .line 596
    .restart local v15       #newLp:Landroid/net/LinkProperties;
    if-eqz v15, :cond_0

    .line 597
    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 598
    invoke-static {v4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto/16 :goto_0

    .line 609
    .end local v3           #DNS_DEFAULT_SERVER1:Ljava/lang/String;
    .end local v4           #DNS_DEFAULT_SERVER2:Ljava/lang/String;
    .end local v8           #apnType:Ljava/lang/String;
    .end local v15           #newLp:Landroid/net/LinkProperties;
    .end local v18           #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_25
    const-string v23, "android.intent.action.DATA_CONNECTION_FAILED"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_26

    .line 611
    const-string v23, "apnType"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 612
    .restart local v8       #apnType:Ljava/lang/String;
    const-string v23, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 613
    .local v16, reason:Ljava/lang/String;
    const-string v23, "apn"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 614
    .local v7, apnName:Ljava/lang/String;
    const-string v23, "[LGE_DATA][LGEDCT] "

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[LGE_DATA] ACTION_DATA_CONNECTION_FAILED (type) : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-static {}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$200()[Z

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v24, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v24

    const/16 v25, 0x0

    aput-boolean v25, v23, v24

    .line 618
    const-string v23, "wifi"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 619
    const-string v23, "[LGE_DATA][LGEDCT] "

    const-string v24, "handleConnectionFailure: mIsWifiConnected = false"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/telephony/LGEDataConnectionTracker;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->access$000(Lcom/android/internal/telephony/LGEDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    goto/16 :goto_0

    .line 625
    .end local v7           #apnName:Ljava/lang/String;
    .end local v8           #apnType:Ljava/lang/String;
    .end local v16           #reason:Ljava/lang/String;
    :cond_26
    const-string v23, "ACTIVATE_SETUP_DATA_CALL"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/LGEDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/LGEDataConnectionTracker;

    move-object/from16 v24, v0

    const v25, 0x4203e

    const-string v26, "dataEnabled"

    invoke-virtual/range {v24 .. v26}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/internal/telephony/LGEDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
