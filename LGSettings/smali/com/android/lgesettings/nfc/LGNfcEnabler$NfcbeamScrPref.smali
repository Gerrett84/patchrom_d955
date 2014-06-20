.class public Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcbeamScrPref;
.super Lcom/android/lgesettings/nfc/NfcStateListener;
.source "LGNfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/nfc/LGNfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NfcbeamScrPref"
.end annotation


# instance fields
.field private final mAndroidBeam:Landroid/preference/PreferenceScreen;

.field final synthetic this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;


# virtual methods
.method public handleNfcStateChanged(I)V
    .locals 2
    .parameter "newState"

    .prologue
    const/4 v1, 0x0

    .line 378
    packed-switch p1, :pswitch_data_0

    .line 400
    :goto_0
    return-void

    .line 380
    :pswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcbeamScrPref;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 381
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcbeamScrPref;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0801f2

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 384
    :pswitch_1
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcbeamScrPref;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 385
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcbeamScrPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->isNfcP2pModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcbeamScrPref;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0801f0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcbeamScrPref;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0801f1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 392
    :pswitch_2
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcbeamScrPref;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 395
    :pswitch_3
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcbeamScrPref;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 408
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 404
    return-void
.end method
