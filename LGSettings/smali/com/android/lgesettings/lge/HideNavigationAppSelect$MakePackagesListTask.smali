.class Lcom/android/lgesettings/lge/HideNavigationAppSelect$MakePackagesListTask;
.super Landroid/os/AsyncTask;
.source "HideNavigationAppSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lge/HideNavigationAppSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MakePackagesListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHideNavigation:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/lgesettings/lge/HideNavigationAppSelect;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/lgesettings/lge/HideNavigationAppSelect;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/lge/HideNavigationAppSelect;Lcom/android/lgesettings/lge/HideNavigationAppSelect;)V
    .locals 1
    .parameter
    .parameter "mHideNavi"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$MakePackagesListTask;->this$0:Lcom/android/lgesettings/lge/HideNavigationAppSelect;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 110
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$MakePackagesListTask;->mHideNavigation:Ljava/lang/ref/WeakReference;

    .line 111
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/lge/HideNavigationAppSelect$MakePackagesListTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$MakePackagesListTask;->mHideNavigation:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;

    .line 124
    .local v0, mHideNavi:Lcom/android/lgesettings/lge/HideNavigationAppSelect;
    if-eqz v0, :cond_0

    .line 125
    #calls: Lcom/android/lgesettings/lge/HideNavigationAppSelect;->makingIgnoreList()V
    invoke-static {v0}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->access$000(Lcom/android/lgesettings/lge/HideNavigationAppSelect;)V

    .line 127
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/lge/HideNavigationAppSelect$MakePackagesListTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/lgesettings/lge/HideNavigationAppSelect$MakePackagesListTask;->mHideNavigation:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/lge/HideNavigationAppSelect;

    .line 133
    .local v0, mHideNavi:Lcom/android/lgesettings/lge/HideNavigationAppSelect;
    if-eqz v0, :cond_0

    .line 134
    #calls: Lcom/android/lgesettings/lge/HideNavigationAppSelect;->makingList()V
    invoke-static {v0}, Lcom/android/lgesettings/lge/HideNavigationAppSelect;->access$100(Lcom/android/lgesettings/lge/HideNavigationAppSelect;)V

    .line 137
    :cond_0
    return-void
.end method
