.class public interface abstract Lcom/lge/loader/mdm/IMdm;
.super Ljava/lang/Object;
.source "IMdm.java"


# static fields
.field public static final LGMDM_ADAPTER_AIRPLANE_MODE:Ljava/lang/String; = "LGMDMAirplaneModeUIAdpater"

.field public static final LGMDM_ADAPTER_APPLICATION:Ljava/lang/String; = "LGMDMApplicationUIAdapter"

.field public static final LGMDM_ADAPTER_BLUETOOTH:Ljava/lang/String; = "LGMDMBluetoothAdapter"

.field public static final LGMDM_ADAPTER_BLUETOOTH_TETHERING:Ljava/lang/String; = "LGMDMBluetoothTetheringUIAdapter"

.field public static final LGMDM_ADAPTER_BROWSER:Ljava/lang/String; = "LGMDMBrowserUIAdapter"

.field public static final LGMDM_ADAPTER_DATAROAMING:Ljava/lang/String; = "LGMDMDataRoamingAdapter"

.field public static final LGMDM_ADAPTER_EMAIL:Ljava/lang/String; = "LGMDMEmailUIAdapter"

.field public static final LGMDM_ADAPTER_EXTERNALMEMORY:Ljava/lang/String; = "LGMDMExternalAdapter"

.field public static final LGMDM_ADAPTER_GPS:Ljava/lang/String; = "LGMDMGPSUIAdpater"

.field public static final LGMDM_ADAPTER_HOTSPOT:Ljava/lang/String; = "LGMDMHotspotUIAdapter"

.field public static final LGMDM_ADAPTER_LOVKSCREEN:Ljava/lang/String; = "LGMDMUILockScreenProviderAdapter"

.field public static final LGMDM_ADAPTER_MESSAGE:Ljava/lang/String; = "LGMDMMessageUIAdapter"

.field public static final LGMDM_ADAPTER_MOBILENETWORK:Ljava/lang/String; = "LGMDMMobileNetworkAdapter"

.field public static final LGMDM_ADAPTER_PASSWORD:Ljava/lang/String; = "LGMDMPasswordUIAdapter"

.field public static final LGMDM_ADAPTER_SCREENCAPTURE:Ljava/lang/String; = "LGMDMScreenCaptureUIAdapter"

.field public static final LGMDM_ADAPTER_TETHERING:Ljava/lang/String; = "LGMDMTetheringUIAdapter"

.field public static final LGMDM_ADAPTER_UI_HANDLER:Ljava/lang/String; = "LGMDMUIHandlerAdapter"

.field public static final LGMDM_ADAPTER_USB:Ljava/lang/String; = "LGMDMUsbUIAdapter"

.field public static final LGMDM_ADAPTER_WIFI:Ljava/lang/String; = "LGMDMWifiUIAdapter"

.field public static final LGMDM_ADAPTER_WIPER:Ljava/lang/String; = "LGMDMWiperAdapter"

.field public static final LGMDM_MOUNT_REJECT:I = -0x63

.field public static final LGMDM_UI_MANAGER_SERVICE:Ljava/lang/String; = "LGMDMUIManager"

.field public static final PASSWORD_RECOVERY_MODE:Ljava/lang/String; = "PASSWORD_RECOVERY"


# virtual methods
.method public abstract addFilterUsbDevicecManagerReceiver(Landroid/content/IntentFilter;)V
.end method

.method public abstract addFilterWifiP2pServiceReceiver(Landroid/content/IntentFilter;)V
.end method

.method public abstract changePassword(Landroid/content/Context;)V
.end method

.method public abstract checkAllowMicrophone()Z
.end method

.method public abstract checkAllowMicrophoneIME(Landroid/content/ComponentName;Ljava/lang/String;)Z
.end method

.method public abstract checkBluetoothAudioOnly(Ljava/lang/String;)Z
.end method

.method public abstract checkBluetoothDevice(Ljava/lang/String;)Z
.end method

.method public abstract checkBluetoothVisible()Z
.end method

.method public abstract checkDisabledAccountManagerService(Landroid/content/Context;Landroid/accounts/Account;I)Z
.end method

.method public abstract checkDisabledGlobalAction(Landroid/content/ComponentName;Ljava/lang/String;)Z
.end method

.method public abstract checkDisabledMountService(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract checkDisabledRemoveAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z
.end method

.method public abstract checkDisabledSettingsProvider(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract checkDisabledSystemService(Landroid/content/ComponentName;Ljava/lang/String;)Z
.end method

.method public abstract checkDisabledUsbDebug()Z
.end method

.method public abstract checkDisabledWifiSecurity(Landroid/net/wifi/WifiConfiguration;II)Z
.end method

.method public abstract checkGpsPolicy(Ljava/lang/String;ZI)Z
.end method

.method public abstract checkMessageMdmWifiP2p(I)Z
.end method

.method public abstract checkMobileNetwork(ZI)Z
.end method

.method public abstract checkPasswordRecovery(Ljava/lang/String;Landroid/content/Context;)Z
.end method

.method public abstract checkProcessWatcherandKeeper(Ljava/lang/String;I)V
.end method

.method public abstract checkScreenCapture(Landroid/content/ComponentName;)I
.end method

.method public abstract checkSimplepasswordCorrect(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract checkStartActivityLocked(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;I)I
.end method

.method public abstract checkStartLockdownApps(Ljava/lang/String;Landroid/content/Intent;ZI)V
.end method

.method public abstract checkWebView(Ljava/lang/String;)Z
.end method

.method public abstract checkWirelessLocationWithWhitelist(Ljava/lang/String;I)Z
.end method

.method public abstract deleteHardwareFactoryResetFlagFile()V
.end method

.method public abstract dismissDialogForLockout(Landroid/content/Context;)V
.end method

.method public abstract getAllowGPSLocation(Landroid/content/ComponentName;)Z
.end method

.method public abstract getAllowMobileNetwork(Landroid/content/ComponentName;)Z
.end method

.method public abstract getAllowPasswordComplexForEAS(Landroid/content/ComponentName;)Z
.end method

.method public abstract getAllowSendingSms(Landroid/content/ComponentName;I)Z
.end method

.method public abstract getAllowSimplePassword(Landroid/content/ComponentName;I)Z
.end method

.method public abstract getAllowSpecificKey(II)Z
.end method

.method public abstract getAllowUnknownSourceInstallation(Landroid/content/ComponentName;)Z
.end method

.method public abstract getBluetoothVisibleDuration(I)I
.end method

.method public abstract getEnforceGPSLocationEnabled(Landroid/content/ComponentName;)Z
.end method

.method public abstract getEnforceMobileNetworkEnabled(Landroid/content/ComponentName;)Z
.end method

.method public abstract getEnforcePasswordChange()Z
.end method

.method public abstract getExternalMemoryMounted(Landroid/content/Context;)Z
.end method

.method public abstract getLockoutDescript(Landroid/content/ComponentName;)Ljava/lang/String;
.end method

.method public abstract getLockoutLevel(Landroid/content/ComponentName;)I
.end method

.method public abstract getLockoutNow(Landroid/content/ComponentName;)Z
.end method

.method public abstract getManualSyncWhenRoaming()Z
.end method

.method public abstract getPasswordLeftDaysToExpire(Lcom/android/internal/widget/LockPatternUtils;)I
.end method

.method public abstract getPasswordRecoveryByEas(Landroid/content/Context;)Z
.end method

.method public abstract getPasswordRecoveryEnabled(Landroid/content/ComponentName;)Z
.end method

.method public abstract getRequestedPasswordExpiration(Lcom/android/internal/widget/LockPatternUtils;)I
.end method

.method public abstract handleManualSync(Landroid/content/ComponentName;)V
.end method

.method public abstract isAllowSendMMS(Landroid/content/ComponentName;I)Z
.end method

.method public abstract isAllowSendMessage(Landroid/content/ComponentName;Landroid/app/PendingIntent;)Z
.end method

.method public abstract isAllowSendMessage(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract isFailedInstallByMDM(Landroid/content/ComponentName;Ljava/lang/String;[Landroid/content/pm/Signature;ILandroid/os/UserHandle;)Z
.end method

.method public abstract isFailedUninstallByMDM(Landroid/content/ComponentName;Ljava/lang/String;II)Z
.end method

.method public abstract launchService(Landroid/content/Context;)V
.end method

.method public abstract notificationChangePasswordDialog(Lcom/android/internal/widget/LockPatternUtils;)V
.end method

.method public abstract recevieMDMUsbIntent(Landroid/content/Intent;)Ljava/lang/String;
.end method

.method public abstract recevieWifiP2pIntent(Ljava/lang/String;)Z
.end method

.method public abstract removeActiveAdmin(Landroid/content/ComponentName;I)V
.end method

.method public abstract restoreUsbFunctionExceptAdb(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract sendToastMessageId(I)V
.end method

.method public abstract setActiveAdmin(Landroid/content/ComponentName;ZI)V
.end method

.method public abstract setAirplaneModeDisplayMenu(Landroid/view/View;)V
.end method

.method public abstract setCameraState(Z)V
.end method

.method public abstract setCameraStop(ZI)V
.end method

.method public abstract setCrashAppliction(Ljava/lang/String;I)V
.end method

.method public abstract showEncryptionPolicyDialog(Landroid/content/Context;)Z
.end method

.method public abstract wipeData(I)V
.end method
