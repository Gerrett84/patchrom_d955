.class Lcom/android/lgesettings/wifi/AdvancedWifiSettings$1;
.super Ljava/lang/Object;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/AdvancedWifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/lgesettings/wifi/AdvancedWifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v6, 0x1

    .line 196
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 198
    .local v2, v:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/lgesettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v3}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.lguplus.common.wificm.mwlan"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    const-string v4, "mwlan"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 201
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v3, "permission_allowed_2"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 202
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.lguplus.common.wificm.mwlan.interface"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v1, i:Landroid/content/Intent;
    const-string v3, "type"

    const-string v4, "notify"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const-string v3, "action"

    const-string v4, "permissionChanged"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    iget-object v3, p0, Lcom/android/lgesettings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/lgesettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v3}, Lcom/android/lgesettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v2, :cond_0

    const v3, 0x7f081376

    :goto_1
    invoke-static {v4, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 212
    return v6

    .line 209
    :cond_0
    const v3, 0x7f081377

    goto :goto_1

    .line 208
    :catch_0
    move-exception v3

    goto :goto_0
.end method
