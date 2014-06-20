.class Lcom/android/lgesettings/vpn2/VpnSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "VpnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/vpn2/VpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/vpn2/VpnSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/vpn2/VpnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/lgesettings/vpn2/VpnSettings$1;->this$0:Lcom/android/lgesettings/vpn2/VpnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 122
    if-nez p2, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, action:Ljava/lang/String;
    const-string v2, "VpnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onReceive] mInfoReceiver getAction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v2, "com.lge.vpn.friendlyvpn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/lgesettings/vpn2/VpnSettings;->FEATURE_FRIENDLY_VPN:Z

    if-eqz v2, :cond_3

    .line 130
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnSettings$1;->this$0:Lcom/android/lgesettings/vpn2/VpnSettings;

    #getter for: Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;
    invoke-static {v2}, Lcom/android/lgesettings/vpn2/VpnSettings;->access$000(Lcom/android/lgesettings/vpn2/VpnSettings;)Lcom/android/lgesettings/vpn2/VpnDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 132
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 133
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnSettings$1;->this$0:Lcom/android/lgesettings/vpn2/VpnSettings;

    const-string v3, "Type"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    #setter for: Lcom/android/lgesettings/vpn2/VpnSettings;->mType:I
    invoke-static {v2, v3}, Lcom/android/lgesettings/vpn2/VpnSettings;->access$102(Lcom/android/lgesettings/vpn2/VpnSettings;I)I

    .line 134
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnSettings$1;->this$0:Lcom/android/lgesettings/vpn2/VpnSettings;

    const-string v3, "CertKey"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/lgesettings/vpn2/VpnSettings;->InstalledKey:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/lgesettings/vpn2/VpnSettings;->access$202(Lcom/android/lgesettings/vpn2/VpnSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnSettings$1;->this$0:Lcom/android/lgesettings/vpn2/VpnSettings;

    #getter for: Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;
    invoke-static {v2}, Lcom/android/lgesettings/vpn2/VpnSettings;->access$000(Lcom/android/lgesettings/vpn2/VpnSettings;)Lcom/android/lgesettings/vpn2/VpnDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/vpn2/VpnSettings$1;->this$0:Lcom/android/lgesettings/vpn2/VpnSettings;

    #getter for: Lcom/android/lgesettings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v3}, Lcom/android/lgesettings/vpn2/VpnSettings;->access$300(Lcom/android/lgesettings/vpn2/VpnSettings;)Landroid/security/KeyStore;

    move-result-object v3

    const-string v4, "USRCERT_"

    invoke-virtual {v3, v4}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/vpn2/VpnSettings$1;->this$0:Lcom/android/lgesettings/vpn2/VpnSettings;

    #getter for: Lcom/android/lgesettings/vpn2/VpnSettings;->mType:I
    invoke-static {v4}, Lcom/android/lgesettings/vpn2/VpnSettings;->access$100(Lcom/android/lgesettings/vpn2/VpnSettings;)I

    move-result v4

    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnSettings$1;->this$0:Lcom/android/lgesettings/vpn2/VpnSettings;

    #getter for: Lcom/android/lgesettings/vpn2/VpnSettings;->InstalledKey:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/lgesettings/vpn2/VpnSettings;->access$200(Lcom/android/lgesettings/vpn2/VpnSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/lgesettings/vpn2/VpnDialog;->initUserCert([Ljava/lang/String;ILjava/lang/String;)V

    .line 137
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnSettings$1;->this$0:Lcom/android/lgesettings/vpn2/VpnSettings;

    #getter for: Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;
    invoke-static {v2}, Lcom/android/lgesettings/vpn2/VpnSettings;->access$000(Lcom/android/lgesettings/vpn2/VpnSettings;)Lcom/android/lgesettings/vpn2/VpnDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/vpn2/VpnSettings$1;->this$0:Lcom/android/lgesettings/vpn2/VpnSettings;

    #getter for: Lcom/android/lgesettings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v3}, Lcom/android/lgesettings/vpn2/VpnSettings;->access$300(Lcom/android/lgesettings/vpn2/VpnSettings;)Landroid/security/KeyStore;

    move-result-object v3

    const-string v4, "CACERT_"

    invoke-virtual {v3, v4}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/vpn2/VpnSettings$1;->this$0:Lcom/android/lgesettings/vpn2/VpnSettings;

    #getter for: Lcom/android/lgesettings/vpn2/VpnSettings;->mType:I
    invoke-static {v4}, Lcom/android/lgesettings/vpn2/VpnSettings;->access$100(Lcom/android/lgesettings/vpn2/VpnSettings;)I

    move-result v4

    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnSettings$1;->this$0:Lcom/android/lgesettings/vpn2/VpnSettings;

    #getter for: Lcom/android/lgesettings/vpn2/VpnSettings;->InstalledKey:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/lgesettings/vpn2/VpnSettings;->access$200(Lcom/android/lgesettings/vpn2/VpnSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/lgesettings/vpn2/VpnDialog;->initCACert([Ljava/lang/String;ILjava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcom/android/lgesettings/vpn2/VpnSettings$1;->this$0:Lcom/android/lgesettings/vpn2/VpnSettings;

    #getter for: Lcom/android/lgesettings/vpn2/VpnSettings;->mDialog:Lcom/android/lgesettings/vpn2/VpnDialog;
    invoke-static {v2}, Lcom/android/lgesettings/vpn2/VpnSettings;->access$000(Lcom/android/lgesettings/vpn2/VpnSettings;)Lcom/android/lgesettings/vpn2/VpnDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/vpn2/VpnSettings$1;->this$0:Lcom/android/lgesettings/vpn2/VpnSettings;

    #getter for: Lcom/android/lgesettings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v3}, Lcom/android/lgesettings/vpn2/VpnSettings;->access$300(Lcom/android/lgesettings/vpn2/VpnSettings;)Landroid/security/KeyStore;

    move-result-object v3

    const-string v4, "USRCERT_"

    invoke-virtual {v3, v4}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/vpn2/VpnSettings$1;->this$0:Lcom/android/lgesettings/vpn2/VpnSettings;

    #getter for: Lcom/android/lgesettings/vpn2/VpnSettings;->mType:I
    invoke-static {v4}, Lcom/android/lgesettings/vpn2/VpnSettings;->access$100(Lcom/android/lgesettings/vpn2/VpnSettings;)I

    move-result v4

    iget-object v5, p0, Lcom/android/lgesettings/vpn2/VpnSettings$1;->this$0:Lcom/android/lgesettings/vpn2/VpnSettings;

    #getter for: Lcom/android/lgesettings/vpn2/VpnSettings;->InstalledKey:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/lgesettings/vpn2/VpnSettings;->access$200(Lcom/android/lgesettings/vpn2/VpnSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/lgesettings/vpn2/VpnDialog;->initServerCert([Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 141
    .end local v1           #extras:Landroid/os/Bundle;
    :cond_3
    const-string v2, "VpnSettings"

    const-string v3, "Unknown action..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
