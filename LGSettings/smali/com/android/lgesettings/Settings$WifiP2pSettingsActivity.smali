.class public Lcom/android/lgesettings/Settings$WifiP2pSettingsActivity;
.super Lcom/android/lgesettings/Settings;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiP2pSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2327
    invoke-direct {p0}, Lcom/android/lgesettings/Settings;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 2331
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 2333
    .local v1, itemId:I
    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 2334
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2335
    .local v0, i:Landroid/content/Intent;
    const/high16 v2, 0x3400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2336
    const-string v2, "com.android.lgesettings"

    const-string v3, "com.android.lgesettings.Settings$WifiSettingsActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2337
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/Settings$WifiP2pSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 2338
    invoke-virtual {p0}, Lcom/android/lgesettings/Settings$WifiP2pSettingsActivity;->finish()V

    .line 2339
    const/4 v2, 0x1

    .line 2341
    .end local v0           #i:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Lcom/android/lgesettings/Settings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method
