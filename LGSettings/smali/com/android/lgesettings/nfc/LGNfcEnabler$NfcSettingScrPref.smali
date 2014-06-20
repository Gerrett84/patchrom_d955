.class public Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;
.super Lcom/android/lgesettings/nfc/NfcStateListener;
.source "LGNfcEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/nfc/LGNfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NfcSettingScrPref"
.end annotation


# instance fields
.field private final mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

.field mFelicaNfcLock:Lcom/lge/nfclock/service/INfcLock;

.field private final mNfcSettings:Landroid/preference/PreferenceScreen;

.field srvConn:Landroid/content/ServiceConnection;

.field final synthetic this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/nfc/LGNfcEnabler;Landroid/preference/PreferenceScreen;)V
    .locals 1
    .parameter
    .parameter "prep"

    .prologue
    .line 772
    iput-object p1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    invoke-direct {p0}, Lcom/android/lgesettings/nfc/NfcStateListener;-><init>()V

    .line 749
    new-instance v0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref$1;-><init>(Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;)V

    iput-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->srvConn:Landroid/content/ServiceConnection;

    .line 764
    new-instance v0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref$2;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref$2;-><init>(Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;)V

    iput-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    .line 773
    iput-object p2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->mNfcSettings:Landroid/preference/PreferenceScreen;

    .line 774
    return-void
.end method

.method static synthetic access$600(Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 744
    invoke-direct {p0}, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->updateNfcSettings()V

    return-void
.end method

.method private isNfcRemoteLocked()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 796
    const-string v2, "LGNfcEnabler"

    const-string v3, "mFelicaNfcLock - isNfcRemoteLocked()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->mFelicaNfcLock:Lcom/lge/nfclock/service/INfcLock;

    if-nez v2, :cond_1

    .line 798
    const-string v2, "LGNfcEnabler"

    const-string v3, "mFelicaNfcLock == null in isNfcRemoteLocked "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_0
    :goto_0
    return v1

    .line 803
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->mFelicaNfcLock:Lcom/lge/nfclock/service/INfcLock;

    invoke-interface {v2}, Lcom/lge/nfclock/service/INfcLock;->getNfcRemoteLockStatus()I

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->mFelicaNfcLock:Lcom/lge/nfclock/service/INfcLock;

    invoke-interface {v3}, Lcom/lge/nfclock/service/INfcLock;->getNfcRemoteLockStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eq v2, v3, :cond_0

    .line 806
    const/4 v1, 0x1

    goto :goto_0

    .line 809
    :catch_0
    move-exception v0

    .line 810
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateNfcSettings()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 817
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->mFelicaNfcLock:Lcom/lge/nfclock/service/INfcLock;

    if-nez v2, :cond_1

    .line 818
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->mNfcSettings:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 820
    const-string v2, "LGNfcEnabler"

    const-string v3, "update nfc setting : false : mNfcLock is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :goto_0
    invoke-static {}, Lcom/android/lgesettings/Utils;->hasFeatureNfcLockForKDDI()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->isNfcRemoteLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 841
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->mNfcSettings:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 843
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.nfclock.LOCK_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 844
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 850
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 821
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->mFelicaNfcLock:Lcom/lge/nfclock/service/INfcLock;

    invoke-interface {v2}, Lcom/lge/nfclock/service/INfcLock;->isRemoteLock()Z

    move-result v2

    if-ne v3, v2, :cond_2

    .line 823
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->mNfcSettings:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 824
    const-string v2, "LGNfcEnabler"

    const-string v3, "update nfc setting : false : remote locked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 846
    :catch_0
    move-exception v0

    .line 847
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 848
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->mNfcSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    .line 836
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->mNfcSettings:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 837
    const-string v2, "LGNfcEnabler"

    const-string v3, "update nfc setting : true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public handleNfcStateChanged(I)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 778
    packed-switch p1, :pswitch_data_0

    .line 793
    :pswitch_0
    return-void

    .line 778
    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 885
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-nez v0, :cond_1

    .line 886
    const-string v0, "LGNfcEnabler"

    const-string v1, "[LGNfcEnabler] Preference onClick - Sim satus is UnKown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080254

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 906
    :cond_0
    :goto_0
    return v2

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->mFelicaNfcLock:Lcom/lge/nfclock/service/INfcLock;

    if-eqz v0, :cond_0

    .line 905
    sput-boolean v3, Lcom/android/lgesettings/nfc/LGNfcEnabler;->isToastForDCM:Z

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 867
    iput-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->mFelicaNfcLock:Lcom/lge/nfclock/service/INfcLock;

    .line 868
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->srvConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 869
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->mNfcSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 870
    iget-object v0, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 871
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    .line 854
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->mNfcSettings:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 856
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->mFelicaNfcLock:Lcom/lge/nfclock/service/INfcLock;

    .line 857
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 858
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.lge.nfclock.service.INfcLock"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 859
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->srvConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 861
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->mNfcSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 862
    iget-object v1, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->this$0:Lcom/android/lgesettings/nfc/LGNfcEnabler;

    #getter for: Lcom/android/lgesettings/nfc/LGNfcEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/lgesettings/nfc/LGNfcEnabler;->access$200(Lcom/android/lgesettings/nfc/LGNfcEnabler;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/nfc/LGNfcEnabler$NfcSettingScrPref;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 863
    return-void
.end method
