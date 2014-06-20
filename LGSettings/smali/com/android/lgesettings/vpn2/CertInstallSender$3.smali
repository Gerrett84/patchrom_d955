.class Lcom/android/lgesettings/vpn2/CertInstallSender$3;
.super Ljava/lang/Object;
.source "CertInstallSender.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/vpn2/CertInstallSender;->keystoreUserDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/vpn2/CertInstallSender;

.field final synthetic val$notShowAgain:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/vpn2/CertInstallSender;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/lgesettings/vpn2/CertInstallSender$3;->this$0:Lcom/android/lgesettings/vpn2/CertInstallSender;

    iput-object p2, p0, Lcom/android/lgesettings/vpn2/CertInstallSender$3;->val$notShowAgain:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v3, 0x1

    .line 130
    iget-object v1, p0, Lcom/android/lgesettings/vpn2/CertInstallSender$3;->val$notShowAgain:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/lgesettings/vpn2/CertInstallSender$3;->this$0:Lcom/android/lgesettings/vpn2/CertInstallSender;

    iget-object v2, p0, Lcom/android/lgesettings/vpn2/CertInstallSender$3;->this$0:Lcom/android/lgesettings/vpn2/CertInstallSender;

    #getter for: Lcom/android/lgesettings/vpn2/CertInstallSender;->preferences:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/lgesettings/vpn2/CertInstallSender;->access$100(Lcom/android/lgesettings/vpn2/CertInstallSender;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    #setter for: Lcom/android/lgesettings/vpn2/CertInstallSender;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1, v2}, Lcom/android/lgesettings/vpn2/CertInstallSender;->access$002(Lcom/android/lgesettings/vpn2/CertInstallSender;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    .line 132
    iget-object v1, p0, Lcom/android/lgesettings/vpn2/CertInstallSender$3;->this$0:Lcom/android/lgesettings/vpn2/CertInstallSender;

    #getter for: Lcom/android/lgesettings/vpn2/CertInstallSender;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/lgesettings/vpn2/CertInstallSender;->access$000(Lcom/android/lgesettings/vpn2/CertInstallSender;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "keystore_user_check"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 133
    iget-object v1, p0, Lcom/android/lgesettings/vpn2/CertInstallSender$3;->this$0:Lcom/android/lgesettings/vpn2/CertInstallSender;

    #getter for: Lcom/android/lgesettings/vpn2/CertInstallSender;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/lgesettings/vpn2/CertInstallSender;->access$000(Lcom/android/lgesettings/vpn2/CertInstallSender;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 135
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.credentials.INSTALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/lgesettings/vpn2/CertInstallSender$3;->this$0:Lcom/android/lgesettings/vpn2/CertInstallSender;

    invoke-virtual {v1, v0, v3}, Lcom/android/lgesettings/vpn2/CertInstallSender;->startActivityForResult(Landroid/content/Intent;I)V

    .line 137
    return-void
.end method
