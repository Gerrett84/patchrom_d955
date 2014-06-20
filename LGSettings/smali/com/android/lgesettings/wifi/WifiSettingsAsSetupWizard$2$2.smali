.class Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2$2;
.super Ljava/lang/Object;
.source "WifiSettingsAsSetupWizard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;

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

    .line 327
    const-string v1, "WifiSettingsAsSetupWizard"

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

    .line 328
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;

    iget-object v2, v2, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #calls: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->getPreferredNetworkMode()I
    invoke-static {v2}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$300(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)I

    move-result v2

    iput v2, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->settingsNetworkMode:I

    .line 329
    const-string v1, "WifiSettingsAsSetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Testyouni]mMobileNetworkMode : settingsNetworkMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    iget v3, v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->settingsNetworkMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    if-nez p2, :cond_0

    .line 331
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    iput v5, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->settingsNetworkMode:I

    .line 332
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mMobileNetworkMode:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$400(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f080be7

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 333
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$500(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    iget v3, v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->settingsNetworkMode:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 335
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$500(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 336
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 337
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.lge.settings.action.CHANGE_NETWORK_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$500(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 339
    const-string v1, "WifiSettingsAsSetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Testyouni]NT_MODE_LTE_CDMA_AND_EVDO : settingsNetworkMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    iget v3, v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->settingsNetworkMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 355
    return-void

    .line 341
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    iput v4, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->settingsNetworkMode:I

    .line 343
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mMobileNetworkMode:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$400(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f080be9

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 344
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$500(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    iget v3, v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->settingsNetworkMode:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 346
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$500(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 347
    const-string v1, "WifiSettingsAsSetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Testyouni]NT_MODE_CDMA : settingsNetworkMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    iget v3, v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->settingsNetworkMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 349
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.lge.settings.action.CHANGE_NETWORK_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;

    iget-object v1, v1, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->access$500(Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 352
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const-string v1, "WifiSettingsAsSetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInitView() : invalid network_mode_status => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2$2;->this$1:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;

    iget-object v3, v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard$2;->this$0:Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;

    iget v3, v3, Lcom/android/lgesettings/wifi/WifiSettingsAsSetupWizard;->network_mode_status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
