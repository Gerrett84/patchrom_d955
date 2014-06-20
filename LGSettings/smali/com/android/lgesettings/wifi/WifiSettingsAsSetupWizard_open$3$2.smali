.class Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3$2;
.super Ljava/lang/Object;
.source "WifiSettingsAsSetupWizard_open.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "items"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    .line 360
    const-string v1, "WifiSettingsAsSetupWizard_open"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Testyouni]mMobileNetworkMode : items "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #calls: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->getPreferredNetworkMode()I
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$800(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)I

    move-result v2

    iput v2, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->settingsNetworkMode:I

    .line 362
    const-string v1, "WifiSettingsAsSetupWizard_open"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Testyouni]mMobileNetworkMode : settingsNetworkMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    iget v3, v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->settingsNetworkMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    if-nez p2, :cond_0

    .line 364
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    iput v5, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->settingsNetworkMode:I

    .line 365
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkMode:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$900(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f080be7

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 366
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$1000(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    iget v3, v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->settingsNetworkMode:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 368
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$1000(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 369
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 370
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.lge.settings.action.CHANGE_NETWORK_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$1000(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 372
    const-string v1, "WifiSettingsAsSetupWizard_open"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Testyouni]NT_MODE_LTE_CDMA_AND_EVDO : settingsNetworkMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    iget v3, v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->settingsNetworkMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 388
    return-void

    .line 374
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 375
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    iput v4, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->settingsNetworkMode:I

    .line 376
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mMobileNetworkMode:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$900(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f080be9

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 377
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$1000(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    iget v3, v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->settingsNetworkMode:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 379
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$1000(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 380
    const-string v1, "WifiSettingsAsSetupWizard_open"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Testyouni]NT_MODE_CDMA : settingsNetworkMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    iget v3, v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->settingsNetworkMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 382
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.lge.settings.action.CHANGE_NETWORK_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->access$1000(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 385
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const-string v1, "WifiSettingsAsSetupWizard_open"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInitView() : invalid network_mode_status => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open$3;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;

    iget v3, v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard_open;->network_mode_status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
