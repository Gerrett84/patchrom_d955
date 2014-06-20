.class public Lcom/android/lgesettings/nfc/NfcSettings_dummy;
.super Landroid/app/Activity;
.source "NfcSettings_dummy.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 16
    const-string v0, "NFC_SETTINGS"

    iput-object v0, p0, Lcom/android/lgesettings/nfc/NfcSettings_dummy;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 23
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcLock()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.lgesettings"

    const-string v3, "com.android.lgesettings.Settings$NfcSettingsActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .local v0, component:Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 46
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 47
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/nfc/NfcSettings_dummy;->startActivity(Landroid/content/Intent;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettings_dummy;->finish()V

    .line 49
    return-void

    .line 26
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_0
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcInner()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.lgesettings"

    const-string v3, "com.android.lgesettings.Settings$NfcSettingsFragmentActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .restart local v0       #component:Landroid/content/ComponentName;
    const-string v2, "NFC_SETTINGS"

    const-string v3, "NfcSettings_dummy() : hasFeatureNfcInner => KOREAN SKT KT LGU"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 30
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/nfc/NfcSettings_dummy;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.settings.NFCSHARING_SETTINGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 31
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.lgesettings"

    const-string v3, "com.android.lgesettings.Settings$AndroidBeamSettingsActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #component:Landroid/content/ComponentName;
    goto :goto_0

    .line 36
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_2
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 37
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.lgesettings"

    const-string v3, "com.android.lgesettings.Settings$WirelessSettingsActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #component:Landroid/content/ComponentName;
    goto :goto_0

    .line 39
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_3
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.lgesettings"

    const-string v3, "com.android.lgesettings.Settings$ShareConnectionActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #component:Landroid/content/ComponentName;
    goto :goto_0
.end method
