.class public Lcom/android/lgesettings/lockscreen/ScreenCheckersPreference;
.super Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;
.source "ScreenCheckersPreference.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-object p1, p0, Lcom/android/lgesettings/lockscreen/ScreenCheckersPreference;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method


# virtual methods
.method protected onCheckBoxClicked()V
    .locals 4

    .prologue
    .line 55
    invoke-super {p0}, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->onCheckBoxClicked()V

    .line 56
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ScreenCheckersPreference;->isChecked()Z

    move-result v0

    .line 58
    .local v0, checked:Z
    iget-object v1, p0, Lcom/android/lgesettings/lockscreen/ScreenCheckersPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_owner_info_enabled"

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 61
    return-void

    .line 58
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 66
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/android/lgesettings/lockscreen/ScreenCheckersPreference;->onCheckBoxClicked()V

    .line 69
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/lgesettings/lockscreen/CheckBoxAndSettingsPreference;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
