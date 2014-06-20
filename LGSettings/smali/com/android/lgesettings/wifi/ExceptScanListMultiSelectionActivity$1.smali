.class Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$1;
.super Landroid/os/Handler;
.source "ExceptScanListMultiSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;
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
    .line 111
    iput-object p1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$1;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 114
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_2

    .line 116
    const-string v1, "ExceptScanListMultiSelectionActivity"

    const-string v2, "UPDATE_VIEW"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$1;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$000(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$1;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mNoMessagesView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$100(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 124
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$1;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$1;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$000(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    iput v2, v1, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mListViewCount:I

    .line 126
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$1;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mCompleteRead:Z
    invoke-static {v1}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$200(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    const-string v1, "ExceptScanListMultiSelectionActivity"

    const-string v2, " initialize "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$1;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$1;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    iget v2, v2, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mListViewCount:I

    new-array v2, v2, [I

    #setter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->deleteItemArray:[I
    invoke-static {v1, v2}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$302(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;[I)[I

    .line 131
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$1;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$1;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    iget v2, v2, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mListViewCount:I

    new-array v2, v2, [Z

    #setter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mCheckItemId:[Z
    invoke-static {v1, v2}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$402(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;[Z)[Z

    .line 132
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$1;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    iget v1, v1, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mListViewCount:I

    if-ge v0, v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$1;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->deleteItemArray:[I
    invoke-static {v1}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$300(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)[I

    move-result-object v1

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 134
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$1;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mCheckItemId:[Z
    invoke-static {v1}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$400(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)[Z

    move-result-object v1

    aput-boolean v3, v1, v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 121
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$1;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mNoMessagesView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$100(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$1;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->finish()V

    goto :goto_0

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$1;->this$0:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    const/4 v2, 0x1

    #setter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mCompleteRead:Z
    invoke-static {v1, v2}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$202(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;Z)Z

    .line 139
    :cond_2
    return-void
.end method
