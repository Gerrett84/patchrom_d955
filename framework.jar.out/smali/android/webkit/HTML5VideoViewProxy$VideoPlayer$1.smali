.class final Landroid/webkit/HTML5VideoViewProxy$VideoPlayer$1;
.super Landroid/content/BroadcastReceiver;
.source "HTML5VideoViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->enterFullScreenVideo(ILjava/lang/String;Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 548
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 551
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v12, "lge.browser.intent.action.HTML5VIDEO_BROWSER_PLAY"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 552
    const-string/jumbo v0, "position"

    const/4 v12, 0x0

    invoke-virtual {p2, v0, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 555
    .local v8, position:I
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$600()Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkit/HTML5VideoViewProxy;->onTimeupdateManually(I)V

    .line 556
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$600()Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkit/HTML5VideoViewProxy;->seek(I)V

    .line 557
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$600()Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->pause()V

    .line 558
    const/4 v0, 0x1

    if-ne v8, v0, :cond_0

    .line 559
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$600()Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnEnded()V

    .line 564
    :cond_0
    #calls: Landroid/webkit/HTML5VideoViewProxy;->getTracks()Landroid/webkit/HTML5VideoViewProxy$TracksData;
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy;->access$500()Landroid/webkit/HTML5VideoViewProxy$TracksData;

    move-result-object v11

    .line 565
    .local v11, tracks:Landroid/webkit/HTML5VideoViewProxy$TracksData;
    const/4 v7, 0x0

    .line 566
    .local v7, i:I
    iget v0, v11, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackPlayed:I

    const/4 v12, -0x1

    if-lt v0, v12, :cond_1

    .line 567
    const-string/jumbo v0, "language_index"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 568
    .local v10, trackPlayedLang:Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 569
    const/4 v7, 0x0

    :goto_0
    iget-object v0, v11, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackLang:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_1

    .line 570
    iget-object v0, v11, Landroid/webkit/HTML5VideoViewProxy$TracksData;->trackLang:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 576
    .end local v10           #trackPlayedLang:Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "subtitle_enable"

    const/4 v12, 0x0

    invoke-virtual {p2, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 577
    .local v9, state:Z
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$600()Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v0

    if-eqz v9, :cond_4

    .end local v7           #i:I
    :goto_1
    #calls: Landroid/webkit/HTML5VideoViewProxy;->onTrackPlayedUpdate(I)V
    invoke-static {v0, v7}, Landroid/webkit/HTML5VideoViewProxy;->access$700(Landroid/webkit/HTML5VideoViewProxy;I)V

    .line 580
    const-string/jumbo v0, "subtitle_color"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 581
    .local v1, characterColor:Ljava/lang/String;
    const-string/jumbo v0, "subtitle_background_color"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 582
    .local v2, backgroundColor:Ljava/lang/String;
    const-string/jumbo v0, "subtitle_window_color"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 583
    .local v3, windowColor:Ljava/lang/String;
    const-string/jumbo v0, "subtitle_font"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 584
    .local v4, fontPath:Ljava/lang/String;
    const-string/jumbo v0, "subtitle_size"

    const/4 v12, 0x2

    invoke-virtual {p2, v0, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 585
    .local v5, characterSizeIndex:I
    const-string/jumbo v0, "subtitle_edge"

    const/4 v12, 0x0

    invoke-virtual {p2, v0, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 586
    .local v6, characterEdgeIndex:I
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$600()Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v0

    #calls: Landroid/webkit/HTML5VideoViewProxy;->onSubtitleSettingsUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static/range {v0 .. v6}, Landroid/webkit/HTML5VideoViewProxy;->access$800(Landroid/webkit/HTML5VideoViewProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 588
    const/4 v0, 0x0

    #calls: Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setShowingStreaming(Z)V
    invoke-static {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$900(Z)V

    .line 590
    .end local v1           #characterColor:Ljava/lang/String;
    .end local v2           #backgroundColor:Ljava/lang/String;
    .end local v3           #windowColor:Ljava/lang/String;
    .end local v4           #fontPath:Ljava/lang/String;
    .end local v5           #characterSizeIndex:I
    .end local v6           #characterEdgeIndex:I
    .end local v8           #position:I
    .end local v9           #state:Z
    .end local v11           #tracks:Landroid/webkit/HTML5VideoViewProxy$TracksData;
    :cond_2
    return-void

    .line 569
    .restart local v7       #i:I
    .restart local v8       #position:I
    .restart local v10       #trackPlayedLang:Ljava/lang/String;
    .restart local v11       #tracks:Landroid/webkit/HTML5VideoViewProxy$TracksData;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 577
    .end local v10           #trackPlayedLang:Ljava/lang/String;
    .restart local v9       #state:Z
    :cond_4
    const/4 v7, -0x1

    goto :goto_1
.end method
