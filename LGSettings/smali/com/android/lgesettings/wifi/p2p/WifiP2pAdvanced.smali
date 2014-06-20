.class public Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "WifiP2pAdvanced.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private ArrayOutofBound:I

.field private ArraySetDefault:I

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mP2pSupported:Z

.field private mWifiP2pIpAddress:Landroid/preference/Preference;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiP2pTimeoutPreference:Landroid/preference/ListPreference;

.field private wifip2pIpAddressPref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->mWifiP2pIpAddress:Landroid/preference/Preference;

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->ArrayOutofBound:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->ArraySetDefault:I

    return-void
.end method


# virtual methods
.method public getWifiP2pIpAddress()Ljava/lang/String;
    .locals 8

    .prologue
    .line 251
    const-string v5, "WifiP2pAdvanced"

    const-string v6, " getWifiP2pIpAddress "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, networkIfs:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 257
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 258
    .local v3, networkIf:Ljava/net/NetworkInterface;
    const-string v5, "WifiP2pAdvanced"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "p2p"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 262
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 264
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 265
    .local v2, inetAddress:Ljava/net/InetAddress;
    const-string v5, "WifiP2pAdvanced"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IP for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    instance-of v5, v2, Ljava/net/Inet6Address;

    if-nez v5, :cond_1

    .line 272
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_1

    .line 273
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 286
    .end local v1           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v2           #inetAddress:Ljava/net/InetAddress;
    .end local v3           #networkIf:Ljava/net/NetworkInterface;
    .end local v4           #networkIfs:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_0
    return-object v5

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, e:Ljava/net/SocketException;
    const-string v5, "WifiP2pAdvanced"

    const-string v6, "Unable to read IP address"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .end local v0           #e:Ljava/net/SocketException;
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f08045a

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 80
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v3, 0x7f06007e

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->addPreferencesFromResource(I)V

    .line 82
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v6, 0x7f081695

    invoke-virtual {v3, v6}, Landroid/app/Activity;->setTitle(I)V

    .line 83
    const-string v3, "wifi_p2p_timeout"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->mWifiP2pTimeoutPreference:Landroid/preference/ListPreference;

    .line 86
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v6, "android.hardware.wifi.direct"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 87
    const-string v3, "wlan.lge.concurrency"

    const-string v6, "MCC"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "NO"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->mP2pSupported:Z

    .line 92
    :goto_1
    const-string v3, "WifiP2pAdvanced"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " WifiP2pAdvanced onCreate mP2pSupported :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->mP2pSupported:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->mWifiP2pTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifidirect_time"

    const v8, 0xdbba0

    invoke-static {v6, v7, v8}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0900d7

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, entry:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->mWifiP2pTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->mWifiP2pTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 111
    .local v1, index:I
    iget v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->ArrayOutofBound:I

    if-ne v1, v3, :cond_0

    .line 112
    iget v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->ArraySetDefault:I

    .line 115
    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 116
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->mWifiP2pTimeoutPreference:Landroid/preference/ListPreference;

    const v4, 0x7f08165a

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 123
    :goto_2
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->mWifiP2pTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 126
    const-string v3, "wifip2p"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 127
    const-string v3, "wifi_p2p_ipaddress"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->wifip2pIpAddressPref:Landroid/preference/Preference;

    .line 129
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v3, :cond_1

    .line 130
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 133
    :cond_1
    const-string v3, "wifi_p2p_ipaddress"

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->mWifiP2pIpAddress:Landroid/preference/Preference;

    .line 135
    return-void

    .end local v0           #entry:[Ljava/lang/String;
    .end local v1           #index:I
    :cond_2
    move v3, v5

    .line 87
    goto/16 :goto_0

    .line 89
    :cond_3
    iput-boolean v4, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->mP2pSupported:Z

    goto/16 :goto_1

    .line 119
    .restart local v0       #entry:[Ljava/lang/String;
    .restart local v1       #index:I
    :cond_4
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->mWifiP2pTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const v6, 0xea60

    div-int v2, v3, v6

    .line 120
    .local v2, timeValue:I
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->mWifiP2pTimeoutPreference:Landroid/preference/ListPreference;

    const v6, 0x7f08165b

    invoke-virtual {p0, v6}, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 139
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, key:Ljava/lang/String;
    const-string v8, "wifi_p2p_timeout"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v6, p2

    .line 142
    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 146
    .local v5, value:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "wifidirect_time"

    invoke-static {v6, v8, v5}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 160
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0900d7

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, entry:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->mWifiP2pTimeoutPreference:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 166
    .local v2, index:I
    iget v6, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->ArrayOutofBound:I

    if-ne v2, v6, :cond_0

    .line 167
    iget v2, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->ArraySetDefault:I

    .line 171
    :cond_0
    const/4 v6, 0x2

    if-ne v2, v6, :cond_2

    .line 172
    iget-object v6, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->mWifiP2pTimeoutPreference:Landroid/preference/ListPreference;

    const v8, 0x7f08165a

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .end local v1           #entry:[Ljava/lang/String;
    .end local v2           #index:I
    :goto_0
    move v6, v7

    .line 184
    .end local v5           #value:I
    :cond_1
    return v6

    .line 175
    .restart local v1       #entry:[Ljava/lang/String;
    .restart local v2       #index:I
    .restart local v5       #value:I
    :cond_2
    const v6, 0xea60

    div-int v4, v5, v6

    .line 176
    .local v4, timeValue:I
    iget-object v6, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->mWifiP2pTimeoutPreference:Landroid/preference/ListPreference;

    const v8, 0x7f08165b

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    .end local v1           #entry:[Ljava/lang/String;
    .end local v2           #index:I
    .end local v4           #timeValue:I
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v6, "WifiP2pAdvanced"

    const-string v8, "could not persist screen timeout setting"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    .line 190
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 191
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->mWifiP2pIpAddress:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 194
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->mWifiP2pIpAddress:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->getWifiP2pIpAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 224
    :cond_0
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->mWifiP2pTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifidirect_time"

    const v6, 0xdbba0

    invoke-static {v4, v5, v6}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900d7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, entry:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->mWifiP2pTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->mWifiP2pTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 234
    .local v1, index:I
    iget v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->ArrayOutofBound:I

    if-ne v1, v3, :cond_1

    .line 235
    iget v1, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->ArraySetDefault:I

    .line 238
    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 239
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->mWifiP2pTimeoutPreference:Landroid/preference/ListPreference;

    const v4, 0x7f08165a

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 246
    :goto_0
    return-void

    .line 242
    :cond_2
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->mWifiP2pTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const v4, 0xea60

    div-int v2, v3, v4

    .line 243
    .local v2, timeValue:I
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->mWifiP2pTimeoutPreference:Landroid/preference/ListPreference;

    const v4, 0x7f08165b

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/wifi/p2p/WifiP2pAdvanced;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
