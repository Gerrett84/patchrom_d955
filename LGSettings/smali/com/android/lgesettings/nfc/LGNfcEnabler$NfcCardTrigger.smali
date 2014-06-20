.class public Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCardTrigger;
.super Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;
.source "LGNfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/nfc/LGNfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NfcCardTrigger"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCardTrigger;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    invoke-direct {p0, p1}, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;-><init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;)V

    return-void
.end method


# virtual methods
.method trigger(Z)Z
    .locals 5
    .parameter "bOn"

    .prologue
    const/4 v2, 0x0

    .line 217
    if-nez p1, :cond_0

    .line 218
    iget-object v3, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCardTrigger;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    invoke-virtual {v3}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->showNfcOffDlg()V

    move v0, v2

    .line 261
    :goto_0
    return v0

    .line 227
    :cond_0
    const/4 v0, 0x0

    .line 230
    .local v0, bRet:Z
    const/4 v1, 0x1

    .line 231
    .local v1, mdmPolicy:I
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v3, :cond_1

    .line 232
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lge/mdm/LGMDMManager;->getAllowNfc(Landroid/content/ComponentName;)I

    move-result v1

    .line 235
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCardTrigger;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v3}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCardTrigger;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v3}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isWirelessChargingModeOn()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 236
    iget-object v3, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCardTrigger;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08027d

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move v0, v2

    .line 237
    goto :goto_0

    .line 240
    :cond_2
    if-nez v1, :cond_3

    .line 241
    const-string v3, "LGNfcEnabler"

    const-string v4, "NfcCardTrigger MDM Blcok"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 242
    goto :goto_0

    .line 244
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCardTrigger;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v2}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcSystemEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 245
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCardTrigger;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v2}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->initNfcSystem()Z

    .line 251
    :cond_4
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCardTrigger;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v2}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcCard()Z

    move-result v0

    .line 253
    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 254
    const-string v2, "LGNfcEnabler"

    const-string v3, "NfcCardTrigger MDM Blcok cardmode only"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 258
    :cond_5
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCardTrigger;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v2}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcDiscovery()Z

    .line 259
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCardTrigger;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v2}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcP2p()Z

    .line 260
    const-string v2, "LGNfcEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNfcAdapterAddon.enableNfcCard() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
