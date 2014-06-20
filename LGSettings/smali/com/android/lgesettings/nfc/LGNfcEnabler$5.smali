.class Lcom/android/lgesettings/nfc/LGNfcEnabler$5;
.super Landroid/content/BroadcastReceiver;
.source "LGNfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/nfc/LGNfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 959
    iput-object p1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$5;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 961
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_0

    .line 962
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 963
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.lge.mdm.intent.action.NFC_POLICY_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 964
    const-string v2, "LGNfcEnabler"

    const-string v3, "ACTION_NFC_POLICY_CHANGE received"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$5;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v2}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getAdapterSysState()I

    move-result v1

    .line 966
    .local v1, sysState:I
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$5;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    iget-object v2, v2, Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcManager:Lcom/android/lgesettings/nfc/NfcManager;

    invoke-virtual {v2}, Lcom/android/lgesettings/nfc/NfcManager;->handleNfcStateChanged()V

    .line 969
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #sysState:I
    :cond_0
    return-void
.end method
