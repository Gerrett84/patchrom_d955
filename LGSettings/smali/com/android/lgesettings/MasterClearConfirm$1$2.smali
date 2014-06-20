.class Lcom/android/lgesettings/MasterClearConfirm$1$2;
.super Ljava/lang/Object;
.source "MasterClearConfirm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/MasterClearConfirm$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/MasterClearConfirm$1;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/MasterClearConfirm$1;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/lgesettings/MasterClearConfirm$1$2;->this$1:Lcom/android/lgesettings/MasterClearConfirm$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    .line 127
    new-instance v0, Lcom/android/lgesettings/PreProcess;

    invoke-direct {v0}, Lcom/android/lgesettings/PreProcess;-><init>()V

    .line 128
    .local v0, pp:Lcom/android/lgesettings/PreProcess;
    invoke-virtual {v0}, Lcom/android/lgesettings/PreProcess;->execute()V

    .line 131
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "i_vzw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "batman_vzw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "cayman"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/MasterClearConfirm$1$2;->this$1:Lcom/android/lgesettings/MasterClearConfirm$1;

    iget-object v1, v1, Lcom/android/lgesettings/MasterClearConfirm$1;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/lgesettings/MasterClearConfirm;->sendCDMAFactoryRequest()V

    .line 165
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/MasterClearConfirm$1$2;->this$1:Lcom/android/lgesettings/MasterClearConfirm$1;

    iget-object v1, v1, Lcom/android/lgesettings/MasterClearConfirm$1;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    #setter for: Lcom/android/lgesettings/MasterClearConfirm;->mIsSelectOK:Z
    invoke-static {v1, v4}, Lcom/android/lgesettings/MasterClearConfirm;->access$102(Lcom/android/lgesettings/MasterClearConfirm;Z)Z

    .line 166
    const-string v1, "MasterClearConfirm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick() : mIsSelectOK ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/MasterClearConfirm$1$2;->this$1:Lcom/android/lgesettings/MasterClearConfirm$1;

    iget-object v3, v3, Lcom/android/lgesettings/MasterClearConfirm$1;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    #getter for: Lcom/android/lgesettings/MasterClearConfirm;->mIsSelectOK:Z
    invoke-static {v3}, Lcom/android/lgesettings/MasterClearConfirm;->access$100(Lcom/android/lgesettings/MasterClearConfirm;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void

    .line 136
    :cond_1
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LRA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TRF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/MasterClearConfirm$1$2;->this$1:Lcom/android/lgesettings/MasterClearConfirm$1;

    iget-object v1, v1, Lcom/android/lgesettings/MasterClearConfirm$1;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/lgesettings/MasterClearConfirm;->sendCDMAFactoryRequest()V

    .line 143
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/MasterClearConfirm$1$2;->this$1:Lcom/android/lgesettings/MasterClearConfirm$1;

    iget-object v1, v1, Lcom/android/lgesettings/MasterClearConfirm$1;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    #getter for: Lcom/android/lgesettings/MasterClearConfirm;->mContentView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/lgesettings/MasterClearConfirm;->access$300(Lcom/android/lgesettings/MasterClearConfirm;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/lge/OverlayUtils;->initNV(Landroid/content/Context;)V

    .line 144
    iget-object v1, p0, Lcom/android/lgesettings/MasterClearConfirm$1$2;->this$1:Lcom/android/lgesettings/MasterClearConfirm$1;

    iget-object v1, v1, Lcom/android/lgesettings/MasterClearConfirm$1;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    #getter for: Lcom/android/lgesettings/MasterClearConfirm;->mEraseExternal:Z
    invoke-static {v1}, Lcom/android/lgesettings/MasterClearConfirm;->access$400(Lcom/android/lgesettings/MasterClearConfirm;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 145
    iget-object v1, p0, Lcom/android/lgesettings/MasterClearConfirm$1$2;->this$1:Lcom/android/lgesettings/MasterClearConfirm$1;

    iget-object v1, v1, Lcom/android/lgesettings/MasterClearConfirm$1;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    #calls: Lcom/android/lgesettings/MasterClearConfirm;->nativeCodeFormatSdCard()V
    invoke-static {v1}, Lcom/android/lgesettings/MasterClearConfirm;->access$500(Lcom/android/lgesettings/MasterClearConfirm;)V

    .line 147
    iget-object v1, p0, Lcom/android/lgesettings/MasterClearConfirm$1$2;->this$1:Lcom/android/lgesettings/MasterClearConfirm$1;

    iget-object v1, v1, Lcom/android/lgesettings/MasterClearConfirm$1;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    #setter for: Lcom/android/lgesettings/MasterClearConfirm;->mErasingSdCard:Z
    invoke-static {v1, v4}, Lcom/android/lgesettings/MasterClearConfirm;->access$602(Lcom/android/lgesettings/MasterClearConfirm;Z)Z

    goto/16 :goto_0

    .line 158
    :cond_4
    iget-object v1, p0, Lcom/android/lgesettings/MasterClearConfirm$1$2;->this$1:Lcom/android/lgesettings/MasterClearConfirm$1;

    iget-object v1, v1, Lcom/android/lgesettings/MasterClearConfirm$1;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/lgesettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
