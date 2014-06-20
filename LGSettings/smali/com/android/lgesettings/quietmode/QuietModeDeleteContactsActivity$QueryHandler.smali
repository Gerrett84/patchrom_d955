.class final Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuietModeDeleteContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QueryHandler$CatchingWorkerHandler;
    }
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 211
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    .end local p1
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 213
    return-void
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .parameter "looper"

    .prologue
    .line 206
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QueryHandler$CatchingWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QueryHandler$CatchingWorkerHandler;-><init>(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 217
    const-string v2, "QuietModeDeleteContactsActivity"

    const-string v3, "onQueryComplete()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;

    .line 219
    .local v0, activity:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;
    if-eqz p3, :cond_0

    .line 220
    const-string v2, "QuietModeDeleteContactsActivity"

    const-string v3, "cursor not null()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 222
    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mAdapter:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$400(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;

    move-result-object v1

    .line 223
    .local v1, quickMessageAdapter:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;
    invoke-virtual {v1, p3}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 227
    .end local v1           #quickMessageAdapter:Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity$QuickMessageCursorAdapter;
    :goto_0
    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->invalidateOptionsMenu()V

    .line 229
    #getter for: Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;->access$500(Lcom/android/lgesettings/quietmode/QuietModeDeleteContactsActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 232
    :cond_0
    return-void

    .line 225
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
