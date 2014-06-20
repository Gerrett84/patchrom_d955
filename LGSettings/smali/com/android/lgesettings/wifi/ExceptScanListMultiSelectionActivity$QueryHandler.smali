.class final Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ExceptScanListMultiSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$QueryHandler$CatchingWorkerHandler;
    }
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 179
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    .end local p1
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 181
    return-void
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .parameter "looper"

    .prologue
    .line 174
    new-instance v0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$QueryHandler$CatchingWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$QueryHandler$CatchingWorkerHandler;-><init>(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$QueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 186
    const-string v2, "ExceptScanListMultiSelectionActivity"

    const-string v3, "onQueryComplete()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v2, p0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;

    .line 189
    .local v0, activity:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;
    if-eqz p3, :cond_0

    .line 191
    const-string v2, "ExceptScanListMultiSelectionActivity"

    const-string v3, "cursor not null()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 194
    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mAdapter:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$500(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;

    move-result-object v1

    .line 195
    .local v1, exceptScanMlistAdapter:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;
    invoke-virtual {v1, p3}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 200
    .end local v1           #exceptScanMlistAdapter:Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity$ExceptScanListMultiSelectCursorAdapter;
    :goto_0
    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->invalidateOptionsMenu()V

    .line 202
    #getter for: Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;->access$600(Lcom/android/lgesettings/wifi/ExceptScanListMultiSelectionActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 205
    :cond_0
    return-void

    .line 197
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
