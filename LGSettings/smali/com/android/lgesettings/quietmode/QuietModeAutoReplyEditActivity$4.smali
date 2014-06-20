.class Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$4;
.super Ljava/lang/Object;
.source "QuietModeAutoReplyEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$4;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$4;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->access$500(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$4;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->access$500(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$4;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->access$200(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$4;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->access$400(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$4;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->access$400(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$4;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->finish()V

    .line 116
    return-void
.end method
