.class public Lcom/android/lgesettings/Settings$WifiScreenSettingsActivity;
.super Lcom/android/lgesettings/Settings;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiScreenSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2346
    invoke-direct {p0}, Lcom/android/lgesettings/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 2350
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 2351
    .local v1, itemId:I
    const v3, 0x102002c

    if-ne v1, v3, :cond_1

    .line 2352
    const-string v3, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2353
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2354
    .local v0, i:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2355
    const-string v3, "com.android.lgesettings"

    const-string v4, "com.android.lgesettings.Settings$WirelessSettingsActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2357
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/Settings$WifiScreenSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 2358
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$WifiScreenSettingsActivity;->finish()V

    .line 2370
    .end local v0           #i:Landroid/content/Intent;
    :goto_0
    return v2

    .line 2361
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2363
    .restart local v0       #i:Landroid/content/Intent;
    const/high16 v3, 0x3400

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2364
    const-string v3, "com.android.lgesettings"

    const-string v4, "com.android.lgesettings.Settings$ShareConnectionActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2366
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/Settings$WifiScreenSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 2367
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$WifiScreenSettingsActivity;->finish()V

    goto :goto_0

    .line 2370
    .end local v0           #i:Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/lgesettings/Settings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method
