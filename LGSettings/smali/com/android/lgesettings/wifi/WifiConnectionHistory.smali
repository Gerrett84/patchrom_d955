.class public Lcom/android/lgesettings/wifi/WifiConnectionHistory;
.super Landroid/app/Fragment;
.source "WifiConnectionHistory.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;,
        Lcom/android/lgesettings/wifi/WifiConnectionHistory$Multimap;,
        Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;,
        Lcom/android/lgesettings/wifi/WifiConnectionHistory$ListViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mConnectionHistoryAdapter:Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;

.field private mCurView:I

.field private mDefaultTab:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListContainer:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mRootView:Landroid/view/View;

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mDefaultTab:Ljava/lang/String;

    .line 658
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/wifi/WifiConnectionHistory;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->constructWifiConnectionList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/wifi/WifiConnectionHistory;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/wifi/WifiConnectionHistory;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private constructWifiConnectionList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 539
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 540
    .local v4, WifiConnectionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;>;"
    new-instance v5, Lcom/android/lgesettings/wifi/WifiConnectionHistory$Multimap;

    const/4 v7, 0x0

    invoke-direct {v5, p0, v7}, Lcom/android/lgesettings/wifi/WifiConnectionHistory$Multimap;-><init>(Lcom/android/lgesettings/wifi/WifiConnectionHistory;Lcom/android/lgesettings/wifi/WifiConnectionHistory$1;)V

    .line 542
    .local v5, apMap:Lcom/android/lgesettings/wifi/WifiConnectionHistory$Multimap;,"Lcom/android/lgesettings/wifi/WifiConnectionHistory$Multimap<Ljava/lang/String;Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;>;"
    const-string v7, "Success"

    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 543
    const-string v7, "/data/misc/wifi/WifiConnectionSuccessList"

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->WifiConnectionLoadList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 544
    .local v3, SuccessList:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;>;"
    if-eqz v3, :cond_0

    .line 545
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;

    .line 546
    .local v2, Success:Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    iget-object v7, v2, Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v7, v2}, Lcom/android/lgesettings/wifi/WifiConnectionHistory$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 552
    .end local v2           #Success:Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;
    .end local v3           #SuccessList:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_0
    const-string v7, "Failure"

    iget-object v8, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 553
    const-string v7, "/data/misc/wifi/WifiConnectionFailList"

    invoke-virtual {p0, v7}, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->WifiConnectionLoadList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 554
    .local v1, FailureList:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;>;"
    if-eqz v1, :cond_1

    .line 555
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;

    .line 556
    .local v0, Failure:Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    iget-object v7, v0, Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v7, v0}, Lcom/android/lgesettings/wifi/WifiConnectionHistory$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 564
    .end local v0           #Failure:Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;
    .end local v1           #FailureList:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 565
    return-object v4
.end method

.method private onCreateAlertDialg(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 456
    packed-switch p1, :pswitch_data_0

    .line 474
    :goto_0
    return-void

    .line 458
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 459
    .local v0, altDialog:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 460
    const v1, 0x7f080a86

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 461
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 462
    const v1, 0x7f080a8a

    new-instance v2, Lcom/android/lgesettings/wifi/WifiConnectionHistory$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/wifi/WifiConnectionHistory$1;-><init>(Lcom/android/lgesettings/wifi/WifiConnectionHistory;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 467
    const v1, 0x7f080a85

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 468
    const v1, 0x7f081699

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 469
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 470
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 456
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private selectView(I)V
    .locals 4
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 489
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 490
    iget v1, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mCurView:I

    if-eq v1, p1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 492
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mListContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 503
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mConnectionHistoryAdapter:Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;

    invoke-virtual {v1}, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;->resume()V

    .line 504
    iput p1, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mCurView:I

    .line 505
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mActivity:Landroid/app/Activity;

    .line 506
    .local v0, host:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 507
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 509
    :cond_1
    return-void

    .line 494
    .end local v0           #host:Landroid/app/Activity;
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 495
    iget v1, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mCurView:I

    if-eq v1, p1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 497
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mListContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 500
    :cond_3
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 501
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mListContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private startApplicationDetailsActivity()V
    .locals 0

    .prologue
    .line 408
    return-void
.end method


# virtual methods
.method public WifiConnectionLoadList(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 588
    const/4 v2, 0x0

    .line 590
    .local v2, in:Ljava/io/DataInputStream;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v0, WifiConnectionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;>;"
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 599
    .end local v2           #in:Ljava/io/DataInputStream;
    .local v3, in:Ljava/io/DataInputStream;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 601
    .local v5, readData:Ljava/lang/String;
    :try_start_2
    const-string v6, "eos"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v6

    if-eqz v6, :cond_2

    .line 619
    if-eqz v3, :cond_4

    .line 621
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v2, v3

    .line 627
    .end local v3           #in:Ljava/io/DataInputStream;
    .end local v5           #readData:Ljava/lang/String;
    .restart local v2       #in:Ljava/io/DataInputStream;
    :cond_1
    :goto_1
    return-object v0

    .line 603
    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    .restart local v5       #readData:Ljava/lang/String;
    :cond_2
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 605
    new-instance v4, Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;

    invoke-direct {v4, p0, v5}, Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;-><init>(Lcom/android/lgesettings/wifi/WifiConnectionHistory;Ljava/lang/String;)V

    .line 606
    .local v4, info:Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 611
    .end local v4           #info:Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;
    :catch_0
    move-exception v1

    .line 612
    .local v1, e:Ljava/lang/IllegalArgumentException;
    :try_start_5
    const-string v6, "WifiConnectionHistory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignore invalid address while reading"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 616
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .end local v5           #readData:Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 617
    .end local v3           #in:Ljava/io/DataInputStream;
    .local v1, e:Ljava/io/IOException;
    .restart local v2       #in:Ljava/io/DataInputStream;
    :goto_2
    :try_start_6
    const-string v6, "WifiConnectionHistory"

    const-string v7, "no WifiConnectionList file"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 619
    if-eqz v2, :cond_1

    .line 621
    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 622
    :catch_2
    move-exception v6

    goto :goto_1

    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    .restart local v5       #readData:Ljava/lang/String;
    :catch_3
    move-exception v6

    move-object v2, v3

    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v2       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .line 619
    .end local v5           #readData:Ljava/lang/String;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v2, :cond_3

    .line 621
    :try_start_8
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 622
    :cond_3
    :goto_4
    throw v6

    :catch_4
    move-exception v7

    goto :goto_4

    .line 619
    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v2       #in:Ljava/io/DataInputStream;
    goto :goto_3

    .line 616
    :catch_5
    move-exception v1

    goto :goto_2

    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    .restart local v5       #readData:Ljava/lang/String;
    :cond_4
    move-object v2, v3

    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v2       #in:Ljava/io/DataInputStream;
    goto :goto_1
.end method

.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .parameter "tag"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public deleteAllMessages()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 637
    const/4 v1, 0x0

    .line 639
    .local v1, result:Z
    const-string v2, "Success"

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 640
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.wifi.WIFI_DELETE_CONN_LIST_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 641
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "wifi_delete_conn_list_status"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 642
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 649
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mConnectionHistoryAdapter:Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;->clear()Z

    move-result v1

    .line 651
    if-eqz v1, :cond_2

    .line 652
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f080e15

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 656
    :goto_1
    return-void

    .line 643
    :cond_1
    const-string v2, "Failure"

    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 644
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.wifi.WIFI_DELETE_CONN_LIST_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 645
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "wifi_delete_conn_list_status"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 646
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 654
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f080aa5

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 375
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 376
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 403
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 293
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 295
    invoke-virtual {p0, v5}, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->setHasOptionsMenu(Z)V

    .line 297
    new-instance v3, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;-><init>(Lcom/android/lgesettings/wifi/WifiConnectionHistory;Lcom/android/lgesettings/wifi/WifiConnectionHistory$WifiConnectionInfo;)V

    iput-object v3, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mConnectionHistoryAdapter:Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;

    .line 299
    const-string v1, "Success"

    .line 301
    .local v1, defaultTabTag:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 302
    const-string v3, "defaultTabTag"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, tmp:Ljava/lang/String;
    if-eqz v2, :cond_0

    move-object v1, v2

    .line 306
    .end local v2           #tmp:Ljava/lang/String;
    :cond_0
    iput-object v1, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mDefaultTab:Ljava/lang/String;

    .line 308
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mActivity:Landroid/app/Activity;

    .line 309
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 310
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 311
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 313
    const v3, 0x7f020359

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setIcon(I)V

    .line 315
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 412
    const-string v0, "WifiConnectionHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateOptionsMenu in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mOptionsMenu:Landroid/view/Menu;

    .line 415
    const/4 v0, 0x1

    const v1, 0x7f080a9f

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 418
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->updateOptionsMenu()V

    .line 419
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 320
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mInflater:Landroid/view/LayoutInflater;

    .line 321
    const v4, 0x7f0401a9

    invoke-virtual {p1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mRootView:Landroid/view/View;

    .line 322
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mRootView:Landroid/view/View;

    const v5, 0x7f0a01a0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mLoadingContainer:Landroid/view/View;

    .line 323
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mRootView:Landroid/view/View;

    const v5, 0x7f0a019b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mListContainer:Landroid/view/View;

    .line 328
    :try_start_0
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mListContainer:Landroid/view/View;

    const v5, 0x102000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 329
    .local v2, lv:Landroid/widget/ListView;
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mListContainer:Landroid/view/View;

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 330
    .local v1, emptyView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 331
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 333
    :cond_0
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 334
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 335
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 336
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 337
    iput-object v2, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mListView:Landroid/widget/ListView;

    .line 339
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mConnectionHistoryAdapter:Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v1           #emptyView:Landroid/view/View;
    .end local v2           #lv:Landroid/widget/ListView;
    :goto_0
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0401ab

    invoke-virtual {v4, v5, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabHost;

    iput-object v4, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mTabHost:Landroid/widget/TabHost;

    .line 345
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    .line 346
    iget-object v3, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mTabHost:Landroid/widget/TabHost;

    .line 347
    .local v3, tabHost:Landroid/widget/TabHost;
    const-string v4, "Success"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mActivity:Landroid/app/Activity;

    const v6, 0x7f08168c

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 351
    const-string v4, "Failure"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mActivity:Landroid/app/Activity;

    const v6, 0x7f08168d

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 355
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v3, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 359
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mTabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v4, v5, v8}, Lcom/android/lgesettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 361
    iget-object v4, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mTabHost:Landroid/widget/TabHost;

    return-object v4

    .line 340
    .end local v3           #tabHost:Landroid/widget/TabHost;
    :catch_0
    move-exception v0

    .line 341
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 534
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 535
    const-string v0, "WifiConnectionHistory"

    const-string v1, "onDestroy: release resource"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mOptionsMenu:Landroid/view/Menu;

    .line 429
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 477
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->startApplicationDetailsActivity()V

    .line 478
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 442
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 443
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 452
    :goto_0
    return v2

    .line 446
    :cond_0
    if-ne v0, v2, :cond_1

    .line 447
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->onCreateAlertDialg(I)V

    goto :goto_0

    .line 451
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->updateOptionsMenu()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 396
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 397
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setEnabled(Z)V

    .line 398
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->updateOptionsMenu()V

    .line 424
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 380
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 381
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->showCurrentTab()V

    .line 382
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->updateOptionsMenu()V

    .line 383
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setEnabled(Z)V

    .line 384
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 388
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 389
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mDefaultTab:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 390
    const-string v0, "defautTabTag"

    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 366
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 367
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "tabId"

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->showCurrentTab()V

    .line 530
    return-void
.end method

.method public showCurrentTab()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 512
    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mDefaultTab:Ljava/lang/String;

    .line 514
    .local v1, tabId:Ljava/lang/String;
    const-string v2, "Success"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 515
    const/4 v0, 0x0

    .line 516
    .local v0, newOption:I
    invoke-direct {p0, v3}, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->selectView(I)V

    .line 525
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->updateOptionsMenu()V

    .line 526
    .end local v0           #newOption:I
    :cond_0
    return-void

    .line 517
    :cond_1
    const-string v2, "Failure"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 518
    const/4 v0, 0x1

    .line 519
    .restart local v0       #newOption:I
    invoke-direct {p0, v3}, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->selectView(I)V

    goto :goto_0
.end method

.method updateOptionsMenu()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 432
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mOptionsMenu:Landroid/view/Menu;

    if-nez v1, :cond_0

    .line 438
    :goto_0
    return-void

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/wifi/WifiConnectionHistory;->mConnectionHistoryAdapter:Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;

    invoke-virtual {v2}, Lcom/android/lgesettings/wifi/WifiConnectionHistory$ConnectionHistoryAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
