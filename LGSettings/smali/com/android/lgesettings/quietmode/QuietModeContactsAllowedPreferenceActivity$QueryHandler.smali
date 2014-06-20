.class final Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuietModeContactsAllowedPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$QueryHandler$CatchingWorkerHandler;
    }
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 263
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 264
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    .end local p1
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 266
    return-void
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .parameter "looper"

    .prologue
    .line 260
    new-instance v0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$QueryHandler$CatchingWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$QueryHandler$CatchingWorkerHandler;-><init>(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$QueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 269
    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;

    .line 270
    .local v0, activity:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;
    if-eqz p3, :cond_0

    .line 271
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 272
    #getter for: Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->mAdapter:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->access$300(Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;)Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;

    move-result-object v1

    .line 273
    .local v1, allowedAdapter:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->setLoading(Z)V

    .line 274
    invoke-virtual {v1, p3}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 278
    .end local v1           #allowedAdapter:Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity$ContactsAllowedListAdapter;
    :goto_0
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeContactsAllowedPreferenceActivity;->invalidateOptionsMenu()V

    .line 282
    :cond_0
    return-void

    .line 276
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
