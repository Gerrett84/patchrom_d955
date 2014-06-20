.class public Lcom/lge/camera/util/DialogCreater;
.super Ljava/lang/Object;
.source "DialogCreater.java"


# static fields
.field public static final DIALOG_ID_AU_CLOUD:I = 0x1c

.field public static final DIALOG_ID_CAMERA_DRIVER_NEED_RESET:I = 0x13

.field public static final DIALOG_ID_CANNOT_CONNECT_CAMERA:I = 0x12

.field public static final DIALOG_ID_DELETE_CONFIRM:I = 0x3

.field public static final DIALOG_ID_DELETE_CONFIRM_MULTI:I = 0x8

.field public static final DIALOG_ID_DELETE_CONFIRM_VIDEO:I = 0x9

.field public static final DIALOG_ID_DELETE_DONE:I = 0x4

.field public static final DIALOG_ID_ENABLE_GALLERY:I = 0x18

.field public static final DIALOG_ID_EULA_POPUP:I = 0x17

.field public static final DIALOG_ID_EXTERNAL_ADD_STORAGE_FULL:I = 0xb

.field public static final DIALOG_ID_EXTERNAL_NOTIFICATION:I = 0xd

.field public static final DIALOG_ID_EXTERNAL_STORAGE_FULL:I = 0x1

.field public static final DIALOG_ID_GEO_TAG:I = 0xa

.field public static final DIALOG_ID_HELP_AUDIOZOOM:I = 0x72

.field public static final DIALOG_ID_HELP_BEAUTY_SHOT:I = 0x69

.field public static final DIALOG_ID_HELP_BURST_SHOT:I = 0x6d

.field public static final DIALOG_ID_HELP_CLEAR_SHOT:I = 0x73

.field public static final DIALOG_ID_HELP_CONTINUOUS_SHOT:I = 0x68

.field public static final DIALOG_ID_HELP_DUAL_CAMERA:I = 0x74

.field public static final DIALOG_ID_HELP_DUAL_RECORDING:I = 0x70

.field public static final DIALOG_ID_HELP_FACE_TRACKING_LED:I = 0x7a

.field public static final DIALOG_ID_HELP_FREE_PANORAMA:I = 0x6c

.field public static final DIALOG_ID_HELP_HDR:I = 0x65

.field public static final DIALOG_ID_HELP_HDR_MOVIE:I = 0x76

.field public static final DIALOG_ID_HELP_INTELLIGENT_AUTO_MODE:I = 0x6e

.field public static final DIALOG_ID_HELP_LIVE_EFFECT:I = 0x6b

.field public static final DIALOG_ID_HELP_NIGHT:I = 0x78

.field public static final DIALOG_ID_HELP_OTHER:I = 0x79

.field public static final DIALOG_ID_HELP_PANORAMA:I = 0x66

.field public static final DIALOG_ID_HELP_SMART_ZOOM_RECORDING:I = 0x75

.field public static final DIALOG_ID_HELP_SPORTS:I = 0x77

.field public static final DIALOG_ID_HELP_START_INDEX:I = 0x64

.field public static final DIALOG_ID_HELP_TIMEMACHINE:I = 0x67

.field public static final DIALOG_ID_HELP_UPLUS_BOX:I = 0x71

.field public static final DIALOG_ID_HELP_VOICE_PHOTO:I = 0x6a

.field public static final DIALOG_ID_HELP_WDR_MOVIE:I = 0x6f

.field public static final DIALOG_ID_INITIALIZE_CONFIG:I = 0x6

.field public static final DIALOG_ID_INTERNAL_NOTIFICATION:I = 0xc

.field public static final DIALOG_ID_NO_DELETE_SELECT:I = 0xf

.field public static final DIALOG_ID_NO_EXTERNAL:I = 0x0

.field public static final DIALOG_ID_NO_EXTERNAL_STORAGE:I = 0x7

.field public static final DIALOG_ID_PROGRESS:I = 0x16

.field public static final DIALOG_ID_RENAME:I = 0x5

.field public static final DIALOG_ID_SAVING_PROGRESS:I = 0x1b

.field public static final DIALOG_ID_SELECT_MEMORY:I = 0x1a

.field public static final DIALOG_ID_SELECT_VIDEO_LENGTH:I = 0x10

.field public static final DIALOG_ID_SETAS_LIST:I = 0x15

.field public static final DIALOG_ID_SHARE_LIST:I = 0x14

.field public static final DIALOG_ID_STORAGE_CONNECTED_PC:I = 0x11

.field public static final DIALOG_ID_STORAGE_FULL:I = 0xe

.field public static final DIALOG_ID_STORAGE_FULL_SAVE:I = 0x2

.field private static final DIALOG_ID_TEST:I = 0x63

.field public static final DIALOG_ID_TIMEMACHINE_WARNING:I = 0x19

.field private static mHelpDialogId:[[Ljava/lang/String;

.field private static mHelpPopupID:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 78
    const/16 v0, 0x15

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "hdr"

    aput-object v2, v1, v4

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "panorama"

    aput-object v2, v1, v4

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "free_panorama"

    aput-object v2, v1, v4

    const/16 v2, 0x6c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "timemachine"

    aput-object v3, v2, v4

    const/16 v3, 0x67

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "continuous"

    aput-object v3, v2, v4

    const/16 v3, 0x68

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "beauty_shot"

    aput-object v3, v2, v4

    const/16 v3, 0x69

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "voice_photo"

    aput-object v3, v2, v4

    const/16 v3, 0x6a

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "live_effect"

    aput-object v3, v2, v4

    const/16 v3, 0x6b

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "uplus_box"

    aput-object v3, v2, v4

    const/16 v3, 0x71

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "burst"

    aput-object v3, v2, v4

    const/16 v3, 0x6d

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "smart_camera_mode"

    aput-object v3, v2, v4

    const/16 v3, 0x6e

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "wdr"

    aput-object v3, v2, v4

    const/16 v3, 0x6f

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dual_recording"

    aput-object v3, v2, v4

    const/16 v3, 0x70

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "audiozoom"

    aput-object v3, v2, v4

    const/16 v3, 0x72

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "clear_shot"

    aput-object v3, v2, v4

    const/16 v3, 0x73

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "dual_camera"

    aput-object v3, v2, v4

    const/16 v3, 0x74

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "smart_zoom"

    aput-object v3, v2, v4

    const/16 v3, 0x75

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "hdr_movie"

    aput-object v3, v2, v4

    const/16 v3, 0x76

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sports"

    aput-object v3, v2, v4

    const/16 v3, 0x77

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "night"

    aput-object v3, v2, v4

    const/16 v3, 0x78

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "face_tracking"

    aput-object v3, v2, v4

    const/16 v3, 0x7a

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpDialogId:[[Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 6
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 454
    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->create(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Object;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 6
    .parameter "context"
    .parameter "id"
    .parameter "listener1"

    .prologue
    const/4 v3, 0x0

    .line 459
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->create(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Object;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 6
    .parameter "context"
    .parameter "id"
    .parameter "listener1"
    .parameter "listener2"

    .prologue
    const/4 v4, 0x0

    .line 465
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->create(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Object;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 6
    .parameter "context"
    .parameter "id"
    .parameter "listener1"
    .parameter "listener2"
    .parameter "listener3"

    .prologue
    .line 472
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->create(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Object;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Object;)Landroid/app/Dialog;
    .locals 8
    .parameter "context"
    .parameter "id"
    .parameter "listener1"
    .parameter "listener2"
    .parameter "listener3"
    .parameter "arg1"

    .prologue
    const v7, 0x7f0b003b

    const v6, 0x7f0b003a

    const v3, 0x1010355

    const v5, 0x7f0b0039

    const v4, 0x7f0b002e

    .line 480
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 482
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    sparse-switch p1, :sswitch_data_0

    .line 597
    const/4 v2, 0x0

    .line 600
    .end local p5
    :goto_0
    return-object v2

    .line 485
    .restart local p5
    :sswitch_0
    const v2, 0x7f0b007e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0081

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 600
    .end local p5
    :cond_0
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 493
    .restart local p5
    :sswitch_1
    const v2, 0x7f0b007e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0070

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 501
    :sswitch_2
    const v2, 0x7f0b007f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 505
    :sswitch_3
    if-eqz p0, :cond_0

    .line 506
    const v2, 0x7f0b0171

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b02ce

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 514
    :sswitch_4
    const v2, 0x7f0b0171

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b02bc

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 521
    :sswitch_5
    if-eqz p0, :cond_0

    .line 522
    const v2, 0x7f0b0171

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b02cf

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 530
    :sswitch_6
    const v2, 0x7f0b0175

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 534
    :sswitch_7
    const v2, 0x7f0b0170

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    check-cast p5, Landroid/view/View;

    .end local p5
    invoke-virtual {v2, p5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 541
    .restart local p5
    :sswitch_8
    const v2, 0x7f0b0032

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    check-cast p5, Landroid/view/View;

    .end local p5
    invoke-virtual {v2, p5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0038

    invoke-virtual {v2, v3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 548
    .restart local p5
    :sswitch_9
    const v2, 0x7f0b0046

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 552
    :sswitch_a
    const v2, 0x7f0b02d0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b02d1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0221

    invoke-virtual {v2, v3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 559
    :sswitch_b
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 560
    .local v1, et:Landroid/widget/EditText;
    const-string v2, "Pick a color"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 568
    .end local v1           #et:Landroid/widget/EditText;
    :sswitch_c
    const v2, 0x7f0b007d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    check-cast p5, Landroid/view/View;

    .end local p5
    invoke-virtual {v2, p5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 576
    .restart local p5
    :sswitch_d
    const v2, 0x7f0b007d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 583
    :sswitch_e
    const v2, 0x7f0b02d5

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b02d3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 590
    :sswitch_f
    const v2, 0x7f0b0110

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b007b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 482
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_8
        0x7 -> :sswitch_9
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0xa -> :sswitch_a
        0xb -> :sswitch_0
        0xc -> :sswitch_c
        0xd -> :sswitch_c
        0xe -> :sswitch_0
        0xf -> :sswitch_d
        0x18 -> :sswitch_e
        0x1a -> :sswitch_f
        0x63 -> :sswitch_b
    .end sparse-switch
.end method

.method public static getHelpDialogId(Ljava/lang/String;)I
    .locals 6
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 103
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpDialogId:[[Ljava/lang/String;

    .local v0, arr$:[[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 104
    .local v1, dialog:[Ljava/lang/String;
    aget-object v5, v1, v4

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 105
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 108
    .end local v1           #dialog:[Ljava/lang/String;
    :cond_0
    return v4

    .line 103
    .restart local v1       #dialog:[Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getHelpDialogKeyValue(I)Ljava/lang/String;
    .locals 5
    .parameter "dialogId"

    .prologue
    .line 112
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpDialogId:[[Ljava/lang/String;

    .local v0, arr$:[[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 113
    .local v1, dialog:[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 114
    const/4 v4, 0x0

    aget-object v4, v1, v4

    .line 117
    .end local v1           #dialog:[Ljava/lang/String;
    :goto_1
    return-object v4

    .line 112
    .restart local v1       #dialog:[Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    .end local v1           #dialog:[Ljava/lang/String;
    :cond_1
    const-string v4, "not found"

    goto :goto_1
.end method

.method public static getHelpItemResources(II)[I
    .locals 6
    .parameter "popupId"
    .parameter "cameraId"

    .prologue
    const/4 v5, 0x1

    .line 167
    const/4 v2, 0x0

    .line 168
    .local v2, titleId:I
    const/4 v1, 0x0

    .line 169
    .local v1, messageTextId:I
    const/4 v0, 0x0

    .line 171
    .local v0, messageImageId:I
    packed-switch p0, :pswitch_data_0

    .line 310
    :pswitch_0
    const/4 v2, 0x0

    .line 311
    const/4 v1, 0x0

    .line 312
    const/4 v0, 0x0

    .line 315
    :goto_0
    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    aput v1, v3, v5

    const/4 v4, 0x2

    aput v0, v3, v4

    return-object v3

    .line 173
    :pswitch_1
    const v2, 0x7f0b0357

    .line 174
    const v1, 0x7f0b036e

    .line 175
    const v0, 0x7f02038f

    .line 176
    goto :goto_0

    .line 179
    :pswitch_2
    const v2, 0x7f0b0358

    .line 180
    const v1, 0x7f0b036f

    .line 181
    const v0, 0x7f020395

    .line 182
    goto :goto_0

    .line 185
    :pswitch_3
    const v2, 0x7f0b0359

    .line 186
    const v1, 0x7f0b0370

    .line 187
    const v0, 0x7f02038e

    .line 188
    goto :goto_0

    .line 191
    :pswitch_4
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useTimeCatchShotTitle()Z

    move-result v3

    if-nez v3, :cond_0

    .line 192
    const v2, 0x7f0b035e

    .line 193
    const v1, 0x7f0b0373

    .line 198
    :goto_1
    const v0, 0x7f020399

    .line 199
    goto :goto_0

    .line 195
    :cond_0
    const v2, 0x7f0b035f

    .line 196
    const v1, 0x7f0b0374

    goto :goto_1

    .line 202
    :pswitch_5
    const v2, 0x7f0b0365

    .line 203
    const v1, 0x7f0b02c0

    .line 204
    const v0, 0x7f02038b

    .line 205
    goto :goto_0

    .line 208
    :pswitch_6
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v3

    const/16 v4, 0x13

    if-ne v3, v4, :cond_1

    .line 209
    const v2, 0x7f0b035c

    .line 210
    const v1, 0x7f0b030e

    .line 215
    :goto_2
    if-ne p1, v5, :cond_2

    .line 216
    const v0, 0x7f020388

    goto :goto_0

    .line 212
    :cond_1
    const v2, 0x7f0b035b

    .line 213
    const v1, 0x7f0b0372

    goto :goto_2

    .line 218
    :cond_2
    const v0, 0x7f020393

    .line 220
    goto :goto_0

    .line 223
    :pswitch_7
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useCheeseShutterTitle()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 224
    const v2, 0x7f0b0369

    .line 225
    const v1, 0x7f0b013c

    .line 230
    :goto_3
    const v0, 0x7f02039b

    .line 231
    goto :goto_0

    .line 227
    :cond_3
    const v2, 0x7f0b0368

    .line 228
    const v1, 0x7f0b013b

    goto :goto_3

    .line 234
    :pswitch_8
    const v2, 0x7f0b0364

    .line 235
    const v1, 0x7f0b0377

    .line 236
    const v0, 0x7f020392

    .line 237
    goto/16 :goto_0

    .line 240
    :pswitch_9
    const v2, 0x7f0b036a

    .line 241
    const v1, 0x7f0b0126

    .line 242
    const v0, 0x7f02039a

    .line 243
    goto/16 :goto_0

    .line 246
    :pswitch_a
    const v2, 0x7f0b035a

    .line 247
    const v1, 0x7f0b0371

    .line 248
    const v0, 0x7f020389

    .line 249
    goto/16 :goto_0

    .line 252
    :pswitch_b
    const v2, 0x7f0b0360

    .line 253
    const v1, 0x7f0b0375

    .line 254
    const v0, 0x7f020391

    .line 255
    goto/16 :goto_0

    .line 258
    :pswitch_c
    const v2, 0x7f0b0367

    .line 259
    const v1, 0x7f0b0379

    .line 260
    const v0, 0x7f02039c

    .line 261
    goto/16 :goto_0

    .line 264
    :pswitch_d
    const v2, 0x7f0b0363

    .line 265
    const v1, 0x7f0b0376

    .line 266
    const v0, 0x7f02038c

    .line 267
    goto/16 :goto_0

    .line 269
    :pswitch_e
    const v2, 0x7f0b036b

    .line 270
    const v1, 0x7f0b02fa

    .line 271
    const v0, 0x7f020387

    .line 272
    goto/16 :goto_0

    .line 274
    :pswitch_f
    const v2, 0x7f0b0356

    .line 275
    const v1, 0x7f0b036d

    .line 276
    const v0, 0x7f02038a

    .line 277
    goto/16 :goto_0

    .line 279
    :pswitch_10
    const v2, 0x7f0b035d

    .line 280
    const v1, 0x7f0b0376

    .line 281
    const v0, 0x7f02038c

    .line 282
    goto/16 :goto_0

    .line 284
    :pswitch_11
    const v2, 0x7f0b036c

    .line 285
    const v1, 0x7f0b0300

    .line 286
    const v0, 0x7f020396

    .line 287
    goto/16 :goto_0

    .line 289
    :pswitch_12
    const v2, 0x7f0b0366

    .line 290
    const v1, 0x7f0b0378

    .line 291
    const v0, 0x7f020390

    .line 292
    goto/16 :goto_0

    .line 294
    :pswitch_13
    const v2, 0x7f0b0361

    .line 295
    const v1, 0x7f0b0288

    .line 296
    const v0, 0x7f020397

    .line 297
    goto/16 :goto_0

    .line 299
    :pswitch_14
    const v2, 0x7f0b0362

    .line 300
    const v1, 0x7f0b0351

    .line 301
    const v0, 0x7f020394

    .line 302
    goto/16 :goto_0

    .line 304
    :pswitch_15
    const v2, 0x7f0b037b

    .line 305
    const v1, 0x7f0b037c

    .line 306
    const v0, 0x7f02038d

    .line 308
    goto/16 :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_9
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_15
    .end packed-switch
.end method

.method public static getHelpPopupID(I)I
    .locals 1
    .parameter "menuItem"

    .prologue
    .line 163
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0
.end method

.method public static getHorizontalHelpDialogWidth(Landroid/content/Context;Z)I
    .locals 1
    .parameter "context"
    .parameter "useVoice"

    .prologue
    const/high16 v0, 0x43e6

    .line 447
    if-eqz p0, :cond_1

    .line 448
    if-eqz p1, :cond_0

    :cond_0
    invoke-static {p0, v0}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 450
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeHelpDialog()V
    .locals 6

    .prologue
    const/16 v5, 0x6a

    const/16 v4, 0x69

    const/16 v3, 0x67

    .line 122
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    .line 124
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0b033e

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 125
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0b00f3

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 126
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isTimeMachinShotSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useTimeCatchShotTitle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0b02de

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 133
    :cond_0
    :goto_0
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0b00ef

    const/16 v2, 0x68

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 134
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_2

    .line 135
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0b030d

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 139
    :goto_1
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0b026f

    const/16 v2, 0x6b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 140
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0b0125

    const/16 v2, 0x71

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 141
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0b00f9

    const/16 v2, 0x6d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 142
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0b02eb

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 143
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0b00fb

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 144
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0b024d

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 145
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0b00fc

    const/16 v2, 0x76

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 146
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0b00c9

    const/16 v2, 0x77

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 147
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0b00ca

    const/16 v2, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 149
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0b00f7

    const/16 v2, 0x6c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 150
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useCheeseShutterTitle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0b012e

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 155
    :goto_2
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0b0270

    const/16 v2, 0x70

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 156
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0b0274

    const/16 v2, 0x72

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 157
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0b0255

    const/16 v2, 0x74

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 158
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0b0272

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 159
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0b011a

    const/16 v2, 0x7a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 160
    return-void

    .line 130
    :cond_1
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0b0251

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_0

    .line 137
    :cond_2
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0b0250

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_1

    .line 153
    :cond_3
    sget-object v0, Lcom/lge/camera/util/DialogCreater;->mHelpPopupID:Landroid/util/SparseIntArray;

    const v1, 0x7f0b0129

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2
.end method

.method public static setCommandLayout(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 10
    .parameter "context"
    .parameter "parentView"
    .parameter "isLand"

    .prologue
    const/16 v9, 0x8

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x2

    .line 322
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    if-eqz p2, :cond_2

    const v0, 0x7f0a02af

    invoke-static {p0, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    .line 331
    .local v2, viewWidth:I
    :goto_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportVoiceShutterAME()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 332
    if-eqz p2, :cond_3

    const/high16 v0, 0x430c

    :goto_2
    invoke-static {p0, v0}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 334
    const v3, 0x7f0901f1

    move-object v5, v6

    check-cast v5, [[I

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 336
    const v3, 0x7f0901f5

    new-array v5, v8, [[I

    new-array v0, v7, [I

    fill-array-data v0, :array_0

    aput-object v0, v5, v4

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 340
    const v3, 0x7f0901fd

    new-array v5, v7, [[I

    new-array v0, v7, [I

    fill-array-data v0, :array_1

    aput-object v0, v5, v4

    new-array v0, v7, [I

    fill-array-data v0, :array_2

    aput-object v0, v5, v8

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 345
    const v3, 0x7f090201

    new-array v5, v7, [[I

    new-array v0, v7, [I

    fill-array-data v0, :array_3

    aput-object v0, v5, v4

    new-array v0, v7, [I

    fill-array-data v0, :array_4

    aput-object v0, v5, v8

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 350
    const v3, 0x7f0901f9

    move-object v5, v6

    check-cast v5, [[I

    move-object v0, p0

    move-object v1, p1

    move v4, v9

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 351
    const v3, 0x7f090205

    move-object v5, v6

    check-cast v5, [[I

    move-object v0, p0

    move-object v1, p1

    move v4, v9

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    goto :goto_0

    .line 326
    .end local v2           #viewWidth:I
    :cond_2
    const v0, 0x7f0a02b0

    invoke-static {p0, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    goto :goto_1

    .line 332
    .restart local v2       #viewWidth:I
    :cond_3
    const/high16 v0, 0x431c

    goto :goto_2

    .line 353
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportVoiceShutterJapanese()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 354
    if-eqz p2, :cond_5

    const/high16 v0, 0x42dc

    :goto_3
    invoke-static {p0, v0}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 356
    const v3, 0x7f0901f1

    move-object v5, v6

    check-cast v5, [[I

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 358
    const v3, 0x7f0901f5

    new-array v5, v8, [[I

    new-array v0, v7, [I

    fill-array-data v0, :array_5

    aput-object v0, v5, v4

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 362
    const v3, 0x7f090201

    new-array v5, v7, [[I

    new-array v0, v7, [I

    fill-array-data v0, :array_6

    aput-object v0, v5, v4

    new-array v0, v7, [I

    fill-array-data v0, :array_7

    aput-object v0, v5, v8

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 367
    const v3, 0x7f090205

    new-array v5, v7, [[I

    new-array v0, v7, [I

    fill-array-data v0, :array_8

    aput-object v0, v5, v4

    new-array v0, v7, [I

    fill-array-data v0, :array_9

    aput-object v0, v5, v8

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 372
    const v3, 0x7f0901f9

    move-object v5, v6

    check-cast v5, [[I

    move-object v0, p0

    move-object v1, p1

    move v4, v9

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 373
    const v3, 0x7f0901fd

    move-object v5, v6

    check-cast v5, [[I

    move-object v0, p0

    move-object v1, p1

    move v4, v9

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    goto/16 :goto_0

    .line 354
    :cond_5
    const/high16 v0, 0x431c

    goto :goto_3

    .line 376
    :cond_6
    const v3, 0x7f0901f1

    move-object v5, v6

    check-cast v5, [[I

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 378
    if-eqz p2, :cond_7

    .line 379
    const v3, 0x7f0901f5

    new-array v5, v8, [[I

    new-array v0, v7, [I

    fill-array-data v0, :array_a

    aput-object v0, v5, v4

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 383
    const v3, 0x7f0901f9

    new-array v5, v7, [[I

    new-array v0, v7, [I

    fill-array-data v0, :array_b

    aput-object v0, v5, v4

    new-array v0, v7, [I

    fill-array-data v0, :array_c

    aput-object v0, v5, v8

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 388
    const v3, 0x7f0901fd

    new-array v5, v7, [[I

    new-array v0, v7, [I

    fill-array-data v0, :array_d

    aput-object v0, v5, v4

    new-array v0, v7, [I

    fill-array-data v0, :array_e

    aput-object v0, v5, v8

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 393
    const v3, 0x7f090201

    new-array v5, v7, [[I

    new-array v0, v7, [I

    fill-array-data v0, :array_f

    aput-object v0, v5, v4

    new-array v0, v7, [I

    fill-array-data v0, :array_10

    aput-object v0, v5, v8

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 417
    :goto_4
    const v3, 0x7f090205

    const/4 v4, 0x4

    move-object v5, v6

    check-cast v5, [[I

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    goto/16 :goto_0

    .line 398
    :cond_7
    const v3, 0x7f0901f5

    new-array v5, v8, [[I

    new-array v0, v7, [I

    fill-array-data v0, :array_11

    aput-object v0, v5, v4

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 402
    const v3, 0x7f0901f9

    new-array v5, v7, [[I

    new-array v0, v7, [I

    fill-array-data v0, :array_12

    aput-object v0, v5, v4

    new-array v0, v7, [I

    fill-array-data v0, :array_13

    aput-object v0, v5, v8

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 407
    const v3, 0x7f0901fd

    new-array v5, v7, [[I

    new-array v0, v7, [I

    fill-array-data v0, :array_14

    aput-object v0, v5, v4

    new-array v0, v7, [I

    fill-array-data v0, :array_15

    aput-object v0, v5, v8

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    .line 412
    const v3, 0x7f090201

    new-array v5, v7, [[I

    new-array v0, v7, [I

    fill-array-data v0, :array_16

    aput-object v0, v5, v4

    new-array v0, v7, [I

    fill-array-data v0, :array_17

    aput-object v0, v5, v8

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/DialogCreater;->setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V

    goto :goto_4

    .line 336
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xf1t 0x1t 0x9t 0x7ft
    .end array-data

    .line 340
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xf1t 0x1t 0x9t 0x7ft
    .end array-data

    .line 345
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xfdt 0x1t 0x9t 0x7ft
    .end array-data

    :array_4
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xf5t 0x1t 0x9t 0x7ft
    .end array-data

    .line 358
    :array_5
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xf1t 0x1t 0x9t 0x7ft
    .end array-data

    .line 362
    :array_6
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xf1t 0x1t 0x9t 0x7ft
    .end array-data

    .line 367
    :array_8
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x2t 0x9t 0x7ft
    .end array-data

    :array_9
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xf5t 0x1t 0x9t 0x7ft
    .end array-data

    .line 379
    :array_a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xf1t 0x1t 0x9t 0x7ft
    .end array-data

    .line 383
    :array_b
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xf1t 0x1t 0x9t 0x7ft
    .end array-data

    .line 388
    :array_d
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xf9t 0x1t 0x9t 0x7ft
    .end array-data

    :array_e
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xf5t 0x1t 0x9t 0x7ft
    .end array-data

    .line 393
    :array_f
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_10
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xf9t 0x1t 0x9t 0x7ft
    .end array-data

    .line 398
    :array_11
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xf1t 0x1t 0x9t 0x7ft
    .end array-data

    .line 402
    :array_12
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_13
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xf5t 0x1t 0x9t 0x7ft
    .end array-data

    .line 407
    :array_14
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_15
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xf1t 0x1t 0x9t 0x7ft
    .end array-data

    .line 412
    :array_16
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xfdt 0x1t 0x9t 0x7ft
    .end array-data

    :array_17
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xf5t 0x1t 0x9t 0x7ft
    .end array-data
.end method

.method public static setVoiceCommandLayoutParams(Landroid/content/Context;Landroid/view/View;III[[I)V
    .locals 6
    .parameter "context"
    .parameter "parentView"
    .parameter "viewWidth"
    .parameter "commandLayoutId"
    .parameter "visible"
    .parameter "addRule"

    .prologue
    .line 424
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-gtz p3, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 430
    .local v1, commandView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 431
    invoke-virtual {v1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 432
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 433
    .local v0, commandParams:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_0

    .line 434
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 435
    invoke-static {v0}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 436
    if-nez p4, :cond_2

    if-eqz p5, :cond_2

    .line 437
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, p5

    if-ge v2, v3, :cond_2

    .line 438
    aget-object v3, p5, v2

    const/4 v4, 0x0

    aget v3, v3, v4

    aget-object v4, p5, v2

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 437
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 441
    .end local v2           #i:I
    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
