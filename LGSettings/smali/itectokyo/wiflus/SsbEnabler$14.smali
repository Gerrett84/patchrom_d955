.class Litectokyo/wiflus/SsbEnabler$14;
.super Ljava/lang/Object;
.source "SsbEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Litectokyo/wiflus/SsbEnabler;->showDialogs(ILandroid/os/Bundle;)V
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
    iput-object p1, p0, Litectokyo/wiflus/SsbEnabler$14;->this$0:Litectokyo/wiflus/SsbEnabler;

    .line 994
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x1

    .line 998
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$14;->this$0:Litectokyo/wiflus/SsbEnabler;

    #calls: Litectokyo/wiflus/SsbEnabler;->saveNetworkState()V
    invoke-static {v1}, Litectokyo/wiflus/SsbEnabler;->access$41(Litectokyo/wiflus/SsbEnabler;)V

    .line 1001
    new-instance v0, Landroid/content/Intent;

    const-string v1, "WIFLUS_SWITCH_ON_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1002
    .local v0, stateIntent:Landroid/content/Intent;
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$14;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Litectokyo/wiflus/SsbEnabler;->access$4(Litectokyo/wiflus/SsbEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1003
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$14;->this$0:Litectokyo/wiflus/SsbEnabler;

    #calls: Litectokyo/wiflus/SsbEnabler;->setUserWifiEnable(Z)Z
    invoke-static {v1, v2}, Litectokyo/wiflus/SsbEnabler;->access$42(Litectokyo/wiflus/SsbEnabler;Z)Z

    .line 1004
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$14;->this$0:Litectokyo/wiflus/SsbEnabler;

    #setter for: Litectokyo/wiflus/SsbEnabler;->mUserWifiEnable:Z
    invoke-static {v1, v2}, Litectokyo/wiflus/SsbEnabler;->access$43(Litectokyo/wiflus/SsbEnabler;Z)V

    .line 1005
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$14;->this$0:Litectokyo/wiflus/SsbEnabler;

    #setter for: Litectokyo/wiflus/SsbEnabler;->mUserP2pEnable:Z
    invoke-static {v1, v2}, Litectokyo/wiflus/SsbEnabler;->access$30(Litectokyo/wiflus/SsbEnabler;Z)V

    .line 1006
    return-void
.end method
