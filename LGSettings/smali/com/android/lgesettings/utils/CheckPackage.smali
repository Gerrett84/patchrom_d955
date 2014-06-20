.class public Lcom/android/lgesettings/utils/CheckPackage;
.super Landroid/app/Activity;
.source "CheckPackage.java"


# instance fields
.field mPackageText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isCallable(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4
    .parameter "intent"
    .parameter "menuName"

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/lgesettings/utils/CheckPackage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 47
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/android/lgesettings/utils/CheckPackage;->mPackageText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/lgesettings/utils/CheckPackage;->mPackageText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is Displayed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/utils/CheckPackage;->mPackageText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/lgesettings/utils/CheckPackage;->mPackageText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is removed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public appIsEnabled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "packageName"
    .parameter "menuName"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/lgesettings/utils/CheckPackage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 58
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 60
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 61
    iget-object v3, p0, Lcom/android/lgesettings/utils/CheckPackage;->mPackageText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/lgesettings/utils/CheckPackage;->mPackageText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is Displayed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p0, Lcom/android/lgesettings/utils/CheckPackage;->mPackageText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/lgesettings/utils/CheckPackage;->mPackageText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is removed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f04002e

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/utils/CheckPackage;->setContentView(I)V

    .line 25
    const v0, 0x7f0a0061

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/utils/CheckPackage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/utils/CheckPackage;->mPackageText:Landroid/widget/TextView;

    .line 27
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.lge.ir.remote.settings"

    const-string v2, "com.lge.ir.remote.settings.MainSettingsPrefAct"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Qremote"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckPackage;->isCallable(Landroid/content/Intent;Ljava/lang/String;)V

    .line 28
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.lgesettings"

    const-string v2, "com.lge.settings.ONE_HAND_SETTINGS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "One-handed Operation"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckPackage;->isCallable(Landroid/content/Intent;Ljava/lang/String;)V

    .line 29
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.lgesettings"

    const-string v2, "com.lge.settings.HOTKEY_SETTINGS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "QuickButton"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckPackage;->isCallable(Landroid/content/Intent;Ljava/lang/String;)V

    .line 30
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.Settings$WirelessSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "More..."

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckPackage;->isCallable(Landroid/content/Intent;Ljava/lang/String;)V

    .line 31
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.Settings$TetherNetworkSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Tethering and networks"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckPackage;->isCallable(Landroid/content/Intent;Ljava/lang/String;)V

    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.Settings$ShareConnectionActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Share and Connect"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckPackage;->isCallable(Landroid/content/Intent;Ljava/lang/String;)V

    .line 33
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.Settings$DataUsageSummaryActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Mobile data"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckPackage;->isCallable(Landroid/content/Intent;Ljava/lang/String;)V

    .line 34
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.lgesettingsaccessibility"

    const-string v2, "com.android.lgesettingsaccessibility.SettingsAccessibilityActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LG Accessibility"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckPackage;->isCallable(Landroid/content/Intent;Ljava/lang/String;)V

    .line 35
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.nttdocomo.android.fota"

    const-string v2, "com.nttdocomo.android.fota.screens.DmcFota"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Software Update"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckPackage;->isCallable(Landroid/content/Intent;Ljava/lang/String;)V

    .line 36
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.nttdocomo.android.osv"

    const-string v2, "com.nttdocomo.android.osv.StartupActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Upgrade Android software"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckPackage;->isCallable(Landroid/content/Intent;Ljava/lang/String;)V

    .line 37
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.inputmethod.SpellCheckersSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Spelling correction"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckPackage;->isCallable(Landroid/content/Intent;Ljava/lang/String;)V

    .line 38
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.lgesettings"

    const-string v2, "com.android.lgesettings.TextLinkSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Text Link"

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckPackage;->isCallable(Landroid/content/Intent;Ljava/lang/String;)V

    .line 40
    const-string v0, "com.nttdocomo.android.cloudset"

    const-string v1, "Docomo Cloud"

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckPackage;->appIsEnabled(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v0, "com.nttdocomo.android.docomoset"

    const-string v1, "Docomo Service"

    invoke-virtual {p0, v0, v1}, Lcom/android/lgesettings/utils/CheckPackage;->appIsEnabled(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method
