.class Lcom/android/lgesettings/UserDictionarySettings$UserDictionaryAddWordButtonListner;
.super Ljava/lang/Object;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/UserDictionarySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserDictionaryAddWordButtonListner"
.end annotation


# instance fields
.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/lgesettings/UserDictionarySettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/lgesettings/UserDictionarySettings;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings$UserDictionaryAddWordButtonListner;->mRef:Ljava/lang/ref/WeakReference;

    .line 75
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings$UserDictionaryAddWordButtonListner;->mRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings$UserDictionaryAddWordButtonListner;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/UserDictionarySettings$UserDictionaryAddWordButtonListner;->mRef:Ljava/lang/ref/WeakReference;

    .line 90
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 79
    iget-object v1, p0, Lcom/android/lgesettings/UserDictionarySettings$UserDictionaryAddWordButtonListner;->mRef:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    move-object v0, v2

    .line 80
    .local v0, userDictSetting:Lcom/android/lgesettings/UserDictionarySettings;
    :goto_0
    if-nez v0, :cond_1

    .line 84
    :goto_1
    return-void

    .line 79
    .end local v0           #userDictSetting:Lcom/android/lgesettings/UserDictionarySettings;
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/UserDictionarySettings$UserDictionaryAddWordButtonListner;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/UserDictionarySettings;

    move-object v0, v1

    goto :goto_0

    .line 83
    .restart local v0       #userDictSetting:Lcom/android/lgesettings/UserDictionarySettings;
    :cond_1
    #calls: Lcom/android/lgesettings/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v2, v2}, Lcom/android/lgesettings/UserDictionarySettings;->access$000(Lcom/android/lgesettings/UserDictionarySettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
