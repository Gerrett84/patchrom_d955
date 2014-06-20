.class Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "UserDictionarySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/UserDictionarySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserDictionarySettingsDataSetObserver"
.end annotation


# instance fields
.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 95
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsDataSetObserver;->mRef:Ljava/lang/ref/WeakReference;

    .line 96
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsDataSetObserver;->mRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsDataSetObserver;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsDataSetObserver;->mRef:Ljava/lang/ref/WeakReference;

    .line 110
    :cond_0
    return-void
.end method

.method public onChanged()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 100
    iget-object v1, p0, Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsDataSetObserver;->mRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/lgesettings/UserDictionarySettings$UserDictionarySettingsDataSetObserver;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    move-object v0, v1

    .line 101
    .local v0, activity:Landroid/app/Activity;
    :goto_0
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 104
    :cond_0
    return-void

    .line 100
    .end local v0           #activity:Landroid/app/Activity;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
