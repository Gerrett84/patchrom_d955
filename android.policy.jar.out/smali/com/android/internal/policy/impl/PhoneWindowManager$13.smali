.class Lcom/android/internal/policy/impl/PhoneWindowManager$13;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1751
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1754
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1756
    .local v3, action:Ljava/lang/String;
    const-string v18, "WindowManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "112APP_KEY : onReceive action = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v18, v0

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->is112AppInstalledProperly()Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2800(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 1866
    :cond_0
    :goto_0
    return-void

    .line 1762
    :cond_1
    const-string v18, "android.intent.action.NEW_OUTGOING_CALL"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1763
    const-string v18, "android.intent.extra.PHONE_NUMBER"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1765
    .local v5, callingNumber:Ljava/lang/String;
    const-string v18, "WindowManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "112APP_KEY : callingNumber="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    if-nez v5, :cond_2

    .line 1768
    const-string v18, "WindowManager"

    const-string v19, "112APP_KEY : callingNumber is null, so returns. "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1772
    :cond_2
    const-string v18, "112"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    const-string v18, "02112"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1773
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->m112AppStartedByReservedKey:Z
    invoke-static/range {v18 .. v18}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2700(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 1774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    const-string v19, "go.police.report"

    invoke-virtual/range {v18 .. v19}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 1775
    .local v12, intent112App:Landroid/content/Intent;
    const-string v18, "startFlag"

    const-string v19, "001"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1783
    .end local v5           #callingNumber:Ljava/lang/String;
    .end local v12           #intent112App:Landroid/content/Intent;
    :cond_4
    :goto_1
    const-string v18, "android.intent.KOR_GO_POLICE_REPORT"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1784
    const-string v18, "IntentFlag"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1785
    .local v13, intentFlag:Ljava/lang/String;
    const-string v18, "WindowManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "IntentFlag = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    if-nez v13, :cond_6

    .line 1788
    const-string v18, "WindowManager"

    const-string v19, "112APP_KEY : intentFlag is null, so returns. "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1778
    .end local v13           #intentFlag:Ljava/lang/String;
    .restart local v5       #callingNumber:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->m112AppStartedByReservedKey:Z
    invoke-static/range {v18 .. v19}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2702(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    goto :goto_1

    .line 1792
    .end local v5           #callingNumber:Ljava/lang/String;
    .restart local v13       #intentFlag:Ljava/lang/String;
    :cond_6
    const/4 v7, 0x0

    .line 1793
    .local v7, dataNetworkEnable:Z
    const/16 v17, 0x0

    .line 1794
    .local v17, wifiNetworkEnable:Z
    const/4 v9, 0x0

    .line 1795
    .local v9, gpsProviderValue:Z
    const/16 v16, 0x0

    .line 1796
    .local v16, networkProviderEnable:Z
    const/4 v4, 0x0

    .line 1798
    .local v4, agpsProviderEnable:Z
    const-string v18, "start"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 1800
    const/4 v4, 0x1

    move/from16 v16, v4

    .local v16, networkProviderEnable:I
    move v9, v4

    .local v9, gpsProviderValue:I
    move/from16 v17, v4

    .local v17, wifiNetworkEnable:I
    move v7, v4

    .line 1838
    .end local v7           #dataNetworkEnable:Z
    .end local v9           #gpsProviderValue:I
    .end local v16           #networkProviderEnable:I
    .end local v17           #wifiNetworkEnable:I
    :cond_7
    :goto_2
    const-string v18, "WindowManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "112APP_KEY : Now set what app wants. data : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", wifi : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", gps : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", network : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", agps : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "connectivity"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 1844
    .local v6, connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v6, :cond_8

    .line 1845
    invoke-virtual {v6, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 1849
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "wifi"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/WifiManager;

    .line 1851
    .local v15, mWifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v6, :cond_9

    .line 1852
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1856
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "gps"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "network"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$13;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "assisted_gps_enabled"

    if-eqz v4, :cond_17

    const/16 v18, 0x1

    :goto_3
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1801
    .end local v6           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v15           #mWifiManager:Landroid/net/wifi/WifiManager;
    .restart local v7       #dataNetworkEnable:Z
    .local v9, gpsProviderValue:Z
    .local v16, networkProviderEnable:Z
    .local v17, wifiNetworkEnable:Z
    :cond_a
    const-string v18, "end"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1806
    const/4 v10, 0x0

    .line 1808
    .local v10, inReader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/FileReader;

    const-string v19, "/data/data/go.police.report/files/report.txt"

    invoke-direct/range {v18 .. v19}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1809
    .end local v10           #inReader:Ljava/io/BufferedReader;
    .local v11, inReader:Ljava/io/BufferedReader;
    const/4 v14, 0x0

    .line 1810
    .local v14, line:Ljava/lang/String;
    :cond_b
    :goto_4
    :try_start_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_15

    .line 1811
    const-string v18, "WindowManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "112APP_KEY : Apps requests : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    const-string v18, "dataNetwork"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 1814
    const-string v18, "OFF"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    const/4 v7, 0x0

    :goto_5
    goto :goto_4

    :cond_c
    const/4 v7, 0x1

    goto :goto_5

    .line 1815
    :cond_d
    const-string v18, "wifiNetwork"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 1816
    const-string v18, "OFF"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_e

    const/16 v17, 0x0

    :goto_6
    goto :goto_4

    :cond_e
    const/16 v17, 0x1

    goto :goto_6

    .line 1817
    :cond_f
    const-string v18, "gpsProvider"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 1818
    const-string v18, "OFF"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_10

    const/4 v9, 0x0

    :goto_7
    goto :goto_4

    :cond_10
    const/4 v9, 0x1

    goto :goto_7

    .line 1819
    :cond_11
    const-string v18, "networkProvider"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 1820
    const-string v18, "OFF"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_12

    const/16 v16, 0x0

    :goto_8
    goto :goto_4

    :cond_12
    const/16 v16, 0x1

    goto :goto_8

    .line 1821
    :cond_13
    const-string v18, "agpsProvider"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 1822
    const-string v18, "OFF"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v18

    if-eqz v18, :cond_14

    const/4 v4, 0x0

    :goto_9
    goto/16 :goto_4

    :cond_14
    const/4 v4, 0x1

    goto :goto_9

    .line 1828
    :cond_15
    if-eqz v11, :cond_7

    .line 1830
    :try_start_2
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 1831
    :catch_0
    move-exception v18

    goto/16 :goto_2

    .line 1825
    .end local v11           #inReader:Ljava/io/BufferedReader;
    .end local v14           #line:Ljava/lang/String;
    .restart local v10       #inReader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v8

    .line 1826
    .local v8, e:Ljava/lang/Exception;
    :goto_a
    :try_start_3
    const-string v18, "WindowManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "112APP_KEY : Exception in BufferedReader : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1828
    if-eqz v10, :cond_7

    .line 1830
    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 1831
    :catch_2
    move-exception v18

    goto/16 :goto_2

    .line 1828
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    :goto_b
    if-eqz v10, :cond_16

    .line 1830
    :try_start_5
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1832
    :cond_16
    :goto_c
    throw v18

    .line 1864
    .end local v7           #dataNetworkEnable:Z
    .end local v9           #gpsProviderValue:Z
    .end local v10           #inReader:Ljava/io/BufferedReader;
    .end local v16           #networkProviderEnable:Z
    .end local v17           #wifiNetworkEnable:Z
    .restart local v6       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v15       #mWifiManager:Landroid/net/wifi/WifiManager;
    :cond_17
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 1831
    .end local v6           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v15           #mWifiManager:Landroid/net/wifi/WifiManager;
    .restart local v7       #dataNetworkEnable:Z
    .restart local v9       #gpsProviderValue:Z
    .restart local v10       #inReader:Ljava/io/BufferedReader;
    .restart local v16       #networkProviderEnable:Z
    .restart local v17       #wifiNetworkEnable:Z
    :catch_3
    move-exception v19

    goto :goto_c

    .line 1828
    .end local v10           #inReader:Ljava/io/BufferedReader;
    .restart local v11       #inReader:Ljava/io/BufferedReader;
    .restart local v14       #line:Ljava/lang/String;
    :catchall_1
    move-exception v18

    move-object v10, v11

    .end local v11           #inReader:Ljava/io/BufferedReader;
    .restart local v10       #inReader:Ljava/io/BufferedReader;
    goto :goto_b

    .line 1825
    .end local v10           #inReader:Ljava/io/BufferedReader;
    .restart local v11       #inReader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v8

    move-object v10, v11

    .end local v11           #inReader:Ljava/io/BufferedReader;
    .restart local v10       #inReader:Ljava/io/BufferedReader;
    goto :goto_a
.end method
