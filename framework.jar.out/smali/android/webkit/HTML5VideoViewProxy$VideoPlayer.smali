.class final Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;
.super Ljava/lang/Object;
.source "HTML5VideoViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VideoPlayer"
.end annotation


# static fields
.field private static isVideoSelfEnded:Z

.field private static mBaseLayer:I

.field private static mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

.field private static mHTML5VideoView:Landroid/webkit/HTML5VideoView;

.field private static mIsShowingStreaming:Z

.field private static mOverlayReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 341
    sput-boolean v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    .line 345
    sput v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mBaseLayer:I

    .line 349
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mOverlayReceiver:Landroid/content/BroadcastReceiver;

    .line 350
    sput-boolean v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mIsShowingStreaming:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 334
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 334
    sput-boolean p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    return p0
.end method

.method static synthetic access$1100(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 334
    invoke-static {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V

    return-void
.end method

.method static synthetic access$600()Landroid/webkit/HTML5VideoViewProxy;
    .locals 1

    .prologue
    .line 334
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    return-object v0
.end method

.method static synthetic access$900(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 334
    invoke-static {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setShowingStreaming(Z)V

    return-void
.end method

.method public static end()V
    .locals 1

    .prologue
    .line 745
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->showControllerInFullScreen()V

    .line 746
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    .line 747
    sget-boolean v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    if-eqz v0, :cond_1

    .line 748
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnEnded()V

    .line 752
    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    .line 753
    return-void

    .line 750
    :cond_1
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnPaused()V

    goto :goto_0
.end method

.method public static enterFullScreenVideo(ILjava/lang/String;Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V
    .locals 17
    .parameter "layerId"
    .parameter "url"
    .parameter "proxy"
    .parameter "webView"

    .prologue
    .line 432
    const/4 v11, 0x0

    .line 433
    .local v11, savePosition:I
    const/4 v3, 0x0

    .line 434
    .local v3, canSkipPrepare:Z
    const/4 v5, 0x0

    .line 437
    .local v5, forceStart:Z
    const/4 v8, 0x0

    .line 439
    .local v8, isPlaying:Z
    invoke-virtual/range {p2 .. p2}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 442
    .local v9, mContext:Landroid/content/Context;
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v14, :cond_11

    .line 447
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v14}, Landroid/webkit/HTML5VideoView;->fullScreenExited()Z

    move-result v14

    if-nez v14, :cond_0

    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v14}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v14

    if-eqz v14, :cond_0

    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v14}, Landroid/webkit/HTML5VideoView;->surfaceDestroyed()Z

    move-result v14

    if-nez v14, :cond_0

    .line 448
    const-string v14, "HTML5VideoViewProxy"

    const-string v15, "Try to reenter the full screen mode"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :goto_0
    return-void

    .line 451
    :cond_0
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v14}, Landroid/webkit/HTML5VideoView;->getCurrentState()I

    move-result v10

    .line 454
    .local v10, playerState:I
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v14}, Landroid/webkit/HTML5VideoView;->getVideoLayerId()I

    move-result v14

    move/from16 v0, p0

    if-ne v0, v14, :cond_4

    .line 455
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v14}, Landroid/webkit/HTML5VideoView;->getCurrentPosition()I

    move-result v11

    .line 456
    const/4 v14, 0x1

    if-eq v10, v14, :cond_1

    const/4 v14, 0x2

    if-eq v10, v14, :cond_1

    const/4 v14, 0x3

    if-ne v10, v14, :cond_c

    :cond_1
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v14}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v14

    if-nez v14, :cond_c

    const/4 v3, 0x1

    .line 461
    :goto_1
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "com.android.browser"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy;->access$100()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 462
    sget-boolean v14, Landroid/webkit/HTML5VideoViewProxy;->mIsFloatingwindowSupport:Z

    if-nez v14, :cond_2

    .line 463
    const/4 v3, 0x0

    .line 465
    :cond_2
    const/4 v14, 0x1

    if-eq v10, v14, :cond_3

    const/4 v14, 0x3

    if-ne v10, v14, :cond_d

    :cond_3
    const/4 v8, 0x1

    .line 467
    :goto_2
    #calls: Landroid/webkit/HTML5VideoViewProxy;->isDirectFullScreen()Z
    invoke-static/range {p2 .. p2}, Landroid/webkit/HTML5VideoViewProxy;->access$200(Landroid/webkit/HTML5VideoViewProxy;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 468
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v14}, Landroid/webkit/HTML5VideoView;->getSaveSeekTime()I

    move-result v11

    .line 473
    :cond_4
    if-nez v3, :cond_e

    .line 474
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v14}, Landroid/webkit/HTML5VideoView;->reset()V

    .line 488
    .end local v10           #playerState:I
    :goto_3
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "com.android.browser"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy;->access$100()Z

    move-result v14

    if-eqz v14, :cond_15

    .line 491
    invoke-virtual/range {p2 .. p2}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnEnterFromLGBrowser()V

    .line 493
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v14}, Landroid/webkit/HTML5VideoView;->getHeaders()Ljava/util/Map;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 494
    .local v6, headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v14, 0x1

    invoke-static {v14}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setShowingStreaming(Z)V

    .line 496
    :try_start_0
    sget-boolean v14, Landroid/webkit/HTML5VideoViewProxy;->mIsFloatingwindowSupport:Z

    if-eqz v14, :cond_5

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy;->access$300()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 497
    const/4 v11, 0x0

    .line 498
    const/4 v14, 0x0

    invoke-static {v14}, Landroid/webkit/HTML5VideoViewProxy;->access$302(Z)Z

    .line 499
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v14, v11}, Landroid/webkit/HTML5VideoViewProxy;->onTimeupdateManually(I)V

    .line 500
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v14, v11}, Landroid/webkit/HTML5VideoViewProxy;->seek(I)V

    .line 502
    :cond_5
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v14, "lge.browser.intent.action.HTML5VIDEO_STREAMING_PLAY"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 503
    .local v7, i:Landroid/content/Intent;
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 504
    const-string/jumbo v14, "position"

    invoke-virtual {v7, v14, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 505
    const-string v14, "Header"

    invoke-virtual {v7, v14, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 506
    if-nez v11, :cond_6

    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    move-object/from16 v0, p2

    if-eq v14, v0, :cond_6

    .line 507
    const/4 v14, 0x1

    move-object/from16 v0, p2

    #calls: Landroid/webkit/HTML5VideoViewProxy;->setDirectFullScreen(Z)V
    invoke-static {v0, v14}, Landroid/webkit/HTML5VideoViewProxy;->access$400(Landroid/webkit/HTML5VideoViewProxy;Z)V

    .line 509
    :cond_6
    sput-object p2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 510
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    #calls: Landroid/webkit/HTML5VideoViewProxy;->isDirectFullScreen()Z
    invoke-static {v14}, Landroid/webkit/HTML5VideoViewProxy;->access$200(Landroid/webkit/HTML5VideoViewProxy;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 511
    const/4 v8, 0x1

    .line 513
    :cond_7
    const-string/jumbo v14, "isplay"

    invoke-virtual {v7, v14, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 515
    #calls: Landroid/webkit/HTML5VideoViewProxy;->getTracks()Landroid/webkit/HTML5VideoViewProxy$TracksData;
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy;->access$500()Landroid/webkit/HTML5VideoViewProxy$TracksData;

    move-result-object v13

    .line 516
    .local v13, tracks:Landroid/webkit/HTML5VideoViewProxy$TracksData;
    iget v14, v13, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackPlayed:I

    const/4 v15, -0x1

    if-lt v14, v15, :cond_13

    .line 517
    iget-object v14, v13, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackSrc:[Ljava/lang/String;

    if-eqz v14, :cond_8

    .line 518
    const-string/jumbo v14, "subtitle_path_url"

    iget-object v15, v13, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackSrc:[Ljava/lang/String;

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    :cond_8
    iget-object v14, v13, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackLang:[Ljava/lang/String;

    if-eqz v14, :cond_9

    .line 520
    const-string/jumbo v14, "subtitle_lang"

    iget-object v15, v13, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackLang:[Ljava/lang/String;

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    :cond_9
    iget-object v14, v13, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackLabel:[Ljava/lang/String;

    if-eqz v14, :cond_a

    .line 522
    const-string/jumbo v14, "subtitle_lang_label"

    iget-object v15, v13, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackLabel:[Ljava/lang/String;

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    :cond_a
    iget-object v14, v13, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackKind:[Ljava/lang/String;

    if-eqz v14, :cond_b

    .line 524
    const-string/jumbo v14, "subtitle_kind"

    iget-object v15, v13, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackKind:[Ljava/lang/String;

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    :cond_b
    const-string/jumbo v14, "language_index"

    iget-object v15, v13, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackPlayedLang:Ljava/lang/String;

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    const-string/jumbo v15, "subtitle_enable"

    iget v14, v13, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackPlayed:I

    if-ltz v14, :cond_12

    const/4 v14, 0x1

    :goto_4
    invoke-virtual {v7, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 534
    :goto_5
    new-instance v14, Landroid/content/ComponentName;

    const-string v15, "com.lge.streamingplayer"

    const-string v16, "com.lge.streamingplayer.StreamingPlayer"

    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 535
    invoke-virtual/range {p3 .. p3}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v12

    .line 536
    .local v12, settings:Landroid/webkit/WebSettings;
    if-eqz v12, :cond_14

    invoke-virtual {v12}, Landroid/webkit/WebSettingsClassic;->getFloatingMode()Z

    move-result v14

    if-eqz v14, :cond_14

    .line 537
    const/high16 v14, 0x1000

    invoke-virtual {v7, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 538
    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 546
    :goto_6
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnStopFullScreen(Z)V

    .line 547
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->unRegOverlayReceiver()V

    .line 548
    new-instance v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer$1;

    invoke-direct {v14}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer$1;-><init>()V

    sput-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mOverlayReceiver:Landroid/content/BroadcastReceiver;

    .line 592
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 593
    .local v4, filter:Landroid/content/IntentFilter;
    const-string v14, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v14}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 594
    const-string/jumbo v14, "lge.browser.intent.action.HTML5VIDEO_BROWSER_PLAY"

    invoke-virtual {v4, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 595
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mOverlayReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v14, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 598
    .end local v4           #filter:Landroid/content/IntentFilter;
    .end local v7           #i:Landroid/content/Intent;
    .end local v12           #settings:Landroid/webkit/WebSettings;
    .end local v13           #tracks:Landroid/webkit/HTML5VideoViewProxy$TracksData;
    :catch_0
    move-exception v14

    goto/16 :goto_0

    .line 456
    .end local v6           #headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10       #playerState:I
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 465
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 476
    :cond_e
    const/4 v14, 0x1

    if-eq v10, v14, :cond_f

    const/4 v14, 0x3

    if-ne v10, v14, :cond_10

    :cond_f
    const/4 v5, 0x1

    :goto_7
    goto/16 :goto_3

    :cond_10
    const/4 v5, 0x0

    goto :goto_7

    .line 481
    .end local v10           #playerState:I
    :cond_11
    new-instance v14, Landroid/webkit/HTML5VideoFullScreen;

    invoke-virtual/range {p2 .. p2}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v15

    move/from16 v0, p0

    invoke-direct {v14, v15, v0, v11, v3}, Landroid/webkit/HTML5VideoFullScreen;-><init>(Landroid/content/Context;IIZ)V

    sput-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    .line 483
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v14, v5}, Landroid/webkit/HTML5VideoView;->setStartWhenPrepared(Z)V

    .line 484
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Landroid/webkit/HTML5VideoView;->setVideoURI(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V

    goto/16 :goto_3

    .line 529
    .restart local v6       #headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7       #i:Landroid/content/Intent;
    .restart local v13       #tracks:Landroid/webkit/HTML5VideoViewProxy$TracksData;
    :cond_12
    const/4 v14, 0x0

    goto :goto_4

    .line 531
    :cond_13
    :try_start_1
    const-string/jumbo v14, "subtitle_enable"

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_5

    .line 540
    .restart local v12       #settings:Landroid/webkit/WebSettings;
    :cond_14
    invoke-virtual {v9, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 603
    .end local v6           #headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7           #i:Landroid/content/Intent;
    .end local v12           #settings:Landroid/webkit/WebSettings;
    .end local v13           #tracks:Landroid/webkit/HTML5VideoViewProxy$TracksData;
    :cond_15
    new-instance v14, Landroid/webkit/HTML5VideoFullScreen;

    invoke-virtual/range {p2 .. p2}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v15

    move/from16 v0, p0

    invoke-direct {v14, v15, v0, v11, v3}, Landroid/webkit/HTML5VideoFullScreen;-><init>(Landroid/content/Context;IIZ)V

    sput-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    .line 605
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v14, v5}, Landroid/webkit/HTML5VideoView;->setStartWhenPrepared(Z)V

    .line 606
    sput-object p2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 607
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    sget-object v15, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Landroid/webkit/HTML5VideoView;->setVideoURI(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V

    .line 608
    sget-object v14, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    move/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v14, v0, v1, v2}, Landroid/webkit/HTML5VideoView;->enterFullScreenVideoState(ILandroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_0
.end method

.method public static exitFullScreenVideo(Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V
    .locals 2
    .parameter "proxy"
    .parameter "webView"

    .prologue
    .line 615
    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoView;->fullScreenExited()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 616
    invoke-virtual {p1}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 617
    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 621
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :cond_0
    return-void
.end method

.method public static getCurrentPosition()I
    .locals 2

    .prologue
    .line 714
    const/4 v0, 0x0

    .line 715
    .local v0, currentPosMs:I
    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v1, :cond_0

    .line 716
    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoView;->getCurrentPosition()I

    move-result v0

    .line 718
    :cond_0
    return v0
.end method

.method public static isPlaying(Landroid/webkit/HTML5VideoViewProxy;)Z
    .locals 1
    .parameter "proxy"

    .prologue
    .line 709
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-ne v0, p0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isShowingStreaming()Z
    .locals 1

    .prologue
    .line 353
    sget-boolean v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mIsShowingStreaming:Z

    return v0
.end method

.method public static onPrepared()V
    .locals 1

    .prologue
    .line 734
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 735
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->start()V

    .line 738
    :cond_0
    sget v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mBaseLayer:I

    if-eqz v0, :cond_1

    .line 739
    sget v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mBaseLayer:I

    invoke-static {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setBaseLayer(I)V

    .line 742
    :cond_1
    return-void
.end method

.method public static pause(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 728
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-ne v0, p0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 729
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->pause()V

    .line 731
    :cond_0
    return-void
.end method

.method public static pauseAndDispatch()V
    .locals 2

    .prologue
    .line 423
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 424
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoView;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 425
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->reset()V

    .line 427
    :cond_0
    return-void
.end method

.method public static play(Ljava/lang/String;ILandroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebChromeClient;I)V
    .locals 10
    .parameter "url"
    .parameter "time"
    .parameter "proxy"
    .parameter "client"
    .parameter "videoLayerId"

    .prologue
    const/4 v9, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 628
    const/4 v2, -0x1

    .line 629
    .local v2, currentVideoLayerId:I
    const/4 v0, 0x0

    .line 631
    .local v0, backFromFullScreenMode:Z
    invoke-virtual {p2}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 632
    .local v3, mContext:Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.android.browser"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v7, :cond_2

    sget-object v7, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v7, :cond_2

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy;->access$100()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 633
    sget-boolean v7, Landroid/webkit/HTML5VideoViewProxy;->mIsFloatingwindowSupport:Z

    if-nez v7, :cond_0

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isShowingStreaming()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    #calls: Landroid/webkit/HTML5VideoViewProxy;->isDirectFullScreen()Z
    invoke-static {p2}, Landroid/webkit/HTML5VideoViewProxy;->access$200(Landroid/webkit/HTML5VideoViewProxy;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 706
    :cond_1
    :goto_0
    return-void

    .line 638
    :cond_2
    sget-object v7, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v7, :cond_3

    .line 639
    sget-object v7, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v7}, Landroid/webkit/HTML5VideoView;->getVideoLayerId()I

    move-result v2

    .line 640
    sget-object v7, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v7}, Landroid/webkit/HTML5VideoView;->fullScreenExited()Z

    move-result v0

    .line 646
    sget-object v7, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v7}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v0, :cond_3

    if-eq v2, p4, :cond_3

    sget-object v7, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eq v7, p2, :cond_3

    .line 650
    sput-object p2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 651
    sget-object v6, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v6, v5}, Landroid/webkit/HTML5VideoView;->setStartWhenPrepared(Z)V

    .line 652
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5, p0, p2}, Landroid/webkit/HTML5VideoView;->setVideoURI(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V

    .line 653
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5, p2}, Landroid/webkit/HTML5VideoView;->reprepareData(Landroid/webkit/HTML5VideoViewProxy;)V

    goto :goto_0

    .line 658
    :cond_3
    const/4 v4, 0x0

    .line 659
    .local v4, skipPrepare:Z
    const/4 v1, 0x0

    .line 660
    .local v1, createInlineView:Z
    if-eqz v0, :cond_6

    if-ne v2, p4, :cond_6

    sget-object v7, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v7}, Landroid/webkit/HTML5VideoView;->isReleased()Z

    move-result v7

    if-nez v7, :cond_6

    .line 663
    sget-object v7, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v7}, Landroid/webkit/HTML5VideoView;->surfaceDestroyed()Z

    move-result v7

    if-nez v7, :cond_5

    move v4, v5

    .line 664
    :goto_1
    const/4 v1, 0x1

    .line 686
    :cond_4
    :goto_2
    if-eqz v1, :cond_a

    .line 687
    sput-object p2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 688
    new-instance v5, Landroid/webkit/HTML5VideoInline;

    invoke-direct {v5, p4, p1, v4}, Landroid/webkit/HTML5VideoInline;-><init>(IIZ)V

    sput-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    .line 689
    sput v6, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mBaseLayer:I

    .line 690
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    sget-object v6, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v5, p0, v6}, Landroid/webkit/HTML5VideoView;->setVideoURI(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V

    .line 691
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5, p2}, Landroid/webkit/HTML5VideoView;->prepareDataAndDisplayMode(Landroid/webkit/HTML5VideoViewProxy;)V

    goto :goto_0

    :cond_5
    move v4, v6

    .line 663
    goto :goto_1

    .line 665
    :cond_6
    if-nez v0, :cond_7

    if-ne v2, p4, :cond_7

    invoke-static {}, Landroid/webkit/HTML5VideoInline;->surfaceTextureDeleted()Z

    move-result v5

    if-nez v5, :cond_7

    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v5, :cond_4

    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->getCurrentState()I

    move-result v5

    sget-object v7, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-ne v5, v9, :cond_4

    .line 677
    :cond_7
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v5, :cond_9

    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->getCurrentState()I

    move-result v5

    sget-object v7, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eq v5, v9, :cond_9

    .line 679
    if-nez v0, :cond_8

    .line 680
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    sget-object v7, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v5, v7}, Landroid/webkit/HTML5VideoView;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 682
    :cond_8
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->reset()V

    .line 684
    :cond_9
    const/4 v1, 0x1

    goto :goto_2

    .line 695
    :cond_a
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-ne v5, p2, :cond_b

    .line 697
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v5

    if-nez v5, :cond_1

    .line 698
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5, p1}, Landroid/webkit/HTML5VideoView;->seekTo(I)V

    .line 699
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->start()V

    goto/16 :goto_0

    .line 701
    :cond_b
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v5, :cond_1

    .line 704
    invoke-virtual {p2}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnEnded()V

    goto/16 :goto_0
.end method

.method public static seek(ILandroid/webkit/HTML5VideoViewProxy;)V
    .locals 1
    .parameter "time"
    .parameter "proxy"

    .prologue
    .line 722
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-ne v0, p1, :cond_0

    if-ltz p0, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 723
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0, p0}, Landroid/webkit/HTML5VideoView;->seekTo(I)V

    .line 725
    :cond_0
    return-void
.end method

.method public static setBaseLayer(I)V
    .locals 7
    .parameter "layer"

    .prologue
    .line 383
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-nez v5, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    sput p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mBaseLayer:I

    .line 388
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->isReleased()Z

    move-result v5

    if-nez v5, :cond_0

    .line 396
    sget-boolean v5, Landroid/webkit/HTML5VideoViewProxy;->mIsFloatingwindowSupport:Z

    if-nez v5, :cond_2

    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isShowingStreaming()Z

    move-result v5

    if-nez v5, :cond_0

    .line 401
    :cond_2
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->getVideoLayerId()I

    move-result v0

    .line 402
    .local v0, currentVideoLayerId:I
    invoke-static {v0}, Landroid/webkit/HTML5VideoInline;->getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object v3

    .line 404
    .local v3, surfTexture:Landroid/graphics/SurfaceTexture;
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->getTextureName()I

    move-result v4

    .line 406
    .local v4, textureName:I
    if-eqz p0, :cond_0

    if-eqz v3, :cond_0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 407
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->getCurrentState()I

    move-result v2

    .line 408
    .local v2, playerState:I
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v5}, Landroid/webkit/HTML5VideoView;->getPlayerBuffering()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 409
    const/4 v2, 0x1

    .line 410
    :cond_3
    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIII)Z
    invoke-static {v3, p0, v0, v4, v2}, Landroid/webkit/HTML5VideoViewProxy;->access$000(Landroid/graphics/SurfaceTexture;IIII)Z

    move-result v1

    .line 413
    .local v1, foundInTree:Z
    const/4 v5, 0x2

    if-lt v2, v5, :cond_0

    if-nez v1, :cond_0

    .line 415
    sget-object v5, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    sget-object v6, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v5, v6}, Landroid/webkit/HTML5VideoView;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    goto :goto_0
.end method

.method private static setPlayerBuffering(Z)V
    .locals 1
    .parameter "playerBuffering"

    .prologue
    .line 374
    sget-object v0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0, p0}, Landroid/webkit/HTML5VideoView;->setPlayerBuffering(Z)V

    .line 375
    return-void
.end method

.method private static setShowingStreaming(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 357
    sput-boolean p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mIsShowingStreaming:Z

    .line 358
    return-void
.end method

.method public static unRegOverlayReceiver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 361
    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mOverlayReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 362
    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCurrentProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 364
    .local v0, mContext:Landroid/content/Context;
    :try_start_0
    sget-object v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mOverlayReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :goto_0
    sput-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mOverlayReceiver:Landroid/content/BroadcastReceiver;

    .line 370
    :cond_0
    return-void

    .line 367
    :catchall_0
    move-exception v1

    sput-object v2, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mOverlayReceiver:Landroid/content/BroadcastReceiver;

    throw v1

    .line 365
    :catch_0
    move-exception v1

    goto :goto_0
.end method
