.class public Lcom/android/lgesettings/Settings$UsbSettingsActivity;
.super Lcom/android/lgesettings/Settings;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsbSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2859
    invoke-direct {p0}, Lcom/android/lgesettings/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 2862
    invoke-super {p0, p1}, Lcom/android/lgesettings/Settings;->onCreate(Landroid/os/Bundle;)V

    .line 2863
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2864
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$UsbSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/high16 v1, 0x7f03

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 2865
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$UsbSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f080107

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 2867
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 2871
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 2872
    .local v1, itemId:I
    const v4, 0x102002c

    if-ne v1, v4, :cond_1

    .line 2873
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$UsbSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_usb_launcher"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 2874
    .local v2, usbLauncher:Z
    if-eqz v2, :cond_0

    .line 2875
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2876
    .local v0, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2877
    const-string v4, "com.android.lgesettings"

    const-string v5, "com.android.lgesettings.Settings$ConnectivitySettingsActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2878
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/Settings$UsbSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 2885
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #usbLauncher:Z
    :goto_0
    return v3

    .line 2881
    .restart local v2       #usbLauncher:Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$UsbSettingsActivity;->finish()V

    goto :goto_0

    .line 2885
    .end local v2           #usbLauncher:Z
    :cond_1
    invoke-super {p0, p1}, Lcom/android/lgesettings/Settings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_0
.end method
