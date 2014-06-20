.class Litectokyo/wiflus/SsbEnabler$9;
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
    iput-object p1, p0, Litectokyo/wiflus/SsbEnabler$9;->this$0:Litectokyo/wiflus/SsbEnabler;

    .line 914
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 918
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$9;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Litectokyo/wiflus/SsbEnabler;->access$3(Litectokyo/wiflus/SsbEnabler;)Landroid/widget/Switch;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 919
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$9;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Litectokyo/wiflus/SsbEnabler;->access$3(Litectokyo/wiflus/SsbEnabler;)Landroid/widget/Switch;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 921
    new-instance v0, Landroid/content/Intent;

    const-string v1, "WIFLUS_SWITCH_ENABLE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 922
    .local v0, stateIntent:Landroid/content/Intent;
    iget-object v1, p0, Litectokyo/wiflus/SsbEnabler$9;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Litectokyo/wiflus/SsbEnabler;->access$4(Litectokyo/wiflus/SsbEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 923
    return-void
.end method
