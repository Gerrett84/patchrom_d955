.class public Lcom/android/lgesettings/Settings$TetherSettingsActivity;
.super Lcom/android/lgesettings/Settings;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TetherSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2146
    invoke-direct {p0}, Lcom/android/lgesettings/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 2150
    invoke-super {p0, p1}, Lcom/android/lgesettings/Settings;->onCreate(Landroid/os/Bundle;)V

    .line 2152
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$TetherSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2153
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 2154
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 2156
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/high16 v5, 0x3400

    const/4 v2, 0x1

    .line 2160
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 2161
    .local v1, itemId:I
    const v3, 0x102002c

    if-ne v1, v3, :cond_1

    .line 2163
    const-string v3, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2164
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2165
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2166
    const-string v3, "com.android.lgesettings"

    const-string v4, "com.android.lgesettings.Settings$WirelessSettingsActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2168
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/Settings$TetherSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 2169
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$TetherSettingsActivity;->finish()V

    .line 2182
    .end local v0           #i:Landroid/content/Intent;
    :goto_0
    return v2

    .line 2173
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2175
    .restart local v0       #i:Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2176
    const-string v3, "com.android.lgesettings"

    const-string v4, "com.android.lgesettings.Settings$TetherNetworkSettingsActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2178
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/Settings$TetherSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 2179
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$TetherSettingsActivity;->finish()V

    goto :goto_0

    .line 2182
    .end local v0           #i:Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/lgesettings/Settings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method
