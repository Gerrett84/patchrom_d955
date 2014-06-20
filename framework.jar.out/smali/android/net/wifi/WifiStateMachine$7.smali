.class Landroid/net/wifi/WifiStateMachine$7;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine;->startVZWSoftApWithConfig(Landroid/net/wifi/WifiVZWConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;

.field final synthetic val$config:Landroid/net/wifi/WifiVZWConfiguration;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiVZWConfiguration;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5117
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 5120
    :try_start_0
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startVZWSoftApWithConfig "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiVZWConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5122
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiVZWConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiVZWConfiguration;->getAuthType()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiVZWConfiguration;->wepTxKeyIndex:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiVZWConfiguration;->wepKeys1:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiVZWConfiguration;->wepKeys2:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    iget-object v7, v7, Landroid/net/wifi/WifiVZWConfiguration;->wepKeys3:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    iget-object v8, v8, Landroid/net/wifi/WifiVZWConfiguration;->wepKeys4:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    iget-object v9, v9, Landroid/net/wifi/WifiVZWConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    iget-boolean v10, v10, Landroid/net/wifi/WifiVZWConfiguration;->hiddenSSID:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    iget v11, v11, Landroid/net/wifi/WifiVZWConfiguration;->Channel:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    iget v12, v12, Landroid/net/wifi/WifiVZWConfiguration;->Maxscb:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    iget-object v13, v13, Landroid/net/wifi/WifiVZWConfiguration;->hw_mode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    iget-object v14, v14, Landroid/net/wifi/WifiVZWConfiguration;->CountryCode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    iget v15, v15, Landroid/net/wifi/WifiVZWConfiguration;->ap_isolate:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiVZWConfiguration;->ieee_mode:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiVZWConfiguration;->macaddr_acl:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiVZWConfiguration;->accept_mac_file:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/WifiVZWConfiguration;->deny_mac_file:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "wlan0"

    invoke-interface/range {v1 .. v21}, Landroid/os/INetworkManagementService;->startVZWAccessPoint(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5146
    :goto_0
    const-string v1, "WifiStateMachine"

    const-string v2, "Soft AP start successful"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5147
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x20087

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 5148
    :goto_1
    return-void

    .line 5126
    :catch_0
    move-exception v22

    .line 5127
    .local v22, e:Ljava/lang/Exception;
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in softap start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5129
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->stopVZWAccessPoint(Ljava/lang/String;)V

    .line 5133
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiVZWConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiVZWConfiguration;->getAuthType()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiVZWConfiguration;->wepTxKeyIndex:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiVZWConfiguration;->wepKeys1:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiVZWConfiguration;->wepKeys2:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    iget-object v7, v7, Landroid/net/wifi/WifiVZWConfiguration;->wepKeys3:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    iget-object v8, v8, Landroid/net/wifi/WifiVZWConfiguration;->wepKeys4:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    iget-object v9, v9, Landroid/net/wifi/WifiVZWConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    iget-boolean v10, v10, Landroid/net/wifi/WifiVZWConfiguration;->hiddenSSID:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    iget v11, v11, Landroid/net/wifi/WifiVZWConfiguration;->Channel:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    iget v12, v12, Landroid/net/wifi/WifiVZWConfiguration;->Maxscb:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    iget-object v13, v13, Landroid/net/wifi/WifiVZWConfiguration;->hw_mode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    iget-object v14, v14, Landroid/net/wifi/WifiVZWConfiguration;->CountryCode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    iget v15, v15, Landroid/net/wifi/WifiVZWConfiguration;->ap_isolate:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiVZWConfiguration;->ieee_mode:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiVZWConfiguration;->macaddr_acl:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiVZWConfiguration;->accept_mac_file:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$7;->val$config:Landroid/net/wifi/WifiVZWConfiguration;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/WifiVZWConfiguration;->deny_mac_file:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v20, v0

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "wlan0"

    invoke-interface/range {v1 .. v21}, Landroid/os/INetworkManagementService;->startVZWAccessPoint(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5138
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setCountryCode()V
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$9100(Landroid/net/wifi/WifiStateMachine;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 5140
    :catch_1
    move-exception v23

    .line 5141
    .local v23, e1:Ljava/lang/Exception;
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in softap re-start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5142
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x20088

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_1
.end method
