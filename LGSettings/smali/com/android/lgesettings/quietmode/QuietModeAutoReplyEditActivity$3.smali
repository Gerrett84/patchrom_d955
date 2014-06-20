.class Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$3;
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
    .line 84
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$3;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 86
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$3;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->access$200(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$3;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->access$400(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$3;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->access$400(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$3;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->access$500(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$3;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->access$500(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$3;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->access$200(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$3;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->access$200(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$3;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    invoke-virtual {v1}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080e07

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$3;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_mode_auto_reply_message_original"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$3;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quietmode_auto_reply_message"

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$3;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->access$200(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 101
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$3;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->finish()V

    .line 103
    :cond_2
    return-void

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$3;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_mode_auto_reply_message_original"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
