.class public Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamTriggerInP2P;
.super Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamTrigger;
.source "LGNfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/nfc/LGNfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BeamTriggerInP2P"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamTriggerInP2P;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    invoke-direct {p0, p1}, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamTrigger;-><init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;)V

    return-void
.end method


# virtual methods
.method trigger(Z)Z
    .locals 2
    .parameter "bOn"

    .prologue
    .line 291
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamTriggerInP2P;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcP2pModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamTriggerInP2P;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    invoke-virtual {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->showBeamOffDlg()V

    .line 293
    const/4 v0, 0x0

    .line 296
    :goto_0
    return v0

    .line 295
    :cond_0
    invoke-super {p0, p1}, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamTrigger;->trigger(Z)Z

    move-result v0

    .line 296
    .local v0, bRet:Z
    goto :goto_0
.end method
