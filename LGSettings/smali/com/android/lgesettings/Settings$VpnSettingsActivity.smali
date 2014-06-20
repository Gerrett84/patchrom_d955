.class public Lcom/android/lgesettings/Settings$VpnSettingsActivity;
.super Lcom/android/lgesettings/Settings;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VpnSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2186
    invoke-direct {p0}, Lcom/android/lgesettings/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 2190
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 2191
    .local v1, itemId:I
    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    .line 2192
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2193
    .local v0, i:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2194
    const-string v2, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2195
    const-string v2, "com.android.lgesettings"

    const-string v3, "com.android.lgesettings.Settings$WirelessSettingsActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2201
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/Settings$VpnSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 2202
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$VpnSettingsActivity;->finish()V

    .line 2203
    const/4 v2, 0x1

    .line 2205
    .end local v0           #i:Landroid/content/Intent;
    :goto_1
    return v2

    .line 2198
    .restart local v0       #i:Landroid/content/Intent;
    :cond_0
    const-string v2, "com.android.lgesettings"

    const-string v3, "com.android.lgesettings.Settings$TetherNetworkSettingsActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 2205
    .end local v0           #i:Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/lgesettings/Settings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_1
.end method
