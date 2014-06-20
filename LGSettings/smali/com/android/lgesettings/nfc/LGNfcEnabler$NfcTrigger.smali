.class public Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;
.super Ljava/lang/Object;
.source "LGNfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/nfc/LGNfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NfcTrigger"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method trigger(Z)Z
    .locals 4
    .parameter "bOn"

    .prologue
    const/4 v1, 0x0

    .line 170
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v2}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$000(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, bRet:Z
    if-eqz p1, :cond_3

    .line 175
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v2}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isWirelessChargingModeOn()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 176
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08027d

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 211
    :goto_0
    return v1

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcSystemEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->initNfcSystem()Z

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcCard()Z

    move-result v0

    .line 188
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcDiscovery()Z

    .line 191
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcP2p()Z

    .line 193
    const-string v1, "LGNfcEnabler"

    const-string v2, "enableNfcP2p"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_2
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->updateP2pState()Z

    .line 197
    const-string v1, "LGNfcEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNfcAdapterAddon.enableNfcCard()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v1, v0

    .line 211
    goto :goto_0

    .line 199
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->disableNfcDiscovery()Z

    .line 200
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->disableNfcCard()Z

    .line 201
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->deinitNfcSystem()Z

    move-result v0

    .line 204
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 205
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcTrigger;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->disableNfcP2p()Z

    .line 206
    const-string v1, "LGNfcEnabler"

    const-string v2, "disableNfcP2p"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_4
    const-string v1, "LGNfcEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNfcAdapterAddon.disableNfcCard()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
