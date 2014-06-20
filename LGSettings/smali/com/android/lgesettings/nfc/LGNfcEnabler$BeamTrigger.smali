.class public Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamTrigger;
.super Ljava/lang/Object;
.source "LGNfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/nfc/LGNfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BeamTrigger"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamTrigger;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method trigger(Z)Z
    .locals 3
    .parameter "bOn"

    .prologue
    .line 269
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/mdm/LGMDMManager;->getAllowNfc(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 271
    const-string v1, "LGNfcEnabler"

    const-string v2, "BeamTrigger MDM Blcok"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v0, 0x0

    .line 284
    :goto_0
    return v0

    .line 276
    :cond_0
    if-eqz p1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamTrigger;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcP2p()Z

    move-result v0

    .line 278
    .local v0, bRet:Z
    const-string v1, "LGNfcEnabler"

    const-string v2, "mNfcAdapter.enableNdefPush()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    .end local v0           #bRet:Z
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$BeamTrigger;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/nfcaddon/NfcAdapterAddon;->disableNfcP2p()Z

    move-result v0

    .line 281
    .restart local v0       #bRet:Z
    const-string v1, "LGNfcEnabler"

    const-string v2, "mNfcAdapter.disableNdefPush()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
