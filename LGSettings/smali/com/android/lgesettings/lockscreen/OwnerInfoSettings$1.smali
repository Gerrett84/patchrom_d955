.class Lcom/android/lgesettings/lockscreen/OwnerInfoSettings$1;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings$1;->this$0:Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 91
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings$1;->this$0:Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;

    invoke-virtual {v2}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 93
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings$1;->this$0:Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;

    #getter for: Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;->access$000(Lcom/android/lgesettings/lockscreen/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v1

    .line 94
    .local v1, result:Z
    return-void
.end method
