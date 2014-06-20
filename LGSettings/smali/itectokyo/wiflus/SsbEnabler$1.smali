.class Litectokyo/wiflus/SsbEnabler$1;
.super Landroid/os/Handler;
.source "SsbEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Litectokyo/wiflus/SsbEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Litectokyo/wiflus/SsbEnabler;


# direct methods
.method constructor <init>(Litectokyo/wiflus/SsbEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Litectokyo/wiflus/SsbEnabler$1;->this$0:Litectokyo/wiflus/SsbEnabler;

    .line 123
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Litectokyo/wiflus/SsbEnabler$1;)Litectokyo/wiflus/SsbEnabler;
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler$1;->this$0:Litectokyo/wiflus/SsbEnabler;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 126
    const-string v2, "SsbEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SsbEnabler  handleMessage :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 130
    :pswitch_0
    const-string v2, "SsbEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MSG_DIRECT_STATE_CHNAGED - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Litectokyo/wiflus/SsbEnabler;->access$0()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Litectokyo/wiflus/SsbEnabler;->access$1()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Litectokyo/wiflus/SsbEnabler$1;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mDirectEnabled:Z
    invoke-static {v4}, Litectokyo/wiflus/SsbEnabler;->access$2(Litectokyo/wiflus/SsbEnabler;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {}, Litectokyo/wiflus/SsbEnabler;->access$0()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Litectokyo/wiflus/SsbEnabler;->access$1()Z

    move-result v2

    if-nez v2, :cond_1

    .line 132
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Litectokyo/wiflus/SsbEnabler$1$1;

    invoke-direct {v3, p0}, Litectokyo/wiflus/SsbEnabler$1$1;-><init>(Litectokyo/wiflus/SsbEnabler$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler$1;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Litectokyo/wiflus/SsbEnabler;->access$3(Litectokyo/wiflus/SsbEnabler;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler$1;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mDirectEnabled:Z
    invoke-static {v2}, Litectokyo/wiflus/SsbEnabler;->access$2(Litectokyo/wiflus/SsbEnabler;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 145
    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler$1;->this$0:Litectokyo/wiflus/SsbEnabler;

    iget-object v3, p0, Litectokyo/wiflus/SsbEnabler$1;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Litectokyo/wiflus/SsbEnabler;->access$4(Litectokyo/wiflus/SsbEnabler;)Landroid/content/Context;

    move-result-object v3

    #calls: Litectokyo/wiflus/SsbEnabler;->isInstalledWiFlus(Landroid/content/Context;)Z
    invoke-static {v2, v3}, Litectokyo/wiflus/SsbEnabler;->access$5(Litectokyo/wiflus/SsbEnabler;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler$1;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mUserWifiEnable:Z
    invoke-static {v2}, Litectokyo/wiflus/SsbEnabler;->access$6(Litectokyo/wiflus/SsbEnabler;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 147
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Litectokyo/wiflus/SsbEnabler$1$2;

    invoke-direct {v3, p0}, Litectokyo/wiflus/SsbEnabler$1$2;-><init>(Litectokyo/wiflus/SsbEnabler$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 155
    :cond_2
    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler$1;->this$0:Litectokyo/wiflus/SsbEnabler;

    #calls: Litectokyo/wiflus/SsbEnabler;->checkWFDProcess()Z
    invoke-static {v2}, Litectokyo/wiflus/SsbEnabler;->access$7(Litectokyo/wiflus/SsbEnabler;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 156
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Litectokyo/wiflus/SsbEnabler$1$3;

    invoke-direct {v3, p0}, Litectokyo/wiflus/SsbEnabler$1$3;-><init>(Litectokyo/wiflus/SsbEnabler$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    new-instance v1, Landroid/content/Intent;

    const-string v2, "WIFLUS_SWITCH_ENABLE_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v1, stateIntent:Landroid/content/Intent;
    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler$1;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Litectokyo/wiflus/SsbEnabler;->access$4(Litectokyo/wiflus/SsbEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 168
    .end local v1           #stateIntent:Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler$1;->this$0:Litectokyo/wiflus/SsbEnabler;

    #calls: Litectokyo/wiflus/SsbEnabler;->hasWiFlusProcess()Z
    invoke-static {v2}, Litectokyo/wiflus/SsbEnabler;->access$8(Litectokyo/wiflus/SsbEnabler;)Z

    move-result v0

    .line 170
    .local v0, isEnabledWiFlus:Z
    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler$1;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mIsUserStart:Z
    invoke-static {v2}, Litectokyo/wiflus/SsbEnabler;->access$9(Litectokyo/wiflus/SsbEnabler;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler$1;->this$0:Litectokyo/wiflus/SsbEnabler;

    #calls: Litectokyo/wiflus/SsbEnabler;->setSwitchChecked(Z)V
    invoke-static {v2, v0}, Litectokyo/wiflus/SsbEnabler;->access$10(Litectokyo/wiflus/SsbEnabler;Z)V

    .line 173
    if-eqz v0, :cond_0

    .line 174
    const-string v2, "SsbEnabler"

    const-string v3, " isEnabledWiFlus"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler$1;->this$0:Litectokyo/wiflus/SsbEnabler;

    #calls: Litectokyo/wiflus/SsbEnabler;->createClientInstance()V
    invoke-static {v2}, Litectokyo/wiflus/SsbEnabler;->access$11(Litectokyo/wiflus/SsbEnabler;)V

    goto/16 :goto_0

    .line 180
    .end local v0           #isEnabledWiFlus:Z
    :cond_4
    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler$1;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Litectokyo/wiflus/SsbEnabler;->access$3(Litectokyo/wiflus/SsbEnabler;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 181
    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler$1;->this$0:Litectokyo/wiflus/SsbEnabler;

    #calls: Litectokyo/wiflus/SsbEnabler;->hasWiFlusProcess()Z
    invoke-static {v2}, Litectokyo/wiflus/SsbEnabler;->access$8(Litectokyo/wiflus/SsbEnabler;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler$1;->this$0:Litectokyo/wiflus/SsbEnabler;

    iget-object v3, p0, Litectokyo/wiflus/SsbEnabler$1;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Litectokyo/wiflus/SsbEnabler;->access$4(Litectokyo/wiflus/SsbEnabler;)Landroid/content/Context;

    move-result-object v3

    #calls: Litectokyo/wiflus/SsbEnabler;->isInstalledWiFlus(Landroid/content/Context;)Z
    invoke-static {v2, v3}, Litectokyo/wiflus/SsbEnabler;->access$5(Litectokyo/wiflus/SsbEnabler;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler$1;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Litectokyo/wiflus/SsbEnabler;->access$3(Litectokyo/wiflus/SsbEnabler;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_0

    .line 192
    :pswitch_1
    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler$1;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Litectokyo/wiflus/SsbEnabler;->access$4(Litectokyo/wiflus/SsbEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Litectokyo/wiflus/service/ClientUtils;->isInternalSdcardExist(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Litectokyo/wiflus/SsbEnabler;->access$12(Z)V

    .line 193
    invoke-static {}, Litectokyo/wiflus/SsbEnabler;->access$0()Z

    move-result v2

    if-nez v2, :cond_5

    .line 194
    invoke-static {v5}, Litectokyo/wiflus/SsbEnabler;->access$13(Z)V

    .line 195
    invoke-static {}, Litectokyo/wiflus/service/ClientUtils;->isInternalSdcardExist()Z

    move-result v2

    invoke-static {v2}, Litectokyo/wiflus/SsbEnabler;->access$12(Z)V

    .line 197
    :cond_5
    invoke-static {}, Litectokyo/wiflus/service/ClientUtils;->isExternalSdcardExist()Z

    move-result v2

    invoke-static {v2}, Litectokyo/wiflus/SsbEnabler;->access$14(Z)V

    .line 198
    const-string v2, "SsbEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SsbEnabler  MSG_SDCARD_STATE_CHNAGED mInternalSD :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Litectokyo/wiflus/SsbEnabler;->access$0()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mExternalSD :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Litectokyo/wiflus/SsbEnabler;->access$1()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {}, Litectokyo/wiflus/SsbEnabler;->access$0()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Litectokyo/wiflus/SsbEnabler;->access$1()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 201
    :cond_6
    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler$1;->this$0:Litectokyo/wiflus/SsbEnabler;

    iget-object v3, p0, Litectokyo/wiflus/SsbEnabler$1;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Litectokyo/wiflus/SsbEnabler;->access$4(Litectokyo/wiflus/SsbEnabler;)Landroid/content/Context;

    move-result-object v3

    #calls: Litectokyo/wiflus/SsbEnabler;->isInstalledWiFlus(Landroid/content/Context;)Z
    invoke-static {v2, v3}, Litectokyo/wiflus/SsbEnabler;->access$5(Litectokyo/wiflus/SsbEnabler;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler$1;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Litectokyo/wiflus/SsbEnabler;->access$3(Litectokyo/wiflus/SsbEnabler;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_0

    .line 204
    :cond_7
    invoke-static {}, Litectokyo/wiflus/SsbEnabler;->access$0()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Litectokyo/wiflus/SsbEnabler;->access$1()Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler$1;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Litectokyo/wiflus/SsbEnabler;->access$3(Litectokyo/wiflus/SsbEnabler;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 206
    iget-object v2, p0, Litectokyo/wiflus/SsbEnabler$1;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Litectokyo/wiflus/SsbEnabler;->access$3(Litectokyo/wiflus/SsbEnabler;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
