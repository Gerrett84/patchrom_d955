.class public Lcom/lge/camera/adapter/HelpItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "HelpItemAdapter.java"


# static fields
.field private static final PREFERENCE_NOT_FOUND:I = -0x1


# instance fields
.field private isRecordingModeCategoryNeeded:Z

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Lcom/lge/camera/dialog/HelpActivityDialog;

.field private mOrientation:I

.field private mStringDesc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStringMainMenu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStringMainMenuIcon:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStringMenu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;III)V
    .locals 2
    .parameter "context"
    .parameter "activity"
    .parameter "mode"
    .parameter "cameraId"
    .parameter "orientation"

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    .line 44
    iput v1, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mOrientation:I

    .line 46
    iput-boolean v1, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->isRecordingModeCategoryNeeded:Z

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mContext:Ljava/lang/ref/WeakReference;

    .line 52
    iput p5, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mOrientation:I

    .line 53
    new-instance v0, Lcom/lge/camera/dialog/HelpActivityDialog;

    invoke-direct {v0, p2, p4}, Lcom/lge/camera/dialog/HelpActivityDialog;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mDialog:Lcom/lge/camera/dialog/HelpActivityDialog;

    .line 54
    invoke-direct {p0, p3, p4}, Lcom/lge/camera/adapter/HelpItemAdapter;->makeHelpGuideItem(II)V

    .line 55
    return-void
.end method

.method private addColorEffectItemsForCamcorder()V
    .locals 3

    .prologue
    const v2, 0x7f0b00d9

    .line 448
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v1, 0x7f02011a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02a7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b00e3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0297

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b00da

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02a8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b00dd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02a9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b00db

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02aa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    return-void
.end method

.method private addColorEffectItemsForCamera()V
    .locals 3

    .prologue
    const v2, 0x7f0b00d9

    .line 403
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v1, 0x7f02011a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02a7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b00e3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0297

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b00da

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0298

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b00dd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0299

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b00db

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b029a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    return-void
.end method

.method private addRecordingModeForFrontVideo()V
    .locals 7

    .prologue
    const v6, 0x7f0b0273

    const v5, 0x7f0b0270

    const v4, 0x7f0b026f

    const v3, 0x7f0b00fa

    const v2, 0x7f02017d

    .line 540
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/camera/adapter/HelpItemAdapter;->isRecordingModeCategorizingNeeded(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 541
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0278

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b0042

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0345

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->isRecordingModeCategoryNeeded:Z

    .line 563
    :cond_1
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 564
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 568
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02fb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualRecordingSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 572
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02f6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    :cond_4
    return-void

    .line 551
    :cond_5
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 552
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v1, 0x7f02017f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 554
    :cond_6
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualRecordingSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 555
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v1, 0x7f02017e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 557
    :cond_7
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private addRecordingModeForMainVideo()V
    .locals 7

    .prologue
    const v6, 0x7f0b00fc

    const v5, 0x7f0b00fb

    const v4, 0x7f0b00fa

    const/4 v3, 0x1

    const v2, 0x7f02017d

    .line 467
    invoke-direct {p0, v3}, Lcom/lge/camera/adapter/HelpItemAdapter;->isRecordingModeCategorizingNeeded(Z)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 468
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0278

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b0042

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0345

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    :cond_0
    iput-boolean v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->isRecordingModeCategoryNeeded:Z

    .line 505
    :cond_1
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b026f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02fb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isWDRSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 510
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isHDRRecordingNameUsed()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 511
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualRecordingSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 518
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b0270

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02f6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isSmartZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 522
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b0272

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_5
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 526
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b0273

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_6
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 530
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b0274

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02f9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    :cond_7
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportObjectTracking()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 534
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b0275

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02f5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    :cond_8
    return-void

    .line 478
    :cond_9
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 479
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b026f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v1, 0x7f02017f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 481
    :cond_a
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isWDRSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 482
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isHDRRecordingNameUsed()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 483
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    :goto_2
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v1, 0x7f020180

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 485
    :cond_b
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 488
    :cond_c
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualRecordingSupported()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 489
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b0270

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v1, 0x7f02017e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 491
    :cond_d
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isSmartZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 492
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b0272

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v1, 0x7f0201bc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 494
    :cond_e
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 495
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b0273

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 497
    :cond_f
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 498
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b0274

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 500
    :cond_10
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportObjectTracking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b0275

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 513
    :cond_11
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private addShotModeItemsForMainCamera()V
    .locals 7

    .prologue
    const v6, 0x7f0b00ee

    const/4 v5, -0x1

    .line 294
    new-instance v0, Lcom/lge/camera/setting/PreferenceInflater;

    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/lge/camera/setting/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 295
    .local v0, inflater:Lcom/lge/camera/setting/PreferenceInflater;
    invoke-static {}, Lcom/lge/camera/properties/PreferenceProperties;->getBackCameraPreferenceResource()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/setting/PreferenceGroup;

    .line 298
    .local v2, prefGroup:Lcom/lge/camera/setting/PreferenceGroup;
    const-string v3, "key_camera_shot_mode"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 300
    .local v1, listPref:Lcom/lge/camera/setting/ListPreference;
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v4, 0x7f02018d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v4, 0x7f0b029c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v4, 0x7f0b0042

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v4, 0x7f0b0344

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v3

    if-nez v3, :cond_0

    .line 309
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportSmartMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 310
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v4, 0x7f0b02eb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v4, 0x7f0b02f3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isClearShotSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 316
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v4, 0x7f0b024d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v4, 0x7f0b02f2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_1
    if-eqz v1, :cond_2

    const-string v3, "shotmode_hdr"

    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_2

    .line 322
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v4, 0x7f0b033e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v4, 0x7f0b02c2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_2
    if-eqz v1, :cond_3

    const-string v3, "shotmode_panorama"

    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_3

    .line 329
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v4, 0x7f0b00f3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v4, 0x7f0b029f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFreePanoramaSupported()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 334
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v4, 0x7f0b00f7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v4, 0x7f0b02fc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 339
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v4, 0x7f0b00f9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v4, 0x7f0b02f1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_5
    :goto_0
    if-eqz v1, :cond_6

    const-string v3, "shotmode_main_beauty"

    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_6

    .line 353
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v3

    const/16 v4, 0x13

    if-ne v3, v4, :cond_b

    .line 354
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v4, 0x7f0b030d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v4, 0x7f0b030e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_6
    :goto_1
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualCameraSupported()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 363
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v4, 0x7f0b0255

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v4, 0x7f0b02fe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_7
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isTimeMachinShotSupported()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 368
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useTimeCatchShotTitle()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 369
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v4, 0x7f0b02de

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v4, 0x7f0b02c8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_8
    :goto_2
    return-void

    .line 341
    :cond_9
    if-eqz v1, :cond_5

    const-string v3, "shotmode_continuous"

    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_a

    const-string v3, "shotmode_full_continuous"

    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_5

    .line 345
    :cond_a
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v4, 0x7f0b00ef

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v4, 0x7f0b029e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 357
    :cond_b
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v4, 0x7f0b0250

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v4, 0x7f0b02be

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 373
    :cond_c
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v4, 0x7f0b0251

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v4, 0x7f0b02c7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private addWhiteBalanceItemsForCamcorder()V
    .locals 3

    .prologue
    const v2, 0x7f0b00d3

    .line 422
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v1, 0x7f02022d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b028c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b00d8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b028d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b00d4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0292

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b00d5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0293

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b00d6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0294

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b00d7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0295

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    return-void
.end method

.method private addWhiteBalanceItemsForCamera()V
    .locals 3

    .prologue
    const v2, 0x7f0b00d3

    .line 381
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v1, 0x7f02022d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b028c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b00d8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b028d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b00d4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0292

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b00d5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0293

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b00d6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0294

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b00d7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0295

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    return-void
.end method

.method private isRecordingModeCategorizingNeeded(Z)Z
    .locals 2
    .parameter "isMainCamera"

    .prologue
    .line 578
    const/4 v0, 0x0

    .line 580
    .local v0, numOfSupportingRecordingMode:I
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    add-int/lit8 v0, v0, 0x1

    .line 583
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVideoStabilizationSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 584
    add-int/lit8 v0, v0, 0x1

    .line 586
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualRecordingSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 587
    add-int/lit8 v0, v0, 0x1

    .line 589
    :cond_2
    if-eqz p1, :cond_5

    .line 590
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isWDRSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 591
    add-int/lit8 v0, v0, 0x1

    .line 593
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportObjectTracking()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 594
    add-int/lit8 v0, v0, 0x1

    .line 596
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 597
    add-int/lit8 v0, v0, 0x1

    .line 600
    :cond_5
    const/4 v1, 0x2

    if-lt v0, v1, :cond_6

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeFrontCameraHelpItem()V
    .locals 7

    .prologue
    const v6, 0x7f0b012e

    const v5, 0x7f0b0129

    const v4, 0x7f0b00ee

    const v3, 0x7f0b00c6

    const v2, 0x7f0b003c

    .line 164
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v1, 0x7f02013b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0278

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSupportFrontCameraModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b0045

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0278

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b0109

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02a1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b02d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02a2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b0124

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02b9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v1, 0x7f02018d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0344

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 192
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b0042

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0344

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_8

    .line 204
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b030d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b030e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    :goto_1
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b0255

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-nez v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v1, 0x7f02018b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0284

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b00cc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0285

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b00ca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b028a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 230
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useCheeseShutterTitle()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 231
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    :goto_2
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02e4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_5
    invoke-direct {p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->addWhiteBalanceItemsForCamera()V

    .line 238
    invoke-direct {p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->addColorEffectItemsForCamera()V

    .line 239
    return-void

    .line 195
    :cond_6
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useCheeseShutterTitle()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 196
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :goto_3
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02e4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 198
    :cond_7
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 207
    :cond_8
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b0250

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02be

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 233
    :cond_9
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private makeFrontVideoHelpItem()V
    .locals 4

    .prologue
    const v3, 0x7f0b0278

    const v2, 0x7f0b003c

    .line 268
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v1, 0x7f02013b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSupportFrontCameraModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b0045

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b015d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02b0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b02d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02b1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-direct {p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->addRecordingModeForFrontVideo()V

    .line 288
    invoke-direct {p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->addWhiteBalanceItemsForCamcorder()V

    .line 289
    invoke-direct {p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->addColorEffectItemsForCamcorder()V

    .line 291
    return-void
.end method

.method private makeHelpGuideItem(II)V
    .locals 0
    .parameter "mode"
    .parameter "cameraId"

    .prologue
    .line 58
    if-nez p1, :cond_1

    .line 59
    if-nez p2, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->makeMainCameraHelpItem()V

    .line 71
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->makeFrontCameraHelpItem()V

    goto :goto_0

    .line 65
    :cond_1
    if-nez p2, :cond_2

    .line 66
    invoke-direct {p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->makeMainVideoHelpItem()V

    goto :goto_0

    .line 68
    :cond_2
    invoke-direct {p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->makeFrontVideoHelpItem()V

    goto :goto_0
.end method

.method private makeMainCameraHelpItem()V
    .locals 7

    .prologue
    const v6, 0x7f0b012e

    const v5, 0x7f0b0129

    const v4, 0x7f0b00ce

    const v3, 0x7f0b00c6

    const v2, 0x7f0b003c

    .line 74
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v1, 0x7f02013b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0278

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSupportFrontCameraModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b0045

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0278

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b0109

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02a1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b02d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02a2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-direct {p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->addShotModeItemsForMainCamera()V

    .line 96
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 97
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportSmartMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b02eb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02f3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_3
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-nez v0, :cond_4

    .line 121
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b00c7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0286

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b00c8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0287

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b00c9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0288

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-nez v0, :cond_5

    .line 132
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b00cb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0289

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b00ca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b028a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSmartShutterSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 141
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b024f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0242

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_6
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 145
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useCheeseShutterTitle()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 146
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02e4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_7
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v1, 0x7f020168

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b028b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-direct {p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->addWhiteBalanceItemsForCamera()V

    .line 159
    invoke-direct {p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->addColorEffectItemsForCamera()V

    .line 161
    return-void

    .line 103
    :cond_8
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useCheeseShutterTitle()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 104
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    :goto_2
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02e4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v1, 0x7f02018b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0284

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b00cc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b0285

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 106
    :cond_9
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 148
    :cond_a
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private makeMainVideoHelpItem()V
    .locals 4

    .prologue
    const v3, 0x7f0b0278

    const v2, 0x7f0b003c

    .line 243
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v1, 0x7f02013b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSupportFrontCameraModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b0045

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b015d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02b0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0b02d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0b02b1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-direct {p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->addRecordingModeForMainVideo()V

    .line 263
    invoke-direct {p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->addWhiteBalanceItemsForCamcorder()V

    .line 264
    invoke-direct {p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->addColorEffectItemsForCamcorder()V

    .line 265
    return-void
.end method

.method private setHelpItemLayout(ILandroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 22
    .parameter "position"
    .parameter "tempContext"
    .parameter "view"

    .prologue
    .line 639
    const v19, 0x7f0900a4

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 640
    .local v11, mainItemLayout:Landroid/widget/LinearLayout;
    const v19, 0x7f0900a9

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 641
    .local v15, subItemLayout:Landroid/widget/LinearLayout;
    const v19, 0x7f0900a7

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 642
    .local v3, divider:Landroid/widget/LinearLayout;
    const v19, 0x7f0900af

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 644
    .local v14, subDivider:Landroid/widget/LinearLayout;
    const v19, 0x7f0900a6

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 645
    .local v17, tvMainMenu:Landroid/widget/TextView;
    const v19, 0x7f0900ab

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 646
    .local v18, tvSubMenu:Landroid/widget/TextView;
    const v19, 0x7f0900ac

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 648
    .local v16, tvDesc:Landroid/widget/TextView;
    const v19, 0x7f0900a5

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 649
    .local v10, ivMainIcon:Landroid/widget/ImageView;
    const v19, 0x7f0900ae

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 651
    .local v9, ivHelpPopupIcon:Landroid/widget/ImageView;
    const v19, 0x7f0900aa

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 652
    .local v6, helpItemText:Landroid/view/View;
    const v19, 0x7f0900ad

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 654
    .local v4, helpItemIcon:Landroid/view/View;
    if-eqz v11, :cond_0

    if-eqz v15, :cond_0

    if-eqz v3, :cond_0

    if-eqz v14, :cond_0

    if-eqz v17, :cond_0

    if-eqz v18, :cond_0

    if-eqz v16, :cond_0

    if-eqz v10, :cond_0

    if-eqz v6, :cond_0

    if-nez v4, :cond_1

    .line 736
    :cond_0
    :goto_0
    return-object p3

    .line 660
    :cond_1
    const-string v20, "CameraApp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mStringMenu[position] = "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 663
    .local v7, helpItemTextLp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 665
    .local v5, helpItemIconLp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 666
    .local v13, popupID:I
    new-instance v19, Lcom/lge/camera/adapter/HelpItemAdapter$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/lge/camera/adapter/HelpItemAdapter$1;-><init>(Lcom/lge/camera/adapter/HelpItemAdapter;I)V

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 674
    .local v12, mainMenuSize:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v12, :cond_0

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 677
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 678
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 679
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 681
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 682
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/lge/camera/util/DialogCreater;->getHelpPopupID(I)I

    move-result v19

    if-eqz v19, :cond_4

    .line 685
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 686
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mOrientation:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    const v19, 0x3f666666

    :goto_2
    move/from16 v0, v19

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 687
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mOrientation:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    const v19, 0x3dcccccd

    :goto_3
    move/from16 v0, v19

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 693
    :goto_4
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 694
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    sget-object v19, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    sget-object v19, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 674
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 686
    :cond_2
    const v19, 0x3f570a3d

    goto :goto_2

    .line 687
    :cond_3
    const v19, 0x3e23d70a

    goto :goto_3

    .line 689
    :cond_4
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 690
    const/high16 v19, 0x3f80

    move/from16 v0, v19

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 691
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_4

    .line 703
    :cond_5
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    sget-object v19, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 712
    :cond_6
    const v19, 0x7f0b00ce

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->isRecordingModeCategoryNeeded:Z

    move/from16 v19, v0

    if-nez v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f0b026f

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f0b00fb

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f0b0270

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f0b0273

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f0b0275

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f0b0274

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 721
    :cond_7
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 722
    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 723
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    sget-object v19, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 732
    :goto_5
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 728
    :cond_8
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 729
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5
.end method


# virtual methods
.method public createDialog(I)V
    .locals 3
    .parameter "whichPopup"

    .prologue
    .line 759
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Which popup ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mDialog:Lcom/lge/camera/dialog/HelpActivityDialog;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mDialog:Lcom/lge/camera/dialog/HelpActivityDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/HelpActivityDialog;->dismissHelpDialog()V

    .line 762
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mDialog:Lcom/lge/camera/dialog/HelpActivityDialog;

    iget v1, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mOrientation:I

    invoke-virtual {v0, p1, v1}, Lcom/lge/camera/dialog/HelpActivityDialog;->create(II)V

    .line 764
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 604
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HelpAdapter --- getCount() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/lge/camera/adapter/HelpItemAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 4
    .parameter "position"

    .prologue
    .line 609
    const-string v2, "CameraApp"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HelpAdapter --- getItem()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mStringMenu[postion] :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 615
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HelpAdapter --- getItemId()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemPosition(Ljava/lang/String;)I
    .locals 5
    .parameter "key"

    .prologue
    .line 740
    const/4 v2, 0x0

    .line 741
    .local v2, position:I
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 742
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 743
    .local v1, menuSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 744
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iget-object v4, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 745
    move v2, v0

    .line 750
    .end local v0           #i:I
    .end local v1           #menuSize:I
    :cond_0
    return v2

    .line 743
    .restart local v0       #i:I
    .restart local v1       #menuSize:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 620
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HelpAdapter --- getView() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v4, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 622
    .local v0, tempContext:Landroid/content/Context;
    if-nez v0, :cond_1

    .line 623
    const-string v4, "CameraApp"

    const-string v5, "Cannot getView because tempContext is null"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :cond_0
    :goto_0
    return-object v3

    .line 626
    :cond_1
    move-object v2, p2

    .line 627
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_2

    .line 628
    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 629
    .local v1, vi:Landroid/view/LayoutInflater;
    const v4, 0x7f030012

    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 631
    .end local v1           #vi:Landroid/view/LayoutInflater;
    :cond_2
    if-eqz v2, :cond_0

    .line 634
    invoke-direct {p0, p1, v0, v2}, Lcom/lge/camera/adapter/HelpItemAdapter;->setHelpItemLayout(ILandroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 755
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mDialog:Lcom/lge/camera/dialog/HelpActivityDialog;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mDialog:Lcom/lge/camera/dialog/HelpActivityDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/HelpActivityDialog;->dismissHelpDialog()V

    .line 774
    :cond_0
    return-void
.end method

.method public refreshDialog()V
    .locals 2

    .prologue
    .line 777
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mDialog:Lcom/lge/camera/dialog/HelpActivityDialog;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mDialog:Lcom/lge/camera/dialog/HelpActivityDialog;

    iget v1, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/lge/camera/dialog/HelpActivityDialog;->refreshDialog(I)V

    .line 780
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 767
    iput p1, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mOrientation:I

    .line 768
    return-void
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 783
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 785
    iput-object v1, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 788
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 789
    iput-object v1, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    .line 791
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 792
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 793
    iput-object v1, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    .line 795
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 796
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 797
    iput-object v1, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    .line 799
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mDialog:Lcom/lge/camera/dialog/HelpActivityDialog;

    if-eqz v0, :cond_4

    .line 800
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mDialog:Lcom/lge/camera/dialog/HelpActivityDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/HelpActivityDialog;->unbind()V

    .line 801
    iput-object v1, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mDialog:Lcom/lge/camera/dialog/HelpActivityDialog;

    .line 803
    :cond_4
    iput-object v1, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mContext:Ljava/lang/ref/WeakReference;

    .line 804
    return-void
.end method
