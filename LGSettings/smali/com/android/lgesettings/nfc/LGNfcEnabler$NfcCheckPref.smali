.class public Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCheckPref;
.super Lcom/android/lgesettings/nfc/NfcStateListener;
.source "LGNfcEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/nfc/LGNfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NfcCheckPref"
.end annotation


# instance fields
.field private final mCheckbox:Landroid/preference/CheckBoxPreference;

.field final synthetic this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;


# virtual methods
.method public handleNfcStateChanged(I)V
    .locals 4
    .parameter "newState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 339
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCheckPref;->mCheckbox:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 341
    packed-switch p1, :pswitch_data_0

    .line 362
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCheckPref;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 363
    return-void

    .line 343
    :pswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCheckPref;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 344
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCheckPref;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 347
    :pswitch_1
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCheckPref;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 348
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCheckPref;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 351
    :pswitch_2
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCheckPref;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 352
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCheckPref;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 355
    :pswitch_3
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCheckPref;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 356
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCheckPref;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x0

    .line 324
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCheckPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getAdapterSysState()I

    move-result v0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_1

    .line 325
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCheckPref;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 326
    const-string v0, "LGNfcEnabler"

    const-string v1, "mNfcAdapter.enable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCheckPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->initNfcSystem()Z

    .line 328
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCheckPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->enableNfcCard()Z

    .line 335
    :cond_0
    :goto_0
    return v2

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCheckPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->getAdapterSysState()I

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCheckPref;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 331
    const-string v0, "LGNfcEnabler"

    const-string v1, "mNfcAdapterAddon.disable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCheckPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->disableNfcCard()Z

    .line 333
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCheckPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mNfcAdapterAddon:Lcom/lge/nfcaddon/NfcAdapterAddon;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$100(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Lcom/lge/nfcaddon/NfcAdapterAddon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/nfcaddon/NfcAdapterAddon;->deinitNfcSystem()Z

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCheckPref;->mCheckbox:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 321
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcCheckPref;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 316
    return-void
.end method
