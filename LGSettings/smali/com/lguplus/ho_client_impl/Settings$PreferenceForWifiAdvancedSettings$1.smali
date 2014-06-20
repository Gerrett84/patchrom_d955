.class Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;->setDlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;

.field final synthetic val$ssid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings$1;->this$0:Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;

    iput-object p2, p0, Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings$1;->val$ssid:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 454
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.lguplus.ho_client_impl"

    const-string v4, "com.lguplus.ho_client_impl.DisabledApsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 455
    .local v1, i:Landroid/content/Intent;
    const-string v2, "ssid"

    iget-object v3, p0, Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings$1;->val$ssid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    iget-object v2, p0, Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings$1;->this$0:Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;

    iget-object v2, v2, Lcom/lguplus/ho_client_impl/Settings$PreferenceForWifiAdvancedSettings;->pf:Landroid/preference/PreferenceFragment;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "settings, startPkgActivity(), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lguplus/ho_client_impl/Settings;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method
