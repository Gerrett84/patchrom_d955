.class Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14$1;
.super Ljava/lang/Object;
.source "VibrateCreateActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14;

.field final synthetic val$dialog:Landroid/content/DialogInterface;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14;Landroid/content/DialogInterface;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 789
    iput-object p1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14$1;->this$1:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14;

    iput-object p2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14$1;->val$dialog:Landroid/content/DialogInterface;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    const/4 v2, -0x1

    .line 819
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14$1;->this$1:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14;

    iget-object v0, v0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$3000(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->isDuplicateName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14$1;->this$1:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14;

    iget-object v0, v0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$3000(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->iskeyBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14$1;->this$1:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14;

    iget-object v0, v0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$3000(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;)Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->isAllSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14$1;->val$dialog:Landroid/content/DialogInterface;

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 825
    :goto_0
    return-void

    .line 823
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14$1;->val$dialog:Landroid/content/DialogInterface;

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 806
    const-string v0, "VibrateCreateActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beforeTextChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 793
    const-string v1, "VibrateCreateActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTextChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14$1;->this$1:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14;

    iget-object v1, v1, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14;->this$0:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14$1;->this$1:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14;

    iget-object v2, v2, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14;->val$filter:Lcom/android/lgesettings/quietmode/ByteLengthFilter;

    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14$1;->this$1:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14;

    iget-object v3, v3, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/quietmode/ByteLengthFilter;->getByteLength(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->len:I
    invoke-static {v1, v2}, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;->access$3402(Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity;I)I

    .line 796
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14$1;->this$1:Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14;

    iget-object v1, v1, Lcom/android/lgesettings/vibratecreation/VibrateCreateActivity$14;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 798
    .local v0, checkSpace:I
    const-string v1, "VibrateCreateActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTextChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    return-void
.end method
