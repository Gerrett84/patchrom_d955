.class Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$2;
.super Ljava/lang/Object;
.source "ExceptScanListMultiSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$2;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$2;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mChkboxSelectAll:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$900(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$2;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->showDialog(I)V

    .line 432
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$2;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$2;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->deleteItemArray:[I
    invoke-static {v1}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$300(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->deleteAlertDlg([I)V

    goto :goto_0
.end method
