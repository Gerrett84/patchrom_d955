.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private addClipServiceExtra()V
    .locals 2

    .prologue
    const-string v0, "miui.clipserviceext"

    new-instance v1, Lcom/miui/server/ClipServiceExtra;

    invoke-direct {v1}, Lcom/miui/server/ClipServiceExtra;-><init>()V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1325
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1326
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1329
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 126
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    return-void
.end method

.method public run()V
    .locals 166

    .prologue
    .line 132
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 135
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 137
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 140
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 141
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 145
    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v131

    .line 147
    .local v131, shutdownAction:Ljava/lang/String;
    if-eqz v131, :cond_0

    invoke-virtual/range {v131 .. v131}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 148
    const/4 v7, 0x0

    move-object/from16 v0, v131

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_1e

    const/16 v123, 0x1

    .line 151
    .local v123, reboot:Z
    :goto_0
    invoke-virtual/range {v131 .. v131}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_1f

    .line 152
    const/4 v7, 0x1

    invoke-virtual/range {v131 .. v131}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v131

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v122

    .line 157
    .local v122, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v123

    move-object/from16 v1, v122

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 165
    .end local v122           #reason:Ljava/lang/String;
    .end local v123           #reboot:Z
    :cond_0
    const/16 v92, 0x0

    .line 167
    .local v92, factoryTest:I
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v11, "0"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 169
    .local v33, headless:Z
    const/16 v98, 0x0

    .line 170
    .local v98, installer:Lcom/android/server/pm/Installer;
    const/16 v62, 0x0

    .line 171
    .local v62, accountManager:Landroid/accounts/AccountManagerService;
    const/16 v77, 0x0

    .line 172
    .local v77, contentService:Landroid/content/ContentService;
    const/16 v100, 0x0

    .line 173
    .local v100, lights:Lcom/android/server/LightsService;
    const/16 v117, 0x0

    .line 174
    .local v117, power:Lcom/android/server/power/PowerManagerService;
    const/16 v85, 0x0

    .line 175
    .local v85, display:Lcom/android/server/display/DisplayManagerService;
    const/16 v69, 0x0

    .line 176
    .local v69, battery:Lcom/android/server/BatteryService;
    const/16 v150, 0x0

    .line 177
    .local v150, vibrator:Lcom/android/server/VibratorService;
    const/16 v64, 0x0

    .line 178
    .local v64, alarm:Lcom/android/server/AlarmManagerService;
    const/16 v106, 0x0

    .line 179
    .local v106, mountService:Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 180
    .local v30, networkManagement:Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 181
    .local v29, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v110, 0x0

    .line 182
    .local v110, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v75, 0x0

    .line 183
    .local v75, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v118, 0x0

    .line 184
    .local v118, qcCon:Ljava/lang/Object;
    const/16 v162, 0x0

    .line 185
    .local v162, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v156, 0x0

    .line 186
    .local v156, wifi:Lcom/android/server/WifiService;
    const/16 v130, 0x0

    .line 187
    .local v130, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v116, 0x0

    .line 188
    .local v116, pm:Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 189
    .local v5, context:Landroid/content/Context;
    const/16 v164, 0x0

    .line 190
    .local v164, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v70, 0x0

    .line 191
    .local v70, bluetooth:Lcom/android/server/BluetoothManagerService;
    const/16 v86, 0x0

    .line 192
    .local v86, dock:Lcom/android/server/DockObserver;
    const/16 v126, 0x0

    .line 193
    .local v126, regulatory:Lcom/android/server/RegulatoryObserver;
    const/16 v147, 0x0

    .line 194
    .local v147, usb:Lcom/android/server/usb/UsbService;
    const/16 v128, 0x0

    .line 195
    .local v128, serial:Lcom/android/server/SerialService;
    const/16 v142, 0x0

    .line 196
    .local v142, twilight:Lcom/android/server/TwilightService;
    const/16 v145, 0x0

    .line 197
    .local v145, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v124, 0x0

    .line 198
    .local v124, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v137, 0x0

    .line 199
    .local v137, throttle:Lcom/android/server/ThrottleService;
    const/16 v112, 0x0

    .line 200
    .local v112, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v72, 0x0

    .line 201
    .local v72, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v97, 0x0

    .line 202
    .local v97, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v82, 0x0

    .line 203
    .local v82, deviceManager:Lcom/android/server/DeviceManager3LMService;
    const/16 v135, 0x0

    .line 204
    .local v135, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    const/16 v108, 0x0

    .line 211
    .local v108, msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    new-instance v144, Landroid/os/HandlerThread;

    const-string v7, "UI"

    move-object/from16 v0, v144

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 212
    .local v144, uiHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v144 .. v144}, Landroid/os/HandlerThread;->start()V

    .line 213
    new-instance v20, Landroid/os/Handler;

    invoke-virtual/range {v144 .. v144}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 214
    .local v20, uiHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    new-instance v165, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v165

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 232
    .local v165, wmHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v165 .. v165}, Landroid/os/HandlerThread;->start()V

    .line 233
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v165 .. v165}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 234
    .local v21, wmHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 251
    const/16 v24, 0x0

    .line 256
    .local v24, onlyCore:Z
    :try_start_0
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v99, Lcom/android/server/pm/Installer;

    invoke-direct/range {v99 .. v99}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_59

    .line 258
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .local v99, installer:Lcom/android/server/pm/Installer;
    :try_start_1
    invoke-virtual/range {v99 .. v99}, Lcom/android/server/pm/Installer;->ping()Z

    .line 260
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 263
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v4, Lcom/android/server/power/PowerManagerService;

    invoke-direct {v4}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5a

    .line 265
    .end local v117           #power:Lcom/android/server/power/PowerManagerService;
    .local v4, power:Lcom/android/server/power/PowerManagerService;
    :try_start_2
    const-string v7, "power"

    invoke-static {v7, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 267
    sget-boolean v7, Lcom/lge/config/ThreelmMdmConfig;->THREELM_MDM:Z

    if-eqz v7, :cond_1

    .line 268
    const-string v7, "SystemServer"

    const-string v9, "DeviceManager3LM"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {}, Lcom/android/server/DeviceManager3LMService;->getInstance()Lcom/android/server/DeviceManager3LMService;

    move-result-object v82

    .line 270
    const-string v7, "DeviceManager3LM"

    move-object/from16 v0, v82

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 273
    :cond_1
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static/range {v92 .. v92}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v5

    .line 276
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    new-instance v10, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v10, v5, v0, v1}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5b

    .line 278
    .end local v85           #display:Lcom/android/server/display/DisplayManagerService;
    .local v10, display:Lcom/android/server/display/DisplayManagerService;
    :try_start_3
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v10, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 280
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v136, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v136

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5c

    .line 282
    .end local v135           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .local v136, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :try_start_4
    const-string v7, "telephony.registry"

    move-object/from16 v0, v136

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 284
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 285
    const-string v7, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v109, Lcom/android/server/MSimTelephonyRegistry;

    move-object/from16 v0, v109

    invoke-direct {v0, v5}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 287
    .end local v108           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .local v109, msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    :try_start_5
    const-string v7, "telephony.msim.registry"

    move-object/from16 v0, v109

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5d

    move-object/from16 v108, v109

    .line 290
    .end local v109           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v108       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    :cond_2
    :try_start_6
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const-string v7, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 294
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 296
    invoke-virtual {v10}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_3

    .line 297
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    :cond_3
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v80

    .line 304
    .local v80, cryptState:Ljava/lang/String;
    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v80

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 305
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/16 v24, 0x1

    .line 317
    :cond_4
    :goto_2
    const/16 v7, -0x13

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 321
    if-eqz v92, :cond_21

    const/4 v7, 0x1

    :goto_3
    move-object/from16 v0, v99

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;

    move-result-object v116

    .line 331
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 335
    const/16 v93, 0x0

    .line 337
    .local v93, firstBoot:Z
    :try_start_7
    invoke-interface/range {v116 .. v116}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_43
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    move-result v93

    .line 341
    :goto_4
    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 343
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 348
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    .line 352
    :try_start_9
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v63, Landroid/accounts/AccountManagerService;

    move-object/from16 v0, v63

    invoke-direct {v0, v5}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    .line 354
    .end local v62           #accountManager:Landroid/accounts/AccountManagerService;
    .local v63, accountManager:Landroid/accounts/AccountManagerService;
    :try_start_a
    const-string v7, "account"

    move-object/from16 v0, v63

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_64
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_5e

    move-object/from16 v62, v63

    .line 359
    .end local v63           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v62       #accountManager:Landroid/accounts/AccountManagerService;
    :goto_5
    :try_start_b
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v7, 0x1

    move/from16 v0, v92

    if-ne v0, v7, :cond_22

    const/4 v7, 0x1

    :goto_6
    invoke-static {v5, v7}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/ContentService;

    move-result-object v77

    .line 363
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 366
    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    new-instance v6, Lcom/android/server/MiuiLightsService;

    invoke-direct {v6, v5}, Lcom/android/server/MiuiLightsService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1

    .line 369
    .end local v100           #lights:Lcom/android/server/LightsService;
    .local v6, lights:Lcom/android/server/LightsService;
    :try_start_c
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_5f

    .line 371
    .end local v69           #battery:Lcom/android/server/BatteryService;
    .local v8, battery:Lcom/android/server/BatteryService;
    :try_start_d
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 373
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance v151, Lcom/android/server/VibratorService;

    move-object/from16 v0, v151

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_60

    .line 375
    .end local v150           #vibrator:Lcom/android/server/VibratorService;
    .local v151, vibrator:Lcom/android/server/VibratorService;
    :try_start_e
    const-string v7, "vibrator"

    move-object/from16 v0, v151

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 379
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/display/DisplayManagerService;)V

    .line 382
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    new-instance v15, Lcom/android/server/AlarmManagerService;

    invoke-direct {v15, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_61

    .line 384
    .end local v64           #alarm:Lcom/android/server/AlarmManagerService;
    .local v15, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_f
    const-string v7, "alarm"

    invoke-static {v7, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 386
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v16

    move-object v12, v5

    move-object v13, v8

    move-object v14, v4

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 390
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    new-instance v19, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_62

    .line 393
    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .local v19, inputManager:Lcom/android/server/input/InputManagerService;
    :try_start_10
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v7, 0x1

    move/from16 v0, v92

    if-eq v0, v7, :cond_23

    const/16 v22, 0x1

    :goto_7
    if-nez v93, :cond_24

    const/16 v23, 0x1

    :goto_8
    move-object/from16 v16, v5

    move-object/from16 v17, v4

    move-object/from16 v18, v10

    invoke-static/range {v16 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v164

    .line 398
    const-string v7, "window"

    move-object/from16 v0, v164

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 399
    const-string v7, "input"

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 401
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v164

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 403
    invoke-virtual/range {v164 .. v164}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 404
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/input/InputManagerService;->start()V

    .line 406
    move-object/from16 v0, v164

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 407
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 412
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 413
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_2

    :goto_9
    move-object/from16 v135, v136

    .end local v136           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v135       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v150, v151

    .end local v151           #vibrator:Lcom/android/server/VibratorService;
    .restart local v150       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v98, v99

    .line 427
    .end local v80           #cryptState:Ljava/lang/String;
    .end local v93           #firstBoot:Z
    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    :goto_a
    const/16 v83, 0x0

    .line 428
    .local v83, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v132, 0x0

    .line 429
    .local v132, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v95, 0x0

    .line 430
    .local v95, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v65, 0x0

    .line 431
    .local v65, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v114, 0x0

    .line 432
    .local v114, notification:Lcom/android/server/NotificationManagerService;
    const/16 v154, 0x0

    .line 433
    .local v154, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v101, 0x0

    .line 434
    .local v101, location:Lcom/android/server/LocationManagerService;
    const/16 v78, 0x0

    .line 435
    .local v78, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v140, 0x0

    .line 436
    .local v140, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v103, 0x0

    .line 437
    .local v103, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v88, 0x0

    .line 441
    .local v88, dreamy:Lcom/android/server/dreams/DreamManagerService;
    const/16 v152, 0x0

    .line 445
    .local v152, vzwLocMgrObj:Ljava/lang/Object;
    const/4 v7, 0x1

    move/from16 v0, v92

    if-eq v0, v7, :cond_5

    .line 447
    :try_start_11
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    new-instance v96, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v96

    move-object/from16 v1, v164

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_3

    .line 449
    .end local v95           #imm:Lcom/android/server/InputMethodManagerService;
    .local v96, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_12
    const-string v7, "input_method"

    move-object/from16 v0, v96

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_58

    move-object/from16 v95, v96

    .line 455
    .end local v96           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v95       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_b
    :try_start_13
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_4

    .line 464
    :cond_5
    :goto_c
    :try_start_14
    invoke-virtual/range {v164 .. v164}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_5

    .line 470
    :goto_d
    :try_start_15
    invoke-interface/range {v116 .. v116}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_6

    .line 476
    :goto_e
    :try_start_16
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x1040411

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v7, v9, v11}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_57

    .line 483
    :goto_f
    const/4 v7, 0x1

    move/from16 v0, v92

    if-eq v0, v7, :cond_29

    .line 484
    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 490
    :try_start_17
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    new-instance v107, Lcom/android/server/MountService;

    move-object/from16 v0, v107

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_7

    .line 492
    .end local v106           #mountService:Lcom/android/server/MountService;
    .local v107, mountService:Lcom/android/server/MountService;
    :try_start_18
    const-string v7, "mount"

    move-object/from16 v0, v107

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_56

    move-object/from16 v106, v107

    .line 499
    .end local v107           #mountService:Lcom/android/server/MountService;
    .restart local v106       #mountService:Lcom/android/server/MountService;
    :cond_6
    :goto_10
    :try_start_19
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v104, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v104

    invoke-direct {v0, v5}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_8

    .line 501
    .end local v103           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v104, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_1a
    const-string v7, "lock_settings"

    move-object/from16 v0, v104

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_55

    move-object/from16 v103, v104

    .line 507
    .end local v104           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v103       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_11
    :try_start_1b
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    new-instance v84, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v84

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_9

    .line 509
    .end local v83           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v84, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_1c
    const-string v7, "device_policy"

    move-object/from16 v0, v84

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_54

    move-object/from16 v83, v84

    .line 515
    .end local v84           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v83       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_12
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 516
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/lge/cappuccino/IMdm;->launchService(Landroid/content/Context;)V

    .line 521
    :cond_7
    :try_start_1d
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    new-instance v133, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v133

    move-object/from16 v1, v164

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_a

    .line 523
    .end local v132           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v133, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_1e
    const-string v7, "statusbar"

    move-object/from16 v0, v133

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_53

    move-object/from16 v132, v133

    .line 529
    .end local v133           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v132       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_13
    :try_start_1f
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ServerThread;->addClipServiceExtra()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_b

    .line 537
    :goto_14
    :try_start_20
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 539
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_c

    .line 545
    :goto_15
    :try_start_21
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    new-instance v141, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v141

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_d

    .line 547
    .end local v140           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v141, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_22
    const-string v7, "textservices"

    move-object/from16 v0, v141

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_52

    move-object/from16 v140, v141

    .line 553
    .end local v141           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v140       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_16
    :try_start_23
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    new-instance v111, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v111

    move-object/from16 v1, v30

    invoke-direct {v0, v5, v1, v15}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_e

    .line 555
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v111, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_24
    const-string v7, "netstats"

    move-object/from16 v0, v111

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_51

    move-object/from16 v29, v111

    .line 561
    .end local v111           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_17
    :try_start_25
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_f

    .line 565
    .end local v110           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_26
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_50

    .line 571
    :goto_18
    :try_start_27
    const-string v7, "SystemServer"

    const-string v9, "Regulatory Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    new-instance v127, Lcom/android/server/RegulatoryObserver;

    move-object/from16 v0, v127

    invoke-direct {v0, v5}, Lcom/android/server/RegulatoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_10

    .end local v126           #regulatory:Lcom/android/server/RegulatoryObserver;
    .local v127, regulatory:Lcom/android/server/RegulatoryObserver;
    move-object/from16 v126, v127

    .line 579
    .end local v127           #regulatory:Lcom/android/server/RegulatoryObserver;
    .restart local v126       #regulatory:Lcom/android/server/RegulatoryObserver;
    :goto_19
    :try_start_28
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    new-instance v163, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v163

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_11

    .line 581
    .end local v162           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v163, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_29
    const-string v7, "wifip2p"

    move-object/from16 v0, v163

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_4f

    move-object/from16 v162, v163

    .line 586
    .end local v163           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v162       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1a
    :try_start_2a
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    new-instance v157, Lcom/android/server/WifiService;

    move-object/from16 v0, v157

    invoke-direct {v0, v5}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_12

    .line 588
    .end local v156           #wifi:Lcom/android/server/WifiService;
    .local v157, wifi:Lcom/android/server/WifiService;
    :try_start_2b
    const-string v7, "wifi"

    move-object/from16 v0, v157

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_4e

    move-object/from16 v156, v157

    .line 595
    .end local v157           #wifi:Lcom/android/server/WifiService;
    .restart local v156       #wifi:Lcom/android/server/WifiService;
    :goto_1b
    sget-boolean v7, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v7, :cond_8

    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->useWiFiOffloading()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 597
    :try_start_2c
    const-string v7, "SystemServer"

    const-string v9, "WiFi Offloading Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-static {}, Lcom/lge/wifi_iface/WifiIfaceManager;->getWiFiOffloadingIfaceIface()Lcom/lge/wifi_iface/WiFiOffloadingIfaceIface;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 599
    invoke-static {}, Lcom/lge/wifi_iface/WifiIfaceManager;->getWiFiOffloadingIfaceIface()Lcom/lge/wifi_iface/WiFiOffloadingIfaceIface;

    move-result-object v161

    .line 600
    .local v161, wifiOffloadingIfaceIface:Lcom/lge/wifi_iface/WiFiOffloadingIfaceIface;
    move-object/from16 v0, v161

    invoke-interface {v0, v5}, Lcom/lge/wifi_iface/WiFiOffloadingIfaceIface;->startService(Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_13

    .line 609
    .end local v161           #wifiOffloadingIfaceIface:Lcom/lge/wifi_iface/WiFiOffloadingIfaceIface;
    :cond_8
    :goto_1c
    sget-boolean v7, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v7, :cond_9

    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->useWiFiAggregation()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 611
    :try_start_2d
    const-string v7, "SystemServer"

    const-string v9, "WiFi Aggregation Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-static {}, Lcom/lge/wifi_iface/WifiIfaceManager;->getWiFiAggregationIfaceIface()Lcom/lge/wifi_iface/WiFiAggregationIfaceIface;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 613
    invoke-static {}, Lcom/lge/wifi_iface/WifiIfaceManager;->getWiFiAggregationIfaceIface()Lcom/lge/wifi_iface/WiFiAggregationIfaceIface;

    move-result-object v158

    .line 614
    .local v158, wifiAggregationIfaceIface:Lcom/lge/wifi_iface/WiFiAggregationIfaceIface;
    move-object/from16 v0, v158

    invoke-interface {v0, v5}, Lcom/lge/wifi_iface/WiFiAggregationIfaceIface;->startService(Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_14

    .line 623
    .end local v158           #wifiAggregationIfaceIface:Lcom/lge/wifi_iface/WiFiAggregationIfaceIface;
    :cond_9
    :goto_1d
    sget-boolean v7, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v7, :cond_a

    .line 625
    :try_start_2e
    const-string v7, "SystemServer"

    const-string v9, "Wifi Ext Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-static {}, Lcom/lge/wifi_iface/WifiIfaceManager;->getWifiExtServiceIface()Lcom/lge/wifi_iface/WifiExtSvcIfaceIface;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 627
    invoke-static {}, Lcom/lge/wifi_iface/WifiIfaceManager;->getWifiExtServiceIface()Lcom/lge/wifi_iface/WifiExtSvcIfaceIface;

    move-result-object v159

    .line 628
    .local v159, wifiExtServiceIface:Lcom/lge/wifi_iface/WifiExtSvcIfaceIface;
    move-object/from16 v0, v159

    invoke-interface {v0, v5}, Lcom/lge/wifi_iface/WifiExtSvcIfaceIface;->startService(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_15

    .line 637
    .end local v159           #wifiExtServiceIface:Lcom/lge/wifi_iface/WifiExtSvcIfaceIface;
    :cond_a
    :goto_1e
    sget-boolean v7, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v7, :cond_b

    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->useMobileHotspot()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 639
    :try_start_2f
    const-string v7, "SystemServer"

    const-string v9, "Mobile Hotspot Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-static {}, Lcom/lge/wifi_iface/WifiIfaceManager;->getWifiMHPIfaceIface()Lcom/lge/wifi_iface/WifiMHPIfaceIface;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 641
    invoke-static {}, Lcom/lge/wifi_iface/WifiIfaceManager;->getWifiMHPIfaceIface()Lcom/lge/wifi_iface/WifiMHPIfaceIface;

    move-result-object v160

    .line 642
    .local v160, wifiMHPIfaceIface:Lcom/lge/wifi_iface/WifiMHPIfaceIface;
    move-object/from16 v0, v160

    invoke-interface {v0, v5}, Lcom/lge/wifi_iface/WifiMHPIfaceIface;->startService(Landroid/content/Context;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_16

    .line 651
    .end local v160           #wifiMHPIfaceIface:Lcom/lge/wifi_iface/WifiMHPIfaceIface;
    :cond_b
    :goto_1f
    :try_start_30
    const-string v7, "persist.cne.feature"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v149

    .line 652
    .local v149, value:I
    if-lez v149, :cond_27

    const/4 v7, 0x7

    move/from16 v0, v149

    if-ge v0, v7, :cond_27

    .line 653
    const-string v7, "SystemServer"

    const-string v9, "QcConnectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    new-instance v120, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/services-ext.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object/from16 v0, v120

    invoke-direct {v0, v7, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 657
    .local v120, qcsClassLoader:Ldalvik/system/PathClassLoader;
    const-string v7, "com.android.server.QcConnectivityService"

    move-object/from16 v0, v120

    invoke-virtual {v0, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v119

    .line 659
    .local v119, qcsClass:Ljava/lang/Class;
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    const-class v11, Landroid/os/INetworkManagementService;

    aput-object v11, v7, v9

    const/4 v9, 0x2

    const-class v11, Landroid/net/INetworkStatsService;

    aput-object v11, v7, v9

    const/4 v9, 0x3

    const-class v11, Landroid/net/INetworkPolicyManager;

    aput-object v11, v7, v9

    move-object/from16 v0, v119

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v121

    .line 662
    .local v121, qcsConstructor:Ljava/lang/reflect/Constructor;
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    const/4 v9, 0x1

    aput-object v30, v7, v9

    const/4 v9, 0x2

    aput-object v29, v7, v9

    const/4 v9, 0x3

    aput-object v25, v7, v9

    move-object/from16 v0, v121

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v118

    .line 664
    move-object/from16 v0, v118

    check-cast v0, Lcom/android/server/ConnectivityService;

    move-object/from16 v75, v0

    .line 670
    .end local v118           #qcCon:Ljava/lang/Object;
    .end local v119           #qcsClass:Ljava/lang/Class;
    .end local v120           #qcsClassLoader:Ldalvik/system/PathClassLoader;
    .end local v121           #qcsConstructor:Ljava/lang/reflect/Constructor;
    :goto_20
    if-eqz v75, :cond_c

    .line 671
    const-string v7, "connectivity"

    move-object/from16 v0, v75

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 672
    move-object/from16 v0, v29

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 673
    move-object/from16 v0, v25

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 674
    invoke-virtual/range {v156 .. v156}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 675
    invoke-virtual/range {v162 .. v162}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_17

    .line 682
    .end local v149           #value:I
    :cond_c
    :goto_21
    :try_start_31
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v130

    .line 684
    const-string v7, "servicediscovery"

    move-object/from16 v0, v130

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_18

    .line 691
    :goto_22
    :try_start_32
    const-string v7, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    new-instance v138, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v138

    invoke-direct {v0, v5}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_19

    .line 693
    .end local v137           #throttle:Lcom/android/server/ThrottleService;
    .local v138, throttle:Lcom/android/server/ThrottleService;
    :try_start_33
    const-string v7, "throttle"

    move-object/from16 v0, v138

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_4d

    move-object/from16 v137, v138

    .line 700
    .end local v138           #throttle:Lcom/android/server/ThrottleService;
    .restart local v137       #throttle:Lcom/android/server/ThrottleService;
    :goto_23
    :try_start_34
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1a

    .line 712
    :goto_24
    if-eqz v106, :cond_d

    .line 713
    invoke-virtual/range {v106 .. v106}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 717
    :cond_d
    if-eqz v62, :cond_e

    .line 718
    :try_start_35
    invoke-virtual/range {v62 .. v62}, Landroid/accounts/AccountManagerService;->systemReady()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1b

    .line 724
    :cond_e
    :goto_25
    if-eqz v77, :cond_f

    .line 725
    :try_start_36
    invoke-virtual/range {v77 .. v77}, Landroid/content/ContentService;->systemReady()V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1c

    .line 731
    :cond_f
    :goto_26
    :try_start_37
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    new-instance v115, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v115

    move-object/from16 v1, v132

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1d

    .line 733
    .end local v114           #notification:Lcom/android/server/NotificationManagerService;
    .local v115, notification:Lcom/android/server/NotificationManagerService;
    :try_start_38
    const-string v7, "notification"

    move-object/from16 v0, v115

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 734
    move-object/from16 v0, v25

    move-object/from16 v1, v115

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_4c

    move-object/from16 v114, v115

    .line 740
    .end local v115           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v114       #notification:Lcom/android/server/NotificationManagerService;
    :goto_27
    :try_start_39
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_1e

    .line 748
    :goto_28
    :try_start_3a
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    new-instance v102, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v102

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_1f

    .line 750
    .end local v101           #location:Lcom/android/server/LocationManagerService;
    .local v102, location:Lcom/android/server/LocationManagerService;
    :try_start_3b
    const-string v7, "location"

    move-object/from16 v0, v102

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_4b

    move-object/from16 v101, v102

    .line 756
    .end local v102           #location:Lcom/android/server/LocationManagerService;
    .restart local v101       #location:Lcom/android/server/LocationManagerService;
    :goto_29
    :try_start_3c
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    new-instance v79, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v79

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_20

    .line 758
    .end local v78           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v79, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_3d
    const-string v7, "country_detector"

    move-object/from16 v0, v79

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_4a

    move-object/from16 v78, v79

    .line 764
    .end local v79           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v78       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_2a
    :try_start_3e
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const-string v7, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_21

    .line 772
    :goto_2b
    :try_start_3f
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v11, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v11}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_22

    .line 779
    :goto_2c
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111002b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 782
    :try_start_40
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    if-nez v33, :cond_10

    .line 784
    new-instance v155, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v155

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_23

    .line 785
    .end local v154           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v155, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_41
    const-string v7, "wallpaper"

    move-object/from16 v0, v155

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_49

    move-object/from16 v154, v155

    .line 792
    .end local v155           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v154       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_10
    :goto_2d
    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 794
    :try_start_42
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_24

    .line 802
    :cond_11
    :goto_2e
    :try_start_43
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    new-instance v87, Lcom/android/server/DockObserver;

    move-object/from16 v0, v87

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_25

    .end local v86           #dock:Lcom/android/server/DockObserver;
    .local v87, dock:Lcom/android/server/DockObserver;
    move-object/from16 v86, v87

    .line 810
    .end local v87           #dock:Lcom/android/server/DockObserver;
    .restart local v86       #dock:Lcom/android/server/DockObserver;
    :goto_2f
    :try_start_44
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v19

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_26

    .line 819
    :goto_30
    :try_start_45
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    new-instance v148, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v148

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_27

    .line 822
    .end local v147           #usb:Lcom/android/server/usb/UsbService;
    .local v148, usb:Lcom/android/server/usb/UsbService;
    :try_start_46
    const-string v7, "usb"

    move-object/from16 v0, v148

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v7, "miui.usb.service"

    new-instance v9, Lcom/miui/server/MiuiUsbService;

    invoke-direct {v9, v5}, Lcom/miui/server/MiuiUsbService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_48

    move-object/from16 v147, v148

    .line 828
    .end local v148           #usb:Lcom/android/server/usb/UsbService;
    .restart local v147       #usb:Lcom/android/server/usb/UsbService;
    :goto_31
    const-string v7, "security"

    new-instance v9, Lcom/miui/server/SecurityManagerService;

    invoke-direct {v9, v5}, Lcom/miui/server/SecurityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :try_start_47
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    new-instance v129, Lcom/android/server/SerialService;

    move-object/from16 v0, v129

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_28

    .line 831
    .end local v128           #serial:Lcom/android/server/SerialService;
    .local v129, serial:Lcom/android/server/SerialService;
    :try_start_48
    const-string v7, "serial"

    move-object/from16 v0, v129

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_47

    move-object/from16 v128, v129

    .line 837
    .end local v129           #serial:Lcom/android/server/SerialService;
    .restart local v128       #serial:Lcom/android/server/SerialService;
    :goto_32
    :try_start_49
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    new-instance v143, Lcom/android/server/TwilightService;

    move-object/from16 v0, v143

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_29

    .end local v142           #twilight:Lcom/android/server/TwilightService;
    .local v143, twilight:Lcom/android/server/TwilightService;
    move-object/from16 v142, v143

    .line 844
    .end local v143           #twilight:Lcom/android/server/TwilightService;
    .restart local v142       #twilight:Lcom/android/server/TwilightService;
    :goto_33
    :try_start_4a
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    new-instance v146, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v146

    move-object/from16 v1, v142

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2a

    .end local v145           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v146, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v145, v146

    .line 852
    .end local v146           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v145       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_34
    :try_start_4b
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2b

    .line 860
    :goto_35
    :try_start_4c
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    new-instance v66, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v66

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2c

    .line 862
    .end local v65           #appWidget:Lcom/android/server/AppWidgetService;
    .local v66, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_4d
    const-string v7, "appwidget"

    move-object/from16 v0, v66

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_46

    move-object/from16 v65, v66

    .line 868
    .end local v66           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v65       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_36
    :try_start_4e
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    new-instance v125, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v125

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_2d

    .end local v124           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v125, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v124, v125

    .line 875
    .end local v125           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v124       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_37
    :try_start_4f
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_2e

    .line 882
    :goto_38
    :try_start_50
    const-string v7, "SystemServer"

    const-string v9, "AtCmdFwd Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    new-instance v68, Lcom/android/internal/atfwd/AtCmdFwdService;

    move-object/from16 v0, v68

    invoke-direct {v0, v5}, Lcom/android/internal/atfwd/AtCmdFwdService;-><init>(Landroid/content/Context;)V

    .line 884
    .local v68, atfwd:Lcom/android/internal/atfwd/AtCmdFwdService;
    const-string v7, "AtCmdFwd"

    move-object/from16 v0, v68

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_2f

    .line 894
    .end local v68           #atfwd:Lcom/android/internal/atfwd/AtCmdFwdService;
    :goto_39
    :try_start_51
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_30

    .line 902
    :goto_3a
    :try_start_52
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    new-instance v113, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v113

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_31

    .end local v112           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v113, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v112, v113

    .line 909
    .end local v113           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v112       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_3b
    :try_start_53
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    new-instance v73, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v73

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_32

    .line 911
    .end local v72           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v73, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_54
    const-string v7, "commontime_management"

    move-object/from16 v0, v73

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_45

    move-object/from16 v72, v73

    .line 917
    .end local v73           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v72       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_3c
    :try_start_55
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_33

    .line 923
    :goto_3d
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110040

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 926
    :try_start_56
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    new-instance v89, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v89

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_34

    .line 929
    .end local v88           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .local v89, dreamy:Lcom/android/server/dreams/DreamManagerService;
    :try_start_57
    const-string v7, "dreams"

    move-object/from16 v0, v89

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_44

    move-object/from16 v88, v89

    .line 936
    .end local v89           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v88       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    :cond_12
    :goto_3e
    sget-boolean v7, Lcom/lge/config/ConfigBuildFlags;->CAPP_THEMEICON:Z

    if-eqz v7, :cond_13

    .line 938
    :try_start_58
    const-string v7, "SystemServer"

    const-string v9, "ThemeIconManager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const-string v7, "themeicon"

    new-instance v9, Lcom/android/server/thm/ThemeIconManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/thm/ThemeIconManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_35

    .line 948
    :cond_13
    :goto_3f
    const-string v7, "VZW"

    const-string v9, "ro.build.target_operator"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 951
    :try_start_59
    const-string v7, "vzwconnectivity"

    const-string v9, "add vzwconnectivity service"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const-string v7, "vzwconnectivity"

    new-instance v9, Lcom/verizon/net/ConnectivityService;

    invoke-direct {v9, v5}, Lcom/verizon/net/ConnectivityService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_36

    .line 961
    :cond_14
    :goto_40
    const-string v7, "VZW"

    const-string v9, "ro.build.target_operator"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 964
    :try_start_5a
    const-string v139, "/data/dalvik-cache"

    .line 965
    .local v139, tmpdir:Ljava/lang/String;
    const-string v7, "SystemServer"

    const-string v9, "loading Vzw LocationManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    new-instance v81, Ldalvik/system/DexClassLoader;

    const-string v7, "/system/framework/vzwlbs.jar"

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    move-object/from16 v0, v81

    move-object/from16 v1, v139

    invoke-direct {v0, v7, v1, v9, v11}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 968
    .local v81, dclVzwLocMgr:Ldalvik/system/DexClassLoader;
    const-string v7, "com.vzw.location.service.VzwLocationManagerService"

    move-object/from16 v0, v81

    invoke-virtual {v0, v7}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v134

    .line 969
    .local v134, svcVzwLocMgr:Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/Object;

    move-object/from16 v67, v0

    const/4 v7, 0x0

    aput-object v5, v67, v7

    .line 970
    .local v67, arglist:[Ljava/lang/Object;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v7, v9

    move-object/from16 v0, v134

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v61

    .line 971
    .local v61, VzwLocMgrConstructor:Ljava/lang/reflect/Constructor;
    const-string v7, "SystemServer"

    const-string v9, "Instantiating VzwLocationManagerService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    move-object/from16 v0, v61

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v94

    check-cast v94, Landroid/os/IBinder;

    .line 974
    .local v94, ib:Landroid/os/IBinder;
    move-object/from16 v152, v94

    .line 976
    .local v152, vzwLocMgrObj:Landroid/os/IBinder;
    const-string v7, "SystemServer"

    const-string v9, "VzwLocation Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const-string v7, "VZW_LOCATION_SERVICE"

    move-object/from16 v0, v94

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_37

    .line 986
    .end local v61           #VzwLocMgrConstructor:Ljava/lang/reflect/Constructor;
    .end local v67           #arglist:[Ljava/lang/Object;
    .end local v81           #dclVzwLocMgr:Ldalvik/system/DexClassLoader;
    .end local v94           #ib:Landroid/os/IBinder;
    .end local v134           #svcVzwLocMgr:Ljava/lang/Class;
    .end local v139           #tmpdir:Ljava/lang/String;
    .end local v152           #vzwLocMgrObj:Landroid/os/IBinder;
    :cond_15
    :goto_41
    invoke-static {}, Lcom/android/internal/telephony/uicc/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v9, "KT"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 989
    :try_start_5b
    const-string v7, "KT UCA"

    const-string v9, "KT UCA Service"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const-string v7, "ktuca"

    new-instance v9, Landroid/ktuca/KtUcaService;

    invoke-direct {v9, v5}, Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_38

    .line 998
    :cond_16
    :goto_42
    sget-boolean v7, Lcom/lge/config/ThreelmMdmConfig;->THREELM_MDM:Z

    if-eqz v7, :cond_17

    .line 1000
    move-object/from16 v0, v82

    invoke-virtual {v0, v5}, Lcom/android/server/DeviceManager3LMService;->init(Landroid/content/Context;)V

    .line 1003
    const-string v7, "ro.3LM.extended"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_17

    .line 1004
    const-string v7, "SystemServer"

    const-string v9, "3LM OEM Extended Api Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const-string v7, "OemExtendedApi3LM"

    new-instance v9, Lcom/android/server/OemExtendedApi3LMService;

    const/4 v11, 0x0

    invoke-direct {v9, v5, v11}, Lcom/android/server/OemExtendedApi3LMService;-><init>(Landroid/content/Context;Landroid/os/IDeviceManagerRestrictable3LM;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1014
    :cond_17
    :goto_43
    invoke-virtual/range {v164 .. v164}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v47

    .line 1015
    .local v47, safeMode:Z
    if-eqz v47, :cond_28

    .line 1016
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1018
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 1020
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1029
    :goto_44
    :try_start_5c
    invoke-virtual/range {v150 .. v150}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_39

    .line 1035
    :goto_45
    :try_start_5d
    invoke-virtual/range {v103 .. v103}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_3a

    .line 1040
    :goto_46
    if-eqz v83, :cond_18

    .line 1042
    :try_start_5e
    invoke-virtual/range {v83 .. v83}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_3b

    .line 1048
    :cond_18
    :goto_47
    if-eqz v114, :cond_19

    .line 1050
    :try_start_5f
    invoke-virtual/range {v114 .. v114}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_3c

    .line 1057
    :cond_19
    :goto_48
    :try_start_60
    invoke-virtual/range {v164 .. v164}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_3d

    .line 1062
    :goto_49
    if-eqz v47, :cond_1a

    .line 1063
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1069
    :cond_1a
    invoke-virtual/range {v164 .. v164}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v74

    .line 1070
    .local v74, config:Landroid/content/res/Configuration;
    new-instance v105, Landroid/util/DisplayMetrics;

    invoke-direct/range {v105 .. v105}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1071
    .local v105, metrics:Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v153

    check-cast v153, Landroid/view/WindowManager;

    .line 1072
    .local v153, w:Landroid/view/WindowManager;
    invoke-interface/range {v153 .. v153}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v105

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1073
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v74

    move-object/from16 v1, v105

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1076
    :try_start_61
    move-object/from16 v0, v142

    move-object/from16 v1, v88

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_3e

    .line 1082
    :goto_4a
    :try_start_62
    invoke-interface/range {v116 .. v116}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_3f

    .line 1088
    :goto_4b
    :try_start_63
    move/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_40

    .line 1096
    :goto_4c
    sget-boolean v7, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-eqz v7, :cond_1b

    .line 1098
    :try_start_64
    const-string v7, "SystemServer"

    const-string v9, "SplitWindowPolicy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    invoke-static {v5}, Lcom/lge/loader/splitwindow/SplitWindowCreatorHelper;->launchService(Landroid/content/Context;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_41

    .line 1112
    :cond_1b
    :goto_4d
    sget-boolean v7, Lcom/lge/config/ConfigBuildFlags;->CAPP_ZDI_O:Z

    if-eqz v7, :cond_1c

    .line 1114
    :try_start_65
    const-string v7, "SystemServer"

    const-string v9, "InteractionManagerService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    invoke-static {v5}, Lcom/lge/loader/interaction/InteractionManagerLoader;->launchService(Landroid/content/Context;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_42

    .line 1123
    :cond_1c
    :goto_4e
    move-object/from16 v34, v5

    .line 1124
    .local v34, contextF:Landroid/content/Context;
    move-object/from16 v35, v106

    .line 1125
    .local v35, mountServiceF:Lcom/android/server/MountService;
    move-object/from16 v36, v8

    .line 1126
    .local v36, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v37, v30

    .line 1127
    .local v37, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v38, v29

    .line 1128
    .local v38, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v39, v25

    .line 1129
    .local v39, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v40, v75

    .line 1130
    .local v40, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v41, v86

    .line 1131
    .local v41, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v42, v147

    .line 1132
    .local v42, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v53, v137

    .line 1133
    .local v53, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v43, v142

    .line 1134
    .local v43, twilightF:Lcom/android/server/TwilightService;
    move-object/from16 v44, v145

    .line 1135
    .local v44, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v46, v65

    .line 1136
    .local v46, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v48, v154

    .line 1137
    .local v48, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v49, v95

    .line 1138
    .local v49, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v45, v124

    .line 1139
    .local v45, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v51, v101

    .line 1140
    .local v51, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v52, v78

    .line 1141
    .local v52, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v54, v112

    .line 1142
    .local v54, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v55, v72

    .line 1143
    .local v55, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v56, v140

    .line 1144
    .local v56, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v50, v132

    .line 1145
    .local v50, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v57, v88

    .line 1146
    .local v57, dreamyF:Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v58, v19

    .line 1147
    .local v58, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v59, v135

    .line 1148
    .local v59, telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v60, v108

    .line 1159
    .local v60, msimTelephonyRegistryF:Lcom/android/server/MSimTelephonyRegistry;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$3;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v60}, Lcom/android/server/ServerThread$3;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/MSimTelephonyRegistry;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1316
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 1317
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    :cond_1d
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1321
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    return-void

    .line 148
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v5           #context:Landroid/content/Context;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v20           #uiHandler:Landroid/os/Handler;
    .end local v21           #wmHandler:Landroid/os/Handler;
    .end local v24           #onlyCore:Z
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v30           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v33           #headless:Z
    .end local v34           #contextF:Landroid/content/Context;
    .end local v35           #mountServiceF:Lcom/android/server/MountService;
    .end local v36           #batteryF:Lcom/android/server/BatteryService;
    .end local v37           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v38           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v39           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v41           #dockF:Lcom/android/server/DockObserver;
    .end local v42           #usbF:Lcom/android/server/usb/UsbService;
    .end local v43           #twilightF:Lcom/android/server/TwilightService;
    .end local v44           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v45           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v46           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v47           #safeMode:Z
    .end local v48           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v49           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v50           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v51           #locationF:Lcom/android/server/LocationManagerService;
    .end local v52           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v53           #throttleF:Lcom/android/server/ThrottleService;
    .end local v54           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v55           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v56           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v57           #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .end local v58           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v59           #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .end local v60           #msimTelephonyRegistryF:Lcom/android/server/MSimTelephonyRegistry;
    .end local v62           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v65           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v70           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v72           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v74           #config:Landroid/content/res/Configuration;
    .end local v75           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v77           #contentService:Landroid/content/ContentService;
    .end local v78           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v82           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v83           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v86           #dock:Lcom/android/server/DockObserver;
    .end local v88           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v92           #factoryTest:I
    .end local v95           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .end local v101           #location:Lcom/android/server/LocationManagerService;
    .end local v103           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v105           #metrics:Landroid/util/DisplayMetrics;
    .end local v106           #mountService:Lcom/android/server/MountService;
    .end local v108           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .end local v112           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v114           #notification:Lcom/android/server/NotificationManagerService;
    .end local v116           #pm:Landroid/content/pm/IPackageManager;
    .end local v124           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v126           #regulatory:Lcom/android/server/RegulatoryObserver;
    .end local v128           #serial:Lcom/android/server/SerialService;
    .end local v130           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v132           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v135           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v137           #throttle:Lcom/android/server/ThrottleService;
    .end local v140           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v142           #twilight:Lcom/android/server/TwilightService;
    .end local v144           #uiHandlerThread:Landroid/os/HandlerThread;
    .end local v145           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v147           #usb:Lcom/android/server/usb/UsbService;
    .end local v150           #vibrator:Lcom/android/server/VibratorService;
    .end local v153           #w:Landroid/view/WindowManager;
    .end local v154           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v156           #wifi:Lcom/android/server/WifiService;
    .end local v162           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v164           #wm:Lcom/android/server/wm/WindowManagerService;
    .end local v165           #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_1e
    const/16 v123, 0x0

    goto/16 :goto_0

    .line 154
    .restart local v123       #reboot:Z
    :cond_1f
    const/16 v122, 0x0

    .restart local v122       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 307
    .end local v122           #reason:Ljava/lang/String;
    .end local v123           #reboot:Z
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    .restart local v5       #context:Landroid/content/Context;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v20       #uiHandler:Landroid/os/Handler;
    .restart local v21       #wmHandler:Landroid/os/Handler;
    .restart local v24       #onlyCore:Z
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v30       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v33       #headless:Z
    .restart local v62       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v64       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v69       #battery:Lcom/android/server/BatteryService;
    .restart local v70       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v72       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v75       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v77       #contentService:Landroid/content/ContentService;
    .restart local v80       #cryptState:Ljava/lang/String;
    .restart local v82       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v86       #dock:Lcom/android/server/DockObserver;
    .restart local v92       #factoryTest:I
    .restart local v97       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v100       #lights:Lcom/android/server/LightsService;
    .restart local v106       #mountService:Lcom/android/server/MountService;
    .restart local v108       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v110       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v112       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v116       #pm:Landroid/content/pm/IPackageManager;
    .restart local v118       #qcCon:Ljava/lang/Object;
    .restart local v124       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v126       #regulatory:Lcom/android/server/RegulatoryObserver;
    .restart local v128       #serial:Lcom/android/server/SerialService;
    .restart local v130       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v136       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v137       #throttle:Lcom/android/server/ThrottleService;
    .restart local v142       #twilight:Lcom/android/server/TwilightService;
    .restart local v144       #uiHandlerThread:Landroid/os/HandlerThread;
    .restart local v145       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v147       #usb:Lcom/android/server/usb/UsbService;
    .restart local v150       #vibrator:Lcom/android/server/VibratorService;
    .restart local v156       #wifi:Lcom/android/server/WifiService;
    .restart local v162       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v164       #wm:Lcom/android/server/wm/WindowManagerService;
    .restart local v165       #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_20
    :try_start_66
    const-string v7, "1"

    move-object/from16 v0, v80

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 308
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 321
    :cond_21
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 355
    .restart local v93       #firstBoot:Z
    :catch_0
    move-exception v90

    .line 356
    .local v90, e:Ljava/lang/Throwable;
    :goto_4f
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v90

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catch Ljava/lang/RuntimeException; {:try_start_66 .. :try_end_66} :catch_1

    goto/16 :goto_5

    .line 422
    .end local v80           #cryptState:Ljava/lang/String;
    .end local v90           #e:Ljava/lang/Throwable;
    .end local v93           #firstBoot:Z
    :catch_1
    move-exception v90

    move-object/from16 v135, v136

    .end local v136           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v135       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v97

    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v64

    .end local v64           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v69

    .end local v69           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v100

    .end local v100           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v98, v99

    .line 423
    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .local v90, e:Ljava/lang/RuntimeException;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    :goto_50
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v90

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 360
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v90           #e:Ljava/lang/RuntimeException;
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .end local v135           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v64       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v69       #battery:Lcom/android/server/BatteryService;
    .restart local v80       #cryptState:Ljava/lang/String;
    .restart local v93       #firstBoot:Z
    .restart local v97       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v100       #lights:Lcom/android/server/LightsService;
    .restart local v136       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :cond_22
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 394
    .end local v64           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v69           #battery:Lcom/android/server/BatteryService;
    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v100           #lights:Lcom/android/server/LightsService;
    .end local v150           #vibrator:Lcom/android/server/VibratorService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v151       #vibrator:Lcom/android/server/VibratorService;
    :cond_23
    const/16 v22, 0x0

    goto/16 :goto_7

    :cond_24
    const/16 v23, 0x0

    goto/16 :goto_8

    .line 414
    :cond_25
    const/4 v7, 0x1

    move/from16 v0, v92

    if-ne v0, v7, :cond_26

    .line 415
    :try_start_67
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 422
    :catch_2
    move-exception v90

    move-object/from16 v135, v136

    .end local v136           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v135       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v150, v151

    .end local v151           #vibrator:Lcom/android/server/VibratorService;
    .restart local v150       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v98, v99

    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    goto :goto_50

    .line 417
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .end local v135           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v150           #vibrator:Lcom/android/server/VibratorService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v136       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v151       #vibrator:Lcom/android/server/VibratorService;
    :cond_26
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    new-instance v71, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v71

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_67
    .catch Ljava/lang/RuntimeException; {:try_start_67 .. :try_end_67} :catch_2

    .line 419
    .end local v70           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .local v71, bluetooth:Lcom/android/server/BluetoothManagerService;
    :try_start_68
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v71

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_68
    .catch Ljava/lang/RuntimeException; {:try_start_68 .. :try_end_68} :catch_63

    move-object/from16 v70, v71

    .end local v71           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v70       #bluetooth:Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_9

    .line 450
    .end local v80           #cryptState:Ljava/lang/String;
    .end local v93           #firstBoot:Z
    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .end local v136           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v151           #vibrator:Lcom/android/server/VibratorService;
    .restart local v65       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v78       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v83       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v88       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v95       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    .restart local v101       #location:Lcom/android/server/LocationManagerService;
    .restart local v103       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v114       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v132       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v135       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v150       #vibrator:Lcom/android/server/VibratorService;
    .local v152, vzwLocMgrObj:Ljava/lang/Object;
    .restart local v154       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3
    move-exception v90

    .line 451
    .local v90, e:Ljava/lang/Throwable;
    :goto_51
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 458
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v90

    .line 459
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 465
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v90

    .line 466
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 471
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v90

    .line 472
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 493
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v90

    .line 494
    .restart local v90       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 502
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v90

    .line 503
    .restart local v90       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 510
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v90

    .line 511
    .restart local v90       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 524
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v90

    .line 525
    .restart local v90       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 532
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v90

    .line 533
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 540
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v90

    .line 541
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 548
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v90

    .line 549
    .restart local v90       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 556
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v90

    .line 557
    .restart local v90       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 566
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v90

    move-object/from16 v25, v110

    .line 567
    .end local v110           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v90       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 574
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v90

    .line 575
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "starting RegulatoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 582
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v90

    .line 583
    .restart local v90       #e:Ljava/lang/Throwable;
    :goto_59
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 589
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v90

    .line 590
    .restart local v90       #e:Ljava/lang/Throwable;
    :goto_5a
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 602
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v90

    .line 603
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting WiFi Offloading Service"

    move-object/from16 v0, v90

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1c

    .line 616
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v90

    .line 617
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting WiFi Aggregation Service"

    move-object/from16 v0, v90

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1d

    .line 630
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v90

    .line 631
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Wifi Ext Service"

    move-object/from16 v0, v90

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e

    .line 644
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v90

    .line 645
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Mobile Hotspot Service"

    move-object/from16 v0, v90

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    .line 666
    .end local v90           #e:Ljava/lang/Throwable;
    .restart local v149       #value:I
    :cond_27
    :try_start_69
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    new-instance v76, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v76

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_69} :catch_17

    .end local v75           #connectivity:Lcom/android/server/ConnectivityService;
    .local v76, connectivity:Lcom/android/server/ConnectivityService;
    move-object/from16 v75, v76

    .end local v76           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v75       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_20

    .line 677
    .end local v118           #qcCon:Ljava/lang/Object;
    .end local v149           #value:I
    :catch_17
    move-exception v90

    .line 678
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 686
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v90

    .line 687
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 695
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v90

    .line 696
    .restart local v90       #e:Ljava/lang/Throwable;
    :goto_5b
    const-string v7, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 703
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v90

    .line 704
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 719
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v90

    .line 720
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 726
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v90

    .line 727
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 735
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v90

    .line 736
    .restart local v90       #e:Ljava/lang/Throwable;
    :goto_5c
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 743
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v90

    .line 744
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 751
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v90

    .line 752
    .restart local v90       #e:Ljava/lang/Throwable;
    :goto_5d
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 759
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v90

    .line 760
    .restart local v90       #e:Ljava/lang/Throwable;
    :goto_5e
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 767
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v90

    .line 768
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 775
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v90

    .line 776
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 787
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v90

    .line 788
    .restart local v90       #e:Ljava/lang/Throwable;
    :goto_5f
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 796
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v90

    .line 797
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 805
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v90

    .line 806
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 814
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v90

    .line 815
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 823
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v90

    .line 824
    .restart local v90       #e:Ljava/lang/Throwable;
    :goto_60
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 832
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v90

    .line 833
    .restart local v90       #e:Ljava/lang/Throwable;
    :goto_61
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v90

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    .line 839
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v90

    .line 840
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 847
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v90

    .line 848
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 855
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v90

    .line 856
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v90

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_35

    .line 863
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v90

    .line 864
    .restart local v90       #e:Ljava/lang/Throwable;
    :goto_62
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 870
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v90

    .line 871
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 877
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v90

    .line 878
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 885
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v90

    .line 886
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "starting AtCmdFwd Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 897
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_30
    move-exception v90

    .line 898
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 904
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v90

    .line 905
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 912
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v90

    .line 913
    .restart local v90       #e:Ljava/lang/Throwable;
    :goto_63
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 919
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_33
    move-exception v90

    .line 920
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 930
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_34
    move-exception v90

    .line 931
    .restart local v90       #e:Ljava/lang/Throwable;
    :goto_64
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 941
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_35
    move-exception v90

    .line 942
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting ThemeIconManager"

    move-object/from16 v0, v90

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3f

    .line 953
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_36
    move-exception v90

    .line 954
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "vzwconnectivity"

    const-string v9, "Failure starting vzwconnectivity service"

    move-object/from16 v0, v90

    invoke-static {v7, v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_40

    .line 978
    .end local v90           #e:Ljava/lang/Throwable;
    .end local v152           #vzwLocMgrObj:Ljava/lang/Object;
    :catch_37
    move-exception v91

    .line 979
    .local v91, ex:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Unable to load Vzw LocationManager Service or register as System Service"

    move-object/from16 v0, v91

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_41

    .line 992
    .end local v91           #ex:Ljava/lang/Throwable;
    :catch_38
    move-exception v90

    .line 993
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "KT UCA"

    const-string v9, "Failure starting KT UCA Service"

    move-object/from16 v0, v90

    invoke-static {v7, v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_42

    .line 1023
    .end local v90           #e:Ljava/lang/Throwable;
    .restart local v47       #safeMode:Z
    :cond_28
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_44

    .line 1030
    :catch_39
    move-exception v90

    .line 1031
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 1036
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_3a
    move-exception v90

    .line 1037
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 1043
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_3b
    move-exception v90

    .line 1044
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 1051
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_3c
    move-exception v90

    .line 1052
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 1058
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_3d
    move-exception v90

    .line 1059
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .line 1077
    .end local v90           #e:Ljava/lang/Throwable;
    .restart local v74       #config:Landroid/content/res/Configuration;
    .restart local v105       #metrics:Landroid/util/DisplayMetrics;
    .restart local v153       #w:Landroid/view/WindowManager;
    :catch_3e
    move-exception v90

    .line 1078
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a

    .line 1083
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_3f
    move-exception v90

    .line 1084
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b

    .line 1089
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_40
    move-exception v90

    .line 1090
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4c

    .line 1106
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_41
    move-exception v90

    .line 1107
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SplitWindowPolicy"

    move-object/from16 v0, v90

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4d

    .line 1116
    .end local v90           #e:Ljava/lang/Throwable;
    :catch_42
    move-exception v90

    .line 1117
    .restart local v90       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting InteractionManagerService"

    move-object/from16 v0, v90

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4e

    .line 338
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v47           #safeMode:Z
    .end local v65           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v74           #config:Landroid/content/res/Configuration;
    .end local v78           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v83           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v88           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v90           #e:Ljava/lang/Throwable;
    .end local v95           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .end local v101           #location:Lcom/android/server/LocationManagerService;
    .end local v103           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v105           #metrics:Landroid/util/DisplayMetrics;
    .end local v114           #notification:Lcom/android/server/NotificationManagerService;
    .end local v132           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v135           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v140           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v153           #w:Landroid/view/WindowManager;
    .end local v154           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v64       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v69       #battery:Lcom/android/server/BatteryService;
    .restart local v80       #cryptState:Ljava/lang/String;
    .restart local v93       #firstBoot:Z
    .restart local v97       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v100       #lights:Lcom/android/server/LightsService;
    .restart local v110       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v118       #qcCon:Ljava/lang/Object;
    .restart local v136       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_43
    move-exception v7

    goto/16 :goto_4

    .line 930
    .end local v64           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v69           #battery:Lcom/android/server/BatteryService;
    .end local v80           #cryptState:Ljava/lang/String;
    .end local v93           #firstBoot:Z
    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .end local v100           #lights:Lcom/android/server/LightsService;
    .end local v110           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v118           #qcCon:Ljava/lang/Object;
    .end local v136           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v65       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v78       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v83       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v89       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v95       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    .restart local v101       #location:Lcom/android/server/LocationManagerService;
    .restart local v103       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v114       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v132       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v135       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v152       #vzwLocMgrObj:Ljava/lang/Object;
    .restart local v154       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_44
    move-exception v90

    move-object/from16 v88, v89

    .end local v89           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v88       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_64

    .line 912
    .end local v72           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v73       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_45
    move-exception v90

    move-object/from16 v72, v73

    .end local v73           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v72       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_63

    .line 863
    .end local v65           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v66       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_46
    move-exception v90

    move-object/from16 v65, v66

    .end local v66           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v65       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_62

    .line 832
    .end local v128           #serial:Lcom/android/server/SerialService;
    .restart local v129       #serial:Lcom/android/server/SerialService;
    :catch_47
    move-exception v90

    move-object/from16 v128, v129

    .end local v129           #serial:Lcom/android/server/SerialService;
    .restart local v128       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_61

    .line 823
    .end local v147           #usb:Lcom/android/server/usb/UsbService;
    .restart local v148       #usb:Lcom/android/server/usb/UsbService;
    :catch_48
    move-exception v90

    move-object/from16 v147, v148

    .end local v148           #usb:Lcom/android/server/usb/UsbService;
    .restart local v147       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_60

    .line 787
    .end local v154           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v155       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_49
    move-exception v90

    move-object/from16 v154, v155

    .end local v155           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v154       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_5f

    .line 759
    .end local v78           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v79       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_4a
    move-exception v90

    move-object/from16 v78, v79

    .end local v79           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v78       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_5e

    .line 751
    .end local v101           #location:Lcom/android/server/LocationManagerService;
    .restart local v102       #location:Lcom/android/server/LocationManagerService;
    :catch_4b
    move-exception v90

    move-object/from16 v101, v102

    .end local v102           #location:Lcom/android/server/LocationManagerService;
    .restart local v101       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_5d

    .line 735
    .end local v114           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v115       #notification:Lcom/android/server/NotificationManagerService;
    :catch_4c
    move-exception v90

    move-object/from16 v114, v115

    .end local v115           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v114       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_5c

    .line 695
    .end local v137           #throttle:Lcom/android/server/ThrottleService;
    .restart local v138       #throttle:Lcom/android/server/ThrottleService;
    :catch_4d
    move-exception v90

    move-object/from16 v137, v138

    .end local v138           #throttle:Lcom/android/server/ThrottleService;
    .restart local v137       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_5b

    .line 589
    .end local v156           #wifi:Lcom/android/server/WifiService;
    .restart local v118       #qcCon:Ljava/lang/Object;
    .restart local v157       #wifi:Lcom/android/server/WifiService;
    :catch_4e
    move-exception v90

    move-object/from16 v156, v157

    .end local v157           #wifi:Lcom/android/server/WifiService;
    .restart local v156       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_5a

    .line 582
    .end local v162           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v163       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_4f
    move-exception v90

    move-object/from16 v162, v163

    .end local v163           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v162       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_59

    .line 566
    :catch_50
    move-exception v90

    goto/16 :goto_58

    .line 556
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v110       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v111       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_51
    move-exception v90

    move-object/from16 v29, v111

    .end local v111           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_57

    .line 548
    .end local v140           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v141       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_52
    move-exception v90

    move-object/from16 v140, v141

    .end local v141           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v140       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_56

    .line 524
    .end local v132           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v133       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_53
    move-exception v90

    move-object/from16 v132, v133

    .end local v133           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v132       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_55

    .line 510
    .end local v83           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v84       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_54
    move-exception v90

    move-object/from16 v83, v84

    .end local v84           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v83       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_54

    .line 502
    .end local v103           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v104       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_55
    move-exception v90

    move-object/from16 v103, v104

    .end local v104           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v103       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_53

    .line 493
    .end local v106           #mountService:Lcom/android/server/MountService;
    .restart local v107       #mountService:Lcom/android/server/MountService;
    :catch_56
    move-exception v90

    move-object/from16 v106, v107

    .end local v107           #mountService:Lcom/android/server/MountService;
    .restart local v106       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_52

    .line 480
    :catch_57
    move-exception v7

    goto/16 :goto_f

    .line 450
    .end local v95           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v96       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_58
    move-exception v90

    move-object/from16 v95, v96

    .end local v96           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v95       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_51

    .line 422
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v65           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v78           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v83           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v88           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v95           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v101           #location:Lcom/android/server/LocationManagerService;
    .end local v103           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v114           #notification:Lcom/android/server/NotificationManagerService;
    .end local v132           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v140           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v152           #vzwLocMgrObj:Ljava/lang/Object;
    .end local v154           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v64       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v69       #battery:Lcom/android/server/BatteryService;
    .restart local v85       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v97       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v100       #lights:Lcom/android/server/LightsService;
    .restart local v117       #power:Lcom/android/server/power/PowerManagerService;
    :catch_59
    move-exception v90

    move-object/from16 v19, v97

    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v64

    .end local v64           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v69

    .end local v69           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v85

    .end local v85           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v117

    .end local v117           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v100

    .end local v100           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_50

    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .restart local v64       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v69       #battery:Lcom/android/server/BatteryService;
    .restart local v85       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v97       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v100       #lights:Lcom/android/server/LightsService;
    .restart local v117       #power:Lcom/android/server/power/PowerManagerService;
    :catch_5a
    move-exception v90

    move-object/from16 v19, v97

    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v64

    .end local v64           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v69

    .end local v69           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v85

    .end local v85           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v117

    .end local v117           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v100

    .end local v100           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v98, v99

    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_50

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .restart local v64       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v69       #battery:Lcom/android/server/BatteryService;
    .restart local v85       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v97       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v100       #lights:Lcom/android/server/LightsService;
    :catch_5b
    move-exception v90

    move-object/from16 v19, v97

    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v64

    .end local v64           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v69

    .end local v69           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v85

    .end local v85           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v100

    .end local v100           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v98, v99

    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_50

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .restart local v64       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v69       #battery:Lcom/android/server/BatteryService;
    .restart local v97       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v100       #lights:Lcom/android/server/LightsService;
    :catch_5c
    move-exception v90

    move-object/from16 v19, v97

    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v64

    .end local v64           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v69

    .end local v69           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v100

    .end local v100           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v98, v99

    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_50

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .end local v108           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .end local v135           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v64       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v69       #battery:Lcom/android/server/BatteryService;
    .restart local v97       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v100       #lights:Lcom/android/server/LightsService;
    .restart local v109       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v136       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_5d
    move-exception v90

    move-object/from16 v108, v109

    .end local v109           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v108       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v135, v136

    .end local v136           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v135       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v97

    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v64

    .end local v64           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v69

    .end local v69           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v100

    .end local v100           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v98, v99

    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_50

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v62           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .end local v135           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v63       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v64       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v69       #battery:Lcom/android/server/BatteryService;
    .restart local v80       #cryptState:Ljava/lang/String;
    .restart local v93       #firstBoot:Z
    .restart local v97       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v100       #lights:Lcom/android/server/LightsService;
    .restart local v136       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_5e
    move-exception v90

    move-object/from16 v135, v136

    .end local v136           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v135       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v97

    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v64

    .end local v64           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v69

    .end local v69           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v100

    .end local v100           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v62, v63

    .end local v63           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v62       #accountManager:Landroid/accounts/AccountManagerService;
    move-object/from16 v98, v99

    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_50

    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .end local v135           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v64       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v69       #battery:Lcom/android/server/BatteryService;
    .restart local v97       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v136       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_5f
    move-exception v90

    move-object/from16 v135, v136

    .end local v136           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v135       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v97

    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v64

    .end local v64           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v69

    .end local v69           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v98, v99

    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_50

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .end local v135           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v64       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v97       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v136       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_60
    move-exception v90

    move-object/from16 v135, v136

    .end local v136           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v135       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v97

    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v64

    .end local v64           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v98, v99

    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_50

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .end local v135           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v150           #vibrator:Lcom/android/server/VibratorService;
    .restart local v64       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v97       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v136       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v151       #vibrator:Lcom/android/server/VibratorService;
    :catch_61
    move-exception v90

    move-object/from16 v135, v136

    .end local v136           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v135       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v97

    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v64

    .end local v64           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v150, v151

    .end local v151           #vibrator:Lcom/android/server/VibratorService;
    .restart local v150       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v98, v99

    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_50

    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .end local v135           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v150           #vibrator:Lcom/android/server/VibratorService;
    .restart local v97       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v136       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v151       #vibrator:Lcom/android/server/VibratorService;
    :catch_62
    move-exception v90

    move-object/from16 v135, v136

    .end local v136           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v135       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v97

    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v150, v151

    .end local v151           #vibrator:Lcom/android/server/VibratorService;
    .restart local v150       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v98, v99

    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_50

    .end local v70           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .end local v135           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v150           #vibrator:Lcom/android/server/VibratorService;
    .restart local v71       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v136       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v151       #vibrator:Lcom/android/server/VibratorService;
    :catch_63
    move-exception v90

    move-object/from16 v135, v136

    .end local v136           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v135       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v70, v71

    .end local v71           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v70       #bluetooth:Lcom/android/server/BluetoothManagerService;
    move-object/from16 v150, v151

    .end local v151           #vibrator:Lcom/android/server/VibratorService;
    .restart local v150       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v98, v99

    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_50

    .line 355
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v62           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v98           #installer:Lcom/android/server/pm/Installer;
    .end local v135           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v63       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v64       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v69       #battery:Lcom/android/server/BatteryService;
    .restart local v97       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v99       #installer:Lcom/android/server/pm/Installer;
    .restart local v100       #lights:Lcom/android/server/LightsService;
    .restart local v136       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_64
    move-exception v90

    move-object/from16 v62, v63

    .end local v63           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v62       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_4f

    .end local v64           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v69           #battery:Lcom/android/server/BatteryService;
    .end local v80           #cryptState:Ljava/lang/String;
    .end local v93           #firstBoot:Z
    .end local v97           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v99           #installer:Lcom/android/server/pm/Installer;
    .end local v100           #lights:Lcom/android/server/LightsService;
    .end local v136           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v65       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v78       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v83       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v88       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v95       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v98       #installer:Lcom/android/server/pm/Installer;
    .restart local v101       #location:Lcom/android/server/LocationManagerService;
    .restart local v103       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v114       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v132       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v135       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v152       #vzwLocMgrObj:Ljava/lang/Object;
    .restart local v154       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_29
    move-object/from16 v25, v110

    .end local v110           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_43
.end method
