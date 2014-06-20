.class public Lcom/android/internal/telephony/PhoneProxy$MyHandler;
.super Landroid/os/Handler;
.source "PhoneProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_GET_PREFERRED_NETWORK_TYPE:I = 0x0

.field private static final MESSAGE_SET_PREFERRED_NETWORK_TYPE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/PhoneProxy;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 1793
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneProxy$MyHandler;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/16 v8, 0xa

    const/4 v9, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 1798
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1856
    :goto_0
    return-void

    .line 1800
    :pswitch_0
    const-string v4, "MyHandler  MESSAGE_SET_PREFERRED_NETWORK_TYPE "

    #calls: Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneProxy;->access$000(Ljava/lang/String;)V

    .line 1802
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1803
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 1804
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy$MyHandler;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "preferred_network_mode"

    iget-object v8, p0, Lcom/android/internal/telephony/PhoneProxy$MyHandler;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget v8, v8, Lcom/android/internal/telephony/PhoneProxy;->setNetworkType:I

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1808
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MyHandler MESSAGE_SET_PREFERRED_NETWORK_TYPE setNetworkType "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/android/internal/telephony/PhoneProxy$MyHandler;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneProxy;->getPreferredNetworkMode()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneProxy;->access$000(Ljava/lang/String;)V

    .line 1813
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1814
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "SetNetWorkMode"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1815
    const-string v7, "exception"

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    move v4, v5

    :goto_2
    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1816
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy$MyHandler;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1817
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy$MyHandler;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iput-boolean v9, v4, Lcom/android/internal/telephony/PhoneProxy;->mIntentDuplicate:Z

    goto :goto_0

    .line 1810
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy$MyHandler;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget-object v7, p0, Lcom/android/internal/telephony/PhoneProxy$MyHandler;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneProxy;->mHandler:Lcom/android/internal/telephony/PhoneProxy$MyHandler;

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/PhoneProxy$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/PhoneProxy;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_1

    .restart local v1       #intent:Landroid/content/Intent;
    :cond_1
    move v4, v6

    .line 1815
    goto :goto_2

    .line 1820
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    const-string v4, "MyHandler  MESSAGE_GET_PREFERRED_NETWORK_TYPE "

    #calls: Lcom/android/internal/telephony/PhoneProxy;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneProxy;->access$000(Ljava/lang/String;)V

    .line 1821
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1822
    .restart local v0       #ar:Landroid/os/AsyncResult;
    const/16 v2, 0xa

    .line 1823
    .local v2, modemNetworkMode:I
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 1824
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    aget v2, v4, v5

    .line 1825
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy$MyHandler;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getPreferredNetworkMode()I

    move-result v3

    .line 1828
    .local v3, settingsNetworkMode:I
    if-ltz v2, :cond_3

    const/16 v4, 0xc

    if-gt v2, v4, :cond_3

    .line 1830
    if-eq v2, v3, :cond_2

    .line 1832
    move v3, v2

    .line 1834
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy$MyHandler;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "preferred_network_mode"

    invoke-static {v4, v7, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1849
    .end local v3           #settingsNetworkMode:I
    :cond_2
    :goto_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1850
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "GetNetWorkMode"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1851
    const-string v4, "networkmode"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1852
    const-string v4, "exception"

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_4

    :goto_4
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1853
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy$MyHandler;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1841
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v3       #settingsNetworkMode:I
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy$MyHandler;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "preferred_network_mode"

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1846
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy$MyHandler;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget-object v7, p0, Lcom/android/internal/telephony/PhoneProxy$MyHandler;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneProxy;->mHandler:Lcom/android/internal/telephony/PhoneProxy$MyHandler;

    invoke-virtual {v7, v9}, Lcom/android/internal/telephony/PhoneProxy$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_3

    .end local v3           #settingsNetworkMode:I
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_4
    move v5, v6

    .line 1852
    goto :goto_4

    .line 1798
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
