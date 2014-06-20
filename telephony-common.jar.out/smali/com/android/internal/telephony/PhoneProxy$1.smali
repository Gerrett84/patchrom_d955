.class Lcom/android/internal/telephony/PhoneProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/PhoneProxy;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 1744
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x4

    const/4 v3, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1746
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1747
    .local v0, action:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPreferredNetworkBroadcastReceiver  mIntentDuplicate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget-boolean v2, v2, Lcom/android/internal/telephony/PhoneProxy;->mIntentDuplicate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneProxy;->access$000(Ljava/lang/String;)V

    .line 1748
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget-boolean v1, v1, Lcom/android/internal/telephony/PhoneProxy;->mIntentDuplicate:Z

    if-eqz v1, :cond_9

    const-string v1, "SetNetworkMode_KDDI_LTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1749
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    const-string v2, "NetworkType"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkType:I

    .line 1750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPreferredNetworkBroadcastReceiver  ACTION_PREFERRED_NETWORK_SET setPreferredNetworkType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget v2, v2, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneProxy;->access$000(Ljava/lang/String;)V

    .line 1751
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget v1, v1, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkType:I

    packed-switch v1, :pswitch_data_0

    .line 1782
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPreferredNetworkBroadcastReceiver  settingsNetworkMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget v2, v2, Lcom/android/internal/telephony/PhoneProxy;->setNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneProxy;->access$000(Ljava/lang/String;)V

    .line 1783
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget v2, v2, Lcom/android/internal/telephony/PhoneProxy;->setNetworkType:I

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneProxy;->mHandler:Lcom/android/internal/telephony/PhoneProxy$MyHandler;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/PhoneProxy$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1784
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iput-boolean v4, v1, Lcom/android/internal/telephony/PhoneProxy;->mIntentDuplicate:Z

    .line 1790
    :cond_1
    :goto_1
    return-void

    .line 1753
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getPreferredNetworkMode()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/PhoneProxy;->settingsNetworkMode:I

    .line 1755
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget v1, v1, Lcom/android/internal/telephony/PhoneProxy;->settingsNetworkMode:I

    if-ne v1, v7, :cond_2

    .line 1756
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    const/16 v2, 0xa

    iput v2, v1, Lcom/android/internal/telephony/PhoneProxy;->setNetworkType:I

    goto :goto_0

    .line 1757
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget v1, v1, Lcom/android/internal/telephony/PhoneProxy;->settingsNetworkMode:I

    if-eq v1, v6, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget v1, v1, Lcom/android/internal/telephony/PhoneProxy;->settingsNetworkMode:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget v1, v1, Lcom/android/internal/telephony/PhoneProxy;->settingsNetworkMode:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    .line 1760
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    const/16 v2, 0x8

    iput v2, v1, Lcom/android/internal/telephony/PhoneProxy;->setNetworkType:I

    goto :goto_0

    .line 1761
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget v1, v1, Lcom/android/internal/telephony/PhoneProxy;->settingsNetworkMode:I

    if-eq v1, v3, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget v1, v1, Lcom/android/internal/telephony/PhoneProxy;->settingsNetworkMode:I

    if-eq v1, v5, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget v1, v1, Lcom/android/internal/telephony/PhoneProxy;->settingsNetworkMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1764
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    const/16 v2, 0x9

    iput v2, v1, Lcom/android/internal/telephony/PhoneProxy;->setNetworkType:I

    goto :goto_0

    .line 1769
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getPreferredNetworkMode()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/PhoneProxy;->settingsNetworkMode:I

    .line 1771
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget v1, v1, Lcom/android/internal/telephony/PhoneProxy;->settingsNetworkMode:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_6

    .line 1772
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iput v7, v1, Lcom/android/internal/telephony/PhoneProxy;->setNetworkType:I

    goto/16 :goto_0

    .line 1773
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget v1, v1, Lcom/android/internal/telephony/PhoneProxy;->settingsNetworkMode:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_7

    .line 1774
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iput v6, v1, Lcom/android/internal/telephony/PhoneProxy;->setNetworkType:I

    goto/16 :goto_0

    .line 1775
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget v1, v1, Lcom/android/internal/telephony/PhoneProxy;->settingsNetworkMode:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_8

    .line 1776
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iput v3, v1, Lcom/android/internal/telephony/PhoneProxy;->setNetworkType:I

    goto/16 :goto_0

    .line 1777
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget v1, v1, Lcom/android/internal/telephony/PhoneProxy;->settingsNetworkMode:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    goto/16 :goto_1

    .line 1786
    :cond_9
    const-string v1, "GetNetworkMode_KDDI_LTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1787
    const-string v1, "mPreferredNetworkBroadcastReceiver  ACTION_PREFERRED_NETWORK_GET "

    #calls: Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneProxy;->access$000(Ljava/lang/String;)V

    .line 1788
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneProxy;->mHandler:Lcom/android/internal/telephony/PhoneProxy$MyHandler;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/PhoneProxy$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->getPreferredNetworkType(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 1751
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
