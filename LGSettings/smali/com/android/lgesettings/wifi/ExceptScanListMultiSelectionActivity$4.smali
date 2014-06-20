.class Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$4;
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
    .line 455
    iput-object p1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$4;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 457
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$4;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mChkboxSelectAll:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$900(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 458
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$4;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #calls: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->AllCheckDeleteItemArray()V
    invoke-static {v1}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$1100(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)V

    .line 460
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$4;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    iget v1, v1, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mListViewCount:I

    if-ge v0, v1, :cond_1

    .line 461
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$4;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mCheckItemId:[Z
    invoke-static {v1}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$400(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)[Z

    move-result-object v1

    aput-boolean v2, v1, v0

    .line 460
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 464
    .end local v0           #i:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$4;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    iget v1, v1, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mListViewCount:I

    if-ge v0, v1, :cond_1

    .line 465
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$4;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mCheckItemId:[Z
    invoke-static {v1}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$400(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)[Z

    move-result-object v1

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 466
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$4;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->deleteItemArray:[I
    invoke-static {v1}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$300(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)[I

    move-result-object v1

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 469
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$4;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mAdapter:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$500(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->notifyDataSetChanged()V

    .line 470
    return-void
.end method
