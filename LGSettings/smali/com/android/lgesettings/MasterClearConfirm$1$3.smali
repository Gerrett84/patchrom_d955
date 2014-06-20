.class Lcom/android/lgesettings/MasterClearConfirm$1$3;
.super Ljava/lang/Object;
.source "MasterClearConfirm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 182
    iput-object p1, p0, Lcom/android/lgesettings/MasterClearConfirm$1$3;->this$1:Lcom/android/lgesettings/MasterClearConfirm$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/lgesettings/MasterClearConfirm$1$3;->this$1:Lcom/android/lgesettings/MasterClearConfirm$1;

    iget-object v0, v0, Lcom/android/lgesettings/MasterClearConfirm$1;->this$0:Lcom/android/lgesettings/MasterClearConfirm;

    const/4 v1, 0x0

    #setter for: Lcom/android/lgesettings/MasterClearConfirm;->mIsShowDlg:Z
    invoke-static {v0, v1}, Lcom/android/lgesettings/MasterClearConfirm;->access$002(Lcom/android/lgesettings/MasterClearConfirm;Z)Z

    .line 186
    return-void
.end method
