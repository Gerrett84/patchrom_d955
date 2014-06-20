.class Lcom/android/lgesettings/MasterClearConfirm$1;
.super Ljava/lang/Object;
.source "MasterClearConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/MasterClearConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/MasterClearConfirm;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/MasterClearConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/lgesettings/MasterClearConfirm$1;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 102
    invoke-static {}, Lcom/android/lgesettings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/MasterClearConfirm$1;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    #getter for: Lcom/android/lgesettings/MasterClearConfirm;->mIsShowDlg:Z
    invoke-static {v1}, Lcom/android/lgesettings/MasterClearConfirm;->access$000(Lcom/android/lgesettings/MasterClearConfirm;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    const-string v1, "MasterClearConfirm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick : mIsShowDlg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/MasterClearConfirm$1;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    #getter for: Lcom/android/lgesettings/MasterClearConfirm;->mIsShowDlg:Z
    invoke-static {v3}, Lcom/android/lgesettings/MasterClearConfirm;->access$000(Lcom/android/lgesettings/MasterClearConfirm;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mIsSelectOK = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/MasterClearConfirm$1;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    #getter for: Lcom/android/lgesettings/MasterClearConfirm;->mIsSelectOK:Z
    invoke-static {v3}, Lcom/android/lgesettings/MasterClearConfirm;->access$100(Lcom/android/lgesettings/MasterClearConfirm;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/MasterClearConfirm$1;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    const v2, 0x7f080986

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, strText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/lgesettings/MasterClearConfirm$1;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    #calls: Lcom/android/lgesettings/MasterClearConfirm;->checkIntegralBattery()Z
    invoke-static {v1}, Lcom/android/lgesettings/MasterClearConfirm;->access$200(Lcom/android/lgesettings/MasterClearConfirm;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 115
    iget-object v1, p0, Lcom/android/lgesettings/MasterClearConfirm$1;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    const v2, 0x7f080987

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/MasterClearConfirm;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/MasterClearConfirm$1;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/lgesettings/MasterClearConfirm$1;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    #getter for: Lcom/android/lgesettings/MasterClearConfirm;->mContentView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/lgesettings/MasterClearConfirm;->access$300(Lcom/android/lgesettings/MasterClearConfirm;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080981

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/lgesettings/MasterClearConfirm$1$2;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/MasterClearConfirm$1$2;-><init>(Lcom/android/lgesettings/MasterClearConfirm$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/lgesettings/MasterClearConfirm$1$1;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/MasterClearConfirm$1$1;-><init>(Lcom/android/lgesettings/MasterClearConfirm$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/android/lgesettings/MasterClearConfirm;->mConfirmDlg:Landroid/app/AlertDialog;

    .line 179
    iget-object v1, p0, Lcom/android/lgesettings/MasterClearConfirm$1;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    iget-object v1, v1, Lcom/android/lgesettings/MasterClearConfirm;->mConfirmDlg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/lgesettings/MasterClearConfirm$1;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    #setter for: Lcom/android/lgesettings/MasterClearConfirm;->mIsShowDlg:Z
    invoke-static {v1, v5}, Lcom/android/lgesettings/MasterClearConfirm;->access$002(Lcom/android/lgesettings/MasterClearConfirm;Z)Z

    .line 181
    iget-object v1, p0, Lcom/android/lgesettings/MasterClearConfirm$1;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    iget-object v1, v1, Lcom/android/lgesettings/MasterClearConfirm;->mConfirmDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 182
    iget-object v1, p0, Lcom/android/lgesettings/MasterClearConfirm$1;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    iget-object v1, v1, Lcom/android/lgesettings/MasterClearConfirm;->mConfirmDlg:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/lgesettings/MasterClearConfirm$1$3;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/MasterClearConfirm$1$3;-><init>(Lcom/android/lgesettings/MasterClearConfirm$1;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0
.end method
