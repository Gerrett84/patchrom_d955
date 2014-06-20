.class Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$7;
.super Ljava/lang/Object;
.source "LGBluetoothSigSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->updateScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$7;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x1

    .line 244
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 245
    .local v0, value:I
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$7;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->access$500(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)Lcom/lge/bluetooth/LGBluetoothServiceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings$7;->this$0:Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;

    #getter for: Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->mServiceManager:Lcom/lge/bluetooth/LGBluetoothServiceManager;
    invoke-static {v1}, Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;->access$500(Lcom/android/lgesettings/bluetooth/LGBluetoothSigSettings;)Lcom/lge/bluetooth/LGBluetoothServiceManager;

    move-result-object v3

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1}, Lcom/lge/bluetooth/LGBluetoothServiceManager;->sendScoOnOff(Z)V

    .line 248
    :cond_0
    return v2

    :cond_1
    move v1, v2

    .line 246
    goto :goto_0
.end method
