.class Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$1;
.super Landroid/content/BroadcastReceiver;
.source "HomeCloudIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/smartshare/homecloud/iface/HomeCloudIF;->regiterHomeCloudBroadcast(Landroid/content/Context;Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;)Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$listener:Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;


# direct methods
.method constructor <init>(Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$1;->val$listener:Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;

    .line 804
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 807
    if-eqz p2, :cond_0

    .line 808
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 809
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 810
    const-string v10, "com.lge.smartshare.homecloud.intent.action.create.account"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 811
    iget-object v10, p0, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$1;->val$listener:Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;

    invoke-virtual {v10}, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;->onHomecloudCreateAccount()V

    .line 874
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 812
    .restart local v0       #action:Ljava/lang/String;
    :cond_1
    const-string v10, "com.lge.smartshare.homecloud.intent.action.delete.account"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 813
    iget-object v10, p0, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$1;->val$listener:Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;

    invoke-virtual {v10}, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;->onHomecloudDeleteAccount()V

    goto :goto_0

    .line 814
    :cond_2
    const-string v10, "com.lge.smartshare.homecloud.intent.action.cloud.server.added"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 815
    const-string v10, "com.lge.smartshare.homecloud.intent.extra.cloud.server.id"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 816
    .local v3, id:Ljava/lang/String;
    const-string v10, "com.lge.smartshare.homecloud.intent.extra.cloud.server.neme"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 817
    .local v4, name:Ljava/lang/String;
    iget-object v10, p0, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$1;->val$listener:Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;

    invoke-virtual {v10, v3, v4}, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;->onHomecloudRAServerAdded(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 818
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    :cond_3
    const-string v10, "com.lge.smartshare.homecloud.intent.action.cloud.server.removed"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 819
    const-string v10, "com.lge.smartshare.homecloud.intent.extra.cloud.server.id"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 820
    .restart local v3       #id:Ljava/lang/String;
    iget-object v10, p0, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$1;->val$listener:Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;

    invoke-virtual {v10, v3}, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;->onHomecloudRAServerRemoved(Ljava/lang/String;)V

    goto :goto_0

    .line 821
    .end local v3           #id:Ljava/lang/String;
    :cond_4
    const-string v10, "com.lge.smartshare.homecloud.intent.action.disconnecting"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 822
    iget-object v10, p0, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$1;->val$listener:Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;

    invoke-virtual {v10}, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;->onHomecloudDisconnecting()V

    goto :goto_0

    .line 823
    :cond_5
    const-string v10, "com.lge.smartshare.homecloud.intent.action.disconnected"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 824
    const-string v10, "com.lge.smartshare.homecloud.intent.extra.cloud.disconnect.reason"

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 825
    .local v5, reason:I
    iget-object v10, p0, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$1;->val$listener:Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;

    invoke-virtual {v10, v5}, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;->onHomecloudDisconnected(I)V

    goto :goto_0

    .line 826
    .end local v5           #reason:I
    :cond_6
    const-string v10, "com.lge.smartshare.homecloud.intent.action.connecting"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 827
    iget-object v10, p0, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$1;->val$listener:Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;

    invoke-virtual {v10}, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;->onHomecloudConnecting()V

    goto :goto_0

    .line 828
    :cond_7
    const-string v10, "com.lge.smartshare.homecloud.intent.action.connected"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 829
    const-string v10, "com.lge.smartshare.homecloud.intent.extra.cloud.servers"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 830
    .local v1, datas:[Landroid/os/Parcelable;
    if-eqz v1, :cond_8

    array-length v10, v1

    if-lez v10, :cond_8

    .line 831
    array-length v10, v1

    const-class v11, [Lcom/lge/smartshare/homecloud/iface/DataCloudServer;

    invoke-static {v1, v10, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/lge/smartshare/homecloud/iface/DataCloudServer;

    .line 832
    .local v7, servers:[Lcom/lge/smartshare/homecloud/iface/DataCloudServer;
    iget-object v10, p0, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$1;->val$listener:Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;

    invoke-virtual {v10, v7}, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;->onHomecloudConnected([Lcom/lge/smartshare/homecloud/iface/DataCloudServer;)V

    goto/16 :goto_0

    .line 834
    .end local v7           #servers:[Lcom/lge/smartshare/homecloud/iface/DataCloudServer;
    :cond_8
    iget-object v10, p0, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$1;->val$listener:Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;->onHomecloudConnected([Lcom/lge/smartshare/homecloud/iface/DataCloudServer;)V

    goto/16 :goto_0

    .line 836
    .end local v1           #datas:[Landroid/os/Parcelable;
    :cond_9
    const-string v10, "com.lge.smartshare.homecloud.intent.action.ra.server.connecting"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 837
    iget-object v10, p0, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$1;->val$listener:Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;

    invoke-virtual {v10}, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;->onHomecloudRAServerConnecting()V

    goto/16 :goto_0

    .line 838
    :cond_a
    const-string v10, "com.lge.smartshare.homecloud.intent.action.ra.server.connected"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 839
    const-string v10, "com.lge.smartshare.homecloud.intent.extra.cloud.visible"

    invoke-virtual {p2, v10, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 840
    .local v9, visible:Z
    iget-object v10, p0, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$1;->val$listener:Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;

    invoke-virtual {v10, v9}, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;->onHomecloudRAServerConnected(Z)V

    goto/16 :goto_0

    .line 841
    .end local v9           #visible:Z
    :cond_b
    const-string v10, "com.lge.smartshare.homecloud.intent.action.show.info.changed"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 842
    const-string v10, "com.lge.smartshare.homecloud.intent.extra.cloud.show.type"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 843
    .local v8, types:[Ljava/lang/String;
    iget-object v10, p0, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$1;->val$listener:Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;

    invoke-virtual {v10, v8}, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;->onHomecloudShowInfoChanged([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 844
    .end local v8           #types:[Ljava/lang/String;
    :cond_c
    const-string v10, "com.lge.smartshare.homecloud.intent.action.mobile.network.changed"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 845
    const-string v10, "com.lge.smartshare.homecloud.intent.extra.cloud.enabled"

    invoke-virtual {p2, v10, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 846
    .local v2, enabled:Z
    iget-object v10, p0, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$1;->val$listener:Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;

    invoke-virtual {v10, v2}, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;->onHomecloudUseMobileNetworkChanged(Z)V

    goto/16 :goto_0

    .line 847
    .end local v2           #enabled:Z
    :cond_d
    const-string v10, "com.lge.smartshare.homecloud.intent.action.login.result"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 848
    const-string v10, "com.lge.smartshare.homecloud.intent.extra.cloud.result"

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 849
    .local v6, result:I
    iget-object v10, p0, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$1;->val$listener:Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;

    invoke-virtual {v10, v6}, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;->onHomecloudLoginResult(I)V

    goto/16 :goto_0

    .line 850
    .end local v6           #result:I
    :cond_e
    const-string v10, "com.lge.smartshare.homecloud.intent.action.login.retry.result"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 851
    const-string v10, "com.lge.smartshare.homecloud.intent.extra.cloud.result"

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 852
    .restart local v6       #result:I
    iget-object v10, p0, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$1;->val$listener:Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;

    invoke-virtual {v10, v6}, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;->onHomecloudLoginRetryResult(I)V

    goto/16 :goto_0

    .line 853
    .end local v6           #result:I
    :cond_f
    const-string v10, "com.lge.smartshare.homecloud.intent.action.logout.result"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 854
    const-string v10, "com.lge.smartshare.homecloud.intent.extra.cloud.result"

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 855
    .restart local v6       #result:I
    iget-object v10, p0, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$1;->val$listener:Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;

    invoke-virtual {v10, v6}, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;->onHomecloudLogoutResult(I)V

    goto/16 :goto_0

    .line 856
    .end local v6           #result:I
    :cond_10
    const-string v10, "com.lge.smartshare.homecloud.intent.action.select.server.result"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 857
    const-string v10, "com.lge.smartshare.homecloud.intent.extra.cloud.result"

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 858
    .restart local v6       #result:I
    iget-object v10, p0, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$1;->val$listener:Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;

    invoke-virtual {v10, v6}, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;->onHomecloudSelectServerResult(I)V

    goto/16 :goto_0

    .line 859
    .end local v6           #result:I
    :cond_11
    const-string v10, "com.lge.smartshare.homecloud.intent.action.request.email.key"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 860
    const-string v10, "com.lge.smartshare.homecloud.intent.extra.cloud.result"

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 861
    .restart local v6       #result:I
    iget-object v10, p0, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$1;->val$listener:Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;

    invoke-virtual {v10, v6}, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;->onHomecloudRequestEmailKeyResult(I)V

    goto/16 :goto_0

    .line 862
    .end local v6           #result:I
    :cond_12
    const-string v10, "com.lge.smartshare.homecloud.intent.action.send.email.key"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 863
    const-string v10, "com.lge.smartshare.homecloud.intent.extra.cloud.result"

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 864
    .restart local v6       #result:I
    iget-object v10, p0, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$1;->val$listener:Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;

    invoke-virtual {v10, v6}, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;->onHomecloudSendEmailKeyResult(I)V

    goto/16 :goto_0

    .line 865
    .end local v6           #result:I
    :cond_13
    const-string v10, "com.lge.smartshare.homecloud.intent.action.request.service.terms"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 866
    const-string v10, "com.lge.smartshare.homecloud.intent.extra.cloud.result"

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 867
    .restart local v6       #result:I
    iget-object v10, p0, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$1;->val$listener:Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;

    invoke-virtual {v10, v6}, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;->onHomecloudRequestServiceTermsResult(I)V

    goto/16 :goto_0

    .line 868
    .end local v6           #result:I
    :cond_14
    const-string v10, "com.lge.smartshare.homecloud.intent.action.agree.service.terms"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 869
    const-string v10, "com.lge.smartshare.homecloud.intent.extra.cloud.result"

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 870
    .restart local v6       #result:I
    iget-object v10, p0, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$1;->val$listener:Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;

    invoke-virtual {v10, v6}, Lcom/lge/smartshare/homecloud/iface/HomeCloudIF$IHomecloudListener;->onHomecloudAgreeServiceTermsResult(I)V

    goto/16 :goto_0
.end method
