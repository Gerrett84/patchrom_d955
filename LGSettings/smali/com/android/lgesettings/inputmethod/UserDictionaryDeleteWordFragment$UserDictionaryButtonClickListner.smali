.class Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$UserDictionaryButtonClickListner;
.super Ljava/lang/Object;
.source "UserDictionaryDeleteWordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserDictionaryButtonClickListner"
.end annotation


# instance fields
.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)V
    .locals 1
    .parameter "delFrag"

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$UserDictionaryButtonClickListner;->mRef:Ljava/lang/ref/WeakReference;

    .line 77
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$UserDictionaryButtonClickListner;->mRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$UserDictionaryButtonClickListner;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$UserDictionaryButtonClickListner;->mRef:Ljava/lang/ref/WeakReference;

    .line 103
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$UserDictionaryButtonClickListner;->mRef:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 82
    .local v0, userDictDelWordFrag:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;
    :goto_0
    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 97
    :cond_0
    :goto_1
    return-void

    .line 81
    .end local v0           #userDictDelWordFrag:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment$UserDictionaryButtonClickListner;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;

    move-object v0, v1

    goto :goto_0

    .line 85
    .restart local v0       #userDictDelWordFrag:Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 87
    :sswitch_0
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$000(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 88
    #getter for: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$000(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1

    .line 92
    :sswitch_1
    #calls: Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->showDialog()V
    invoke-static {v0}, Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;->access$100(Lcom/android/lgesettings/inputmethod/UserDictionaryDeleteWordFragment;)V

    goto :goto_1

    .line 85
    :sswitch_data_0
    .sparse-switch
        0x7f0a0056 -> :sswitch_0
        0x7f0a0360 -> :sswitch_1
    .end sparse-switch
.end method
