.class Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$2;
.super Ljava/lang/Object;
.source "QuietModeAutoReplyEditActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field final synthetic val$filter:Lcom/android/lgesettings/quietmode/ByteLengthFilter;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;Lcom/android/lgesettings/quietmode/ByteLengthFilter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    iput-object p2, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$2;->val$filter:Lcom/android/lgesettings/quietmode/ByteLengthFilter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 76
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 80
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    iget-object v2, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$2;->val$filter:Lcom/android/lgesettings/quietmode/ByteLengthFilter;

    iget-object v3, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->access$200(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->getByteLength(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->len:I
    invoke-static {v1, v2}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->access$102(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;I)I

    .line 68
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->access$200(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 70
    .local v0, checkSpace:I
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->len:I
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->access$100(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)I

    move-result v1

    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mButtonSave:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->access$300(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity$2;->this$0:Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->mButtonSave:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;->access$300(Lcom/android/lgesettings/quietmode/QuietModeAutoReplyEditActivity;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
