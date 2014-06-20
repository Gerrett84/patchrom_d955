.class Lcom/android/lgesettings/wifi/WifiSettings$22;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiSettings;->showSktCmAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 3231
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiSettings$22;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3234
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3235
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings$22;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #setter for: Lcom/android/lgesettings/wifi/WifiSettings;->mSktCmDoNotShowAgain:Z
    invoke-static {v2, v5}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1602(Lcom/android/lgesettings/wifi/WifiSettings;Z)Z

    .line 3236
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings$22;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "WifiSettings_preferences"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3238
    .local v1, pref_ns:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3239
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "sktcm_not_show"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3240
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3249
    :goto_0
    return-void

    .line 3242
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref_ns:Landroid/content/SharedPreferences;
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings$22;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    #setter for: Lcom/android/lgesettings/wifi/WifiSettings;->mSktCmDoNotShowAgain:Z
    invoke-static {v2, v4}, Lcom/android/lgesettings/wifi/WifiSettings;->access$1602(Lcom/android/lgesettings/wifi/WifiSettings;Z)Z

    .line 3243
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiSettings$22;->this$0:Lcom/android/lgesettings/wifi/WifiSettings;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "WifiSettings_preferences"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3245
    .restart local v1       #pref_ns:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3246
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "sktcm_not_show"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3247
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
