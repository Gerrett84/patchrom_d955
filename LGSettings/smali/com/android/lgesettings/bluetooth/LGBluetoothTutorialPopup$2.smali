.class final Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup$2;
.super Ljava/lang/Object;
.source "LGBluetoothTutorialPopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->showTutorialPopup(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 181
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->access$200()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Bt_Tutorial_Pref_Name"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->access$102(Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 183
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->access$100()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "Bt_Tutorial_Pref_Check_Key"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 186
    .local v1, tutorialChecked:Z
    const-string v2, "LGBluetoothTutorialPopup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Complete Popup is dismissing, BT_TUTORIAL_PREF_CHECK_KEY : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 190
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->setHelpAppValueOFF()V

    .line 198
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->access$100()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 199
    .local v0, popupEdit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "Bt_Tutorial_Pref_Check_Key"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 200
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    const-string v2, "LGBluetoothTutorialPopup"

    const-string v3, "Complete PopupWindow is dismissed, callinng unregisterReceiver(LGBluetoothTutorialReceiver)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->unregisterBtTutorialReceiver()V

    .line 206
    return-void

    .line 192
    .end local v0           #popupEdit:Landroid/content/SharedPreferences$Editor;
    :cond_1
    if-nez v1, :cond_0

    .line 194
    invoke-static {}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->setHelpAppValueON()V

    goto :goto_0
.end method
