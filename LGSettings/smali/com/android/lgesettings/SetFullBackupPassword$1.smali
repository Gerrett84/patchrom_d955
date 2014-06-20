.class Lcom/android/lgesettings/SetFullBackupPassword$1;
.super Ljava/lang/Object;
.source "SetFullBackupPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/SetFullBackupPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/SetFullBackupPassword;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/SetFullBackupPassword;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/lgesettings/SetFullBackupPassword$1;->this$0:Lcom/android/lgesettings/SetFullBackupPassword;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 43
    iget-object v3, p0, Lcom/android/lgesettings/SetFullBackupPassword$1;->this$0:Lcom/android/lgesettings/SetFullBackupPassword;

    iget-object v3, v3, Lcom/android/lgesettings/SetFullBackupPassword;->mSet:Landroid/widget/Button;

    if-ne p1, v3, :cond_2

    .line 44
    iget-object v3, p0, Lcom/android/lgesettings/SetFullBackupPassword$1;->this$0:Lcom/android/lgesettings/SetFullBackupPassword;

    iget-object v3, v3, Lcom/android/lgesettings/SetFullBackupPassword;->mCurrentPw:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, curPw:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/lgesettings/SetFullBackupPassword$1;->this$0:Lcom/android/lgesettings/SetFullBackupPassword;

    iget-object v3, v3, Lcom/android/lgesettings/SetFullBackupPassword;->mNewPw:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, newPw:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/lgesettings/SetFullBackupPassword$1;->this$0:Lcom/android/lgesettings/SetFullBackupPassword;

    iget-object v3, v3, Lcom/android/lgesettings/SetFullBackupPassword;->mConfirmNewPw:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, confirmPw:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 50
    const-string v3, "SetFullBackupPassword"

    const-string v4, "password mismatch"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v3, p0, Lcom/android/lgesettings/SetFullBackupPassword$1;->this$0:Lcom/android/lgesettings/SetFullBackupPassword;

    const v4, 0x7f08073c

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 78
    .end local v0           #confirmPw:Ljava/lang/String;
    .end local v1           #curPw:Ljava/lang/String;
    .end local v2           #newPw:Ljava/lang/String;
    :goto_0
    return-void

    .line 59
    .restart local v0       #confirmPw:Ljava/lang/String;
    .restart local v1       #curPw:Ljava/lang/String;
    .restart local v2       #newPw:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/SetFullBackupPassword$1;->this$0:Lcom/android/lgesettings/SetFullBackupPassword;

    #calls: Lcom/android/lgesettings/SetFullBackupPassword;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v3, v1, v2}, Lcom/android/lgesettings/SetFullBackupPassword;->access$000(Lcom/android/lgesettings/SetFullBackupPassword;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    const-string v3, "SetFullBackupPassword"

    const-string v4, "password set successfully"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v3, p0, Lcom/android/lgesettings/SetFullBackupPassword$1;->this$0:Lcom/android/lgesettings/SetFullBackupPassword;

    const v4, 0x7f08073b

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 65
    iget-object v3, p0, Lcom/android/lgesettings/SetFullBackupPassword$1;->this$0:Lcom/android/lgesettings/SetFullBackupPassword;

    invoke-virtual {v3}, Lcom/android/lgesettings/SetFullBackupPassword;->finish()V

    goto :goto_0

    .line 68
    :cond_1
    const-string v3, "SetFullBackupPassword"

    const-string v4, "failure; password mismatch?"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v3, p0, Lcom/android/lgesettings/SetFullBackupPassword$1;->this$0:Lcom/android/lgesettings/SetFullBackupPassword;

    const v4, 0x7f08073d

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 73
    .end local v0           #confirmPw:Ljava/lang/String;
    .end local v1           #curPw:Ljava/lang/String;
    .end local v2           #newPw:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/lgesettings/SetFullBackupPassword$1;->this$0:Lcom/android/lgesettings/SetFullBackupPassword;

    iget-object v3, v3, Lcom/android/lgesettings/SetFullBackupPassword;->mCancel:Landroid/widget/Button;

    if-ne p1, v3, :cond_3

    .line 74
    iget-object v3, p0, Lcom/android/lgesettings/SetFullBackupPassword$1;->this$0:Lcom/android/lgesettings/SetFullBackupPassword;

    invoke-virtual {v3}, Lcom/android/lgesettings/SetFullBackupPassword;->finish()V

    goto :goto_0

    .line 76
    :cond_3
    const-string v3, "SetFullBackupPassword"

    const-string v4, "Click on unknown view"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
