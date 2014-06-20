.class Lcom/android/lgesettings/ResetSettings$3;
.super Ljava/lang/Object;
.source "ResetSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/ResetSettings;->establishInitialState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/ResetSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/ResetSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/lgesettings/ResetSettings$3;->this$0:Lcom/android/lgesettings/ResetSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 160
    iget-object v0, p0, Lcom/android/lgesettings/ResetSettings$3;->this$0:Lcom/android/lgesettings/ResetSettings;

    #getter for: Lcom/android/lgesettings/ResetSettings;->mIsShowDlg:Z
    invoke-static {v0}, Lcom/android/lgesettings/ResetSettings;->access$200(Lcom/android/lgesettings/ResetSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    const-string v0, "ResetSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick : mIsShowDlg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/ResetSettings$3;->this$0:Lcom/android/lgesettings/ResetSettings;

    #getter for: Lcom/android/lgesettings/ResetSettings;->mIsShowDlg:Z
    invoke-static {v2}, Lcom/android/lgesettings/ResetSettings;->access$200(Lcom/android/lgesettings/ResetSettings;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/ResetSettings$3;->this$0:Lcom/android/lgesettings/ResetSettings;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/lgesettings/ResetSettings$3;->this$0:Lcom/android/lgesettings/ResetSettings;

    #getter for: Lcom/android/lgesettings/ResetSettings;->mContentView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/lgesettings/ResetSettings;->access$300(Lcom/android/lgesettings/ResetSettings;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080981

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08098c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/lgesettings/ResetSettings$3$2;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/ResetSettings$3$2;-><init>(Lcom/android/lgesettings/ResetSettings$3;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/lgesettings/ResetSettings$3$1;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/ResetSettings$3$1;-><init>(Lcom/android/lgesettings/ResetSettings$3;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/android/lgesettings/ResetSettings;->mConfirmDlg:Landroid/app/AlertDialog;

    .line 196
    iget-object v0, p0, Lcom/android/lgesettings/ResetSettings$3;->this$0:Lcom/android/lgesettings/ResetSettings;

    iget-object v0, v0, Lcom/android/lgesettings/ResetSettings;->mConfirmDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/lgesettings/ResetSettings$3;->this$0:Lcom/android/lgesettings/ResetSettings;

    #setter for: Lcom/android/lgesettings/ResetSettings;->mIsShowDlg:Z
    invoke-static {v0, v4}, Lcom/android/lgesettings/ResetSettings;->access$202(Lcom/android/lgesettings/ResetSettings;Z)Z

    .line 198
    iget-object v0, p0, Lcom/android/lgesettings/ResetSettings$3;->this$0:Lcom/android/lgesettings/ResetSettings;

    iget-object v0, v0, Lcom/android/lgesettings/ResetSettings;->mConfirmDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 199
    iget-object v0, p0, Lcom/android/lgesettings/ResetSettings$3;->this$0:Lcom/android/lgesettings/ResetSettings;

    iget-object v0, v0, Lcom/android/lgesettings/ResetSettings;->mConfirmDlg:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/lgesettings/ResetSettings$3$3;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/ResetSettings$3$3;-><init>(Lcom/android/lgesettings/ResetSettings$3;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method
