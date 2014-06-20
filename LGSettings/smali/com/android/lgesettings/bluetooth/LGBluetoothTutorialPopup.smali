.class public Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;
.super Ljava/lang/Object;
.source "LGBluetoothTutorialPopup.java"


# static fields
.field private static gravity:I

.field private static mContext:Landroid/content/Context;

.field private static mPopupPref:Landroid/content/SharedPreferences;

.field private static mPopupView:Landroid/view/View;

.field private static mPopupWindow:Landroid/widget/PopupWindow;

.field public static mPopupWindowType:I

.field static y:I


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mTextGuide:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 43
    sput-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8
    .parameter "context"
    .parameter "mPopupType"

    .prologue
    const/4 v6, 0x1

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const v4, 0x7f040025

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    sput-object v4, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupView:Landroid/view/View;

    .line 72
    :try_start_0
    sget-object v4, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 73
    .local v3, wm:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 74
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 76
    .local v2, orientation:I
    if-eq v2, v6, :cond_0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 77
    :cond_0
    new-instance v4, Landroid/widget/PopupWindow;

    sget-object v5, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupView:Landroid/view/View;

    sget v6, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->widthInLandscape:I

    const/4 v7, -0x2

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    sput-object v4, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 84
    :goto_0
    sget-object v4, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupView:Landroid/view/View;

    const v5, 0x7f0a004d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mButton:Landroid/widget/Button;

    .line 86
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup$1;

    invoke-direct {v5, p0}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup$1;-><init>(Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    sget-object v4, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupView:Landroid/view/View;

    const v5, 0x7f0a004b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mTitle:Landroid/widget/TextView;

    .line 94
    sget-object v4, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupView:Landroid/view/View;

    const v5, 0x7f0a004c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mTextGuide:Landroid/widget/TextView;

    .line 96
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mTextGuide:Landroid/widget/TextView;

    new-instance v5, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v5}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 101
    packed-switch p2, :pswitch_data_0

    .line 146
    .end local v0           #display:Landroid/view/Display;
    .end local v2           #orientation:I
    .end local v3           #wm:Landroid/view/WindowManager;
    :goto_1
    return-void

    .line 80
    .restart local v0       #display:Landroid/view/Display;
    .restart local v2       #orientation:I
    .restart local v3       #wm:Landroid/view/WindowManager;
    :cond_1
    new-instance v4, Landroid/widget/PopupWindow;

    sget-object v5, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupView:Landroid/view/View;

    sget v6, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->widthInPortrait:I

    const/4 v7, -0x2

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    sput-object v4, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupWindow:Landroid/widget/PopupWindow;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    .end local v0           #display:Landroid/view/Display;
    .end local v2           #orientation:I
    .end local v3           #wm:Landroid/view/WindowManager;
    :catch_0
    move-exception v1

    .line 142
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "LGBluetoothTutorialPopup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LGBluetoothTutorialPopup Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 103
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #display:Landroid/view/Display;
    .restart local v2       #orientation:I
    .restart local v3       #wm:Landroid/view/WindowManager;
    :pswitch_0
    :try_start_1
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mTitle:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 104
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mTitle:Landroid/widget/TextView;

    const v5, 0x7f081509

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 106
    :cond_2
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mTextGuide:Landroid/widget/TextView;

    const v5, 0x7f08150e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 107
    const/16 v4, 0x30

    sput v4, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->gravity:I

    .line 108
    const/high16 v4, 0x42b0

    invoke-static {v4}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->dip2px(F)I

    move-result v4

    sput v4, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->y:I

    goto :goto_1

    .line 112
    :pswitch_1
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mTitle:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 113
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mTitle:Landroid/widget/TextView;

    const v5, 0x7f08150a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 115
    :cond_3
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mTextGuide:Landroid/widget/TextView;

    const v5, 0x7f081510

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 116
    const/16 v4, 0x50

    sput v4, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->gravity:I

    .line 117
    const/high16 v4, 0x4270

    invoke-static {v4}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->dip2px(F)I

    move-result v4

    sput v4, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->y:I

    goto :goto_1

    .line 121
    :pswitch_2
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mTitle:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 122
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mTitle:Landroid/widget/TextView;

    const v5, 0x7f08150c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 124
    :cond_4
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mTextGuide:Landroid/widget/TextView;

    const v5, 0x7f081511

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 125
    const/4 v4, 0x1

    sput v4, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->gravity:I

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v4, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->y:I

    goto/16 :goto_1

    .line 130
    :pswitch_3
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mTitle:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    .line 131
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mTitle:Landroid/widget/TextView;

    const v5, 0x7f08150d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 133
    :cond_5
    iget-object v4, p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mTextGuide:Landroid/widget/TextView;

    const v5, 0x7f081512

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 134
    const/16 v4, 0x50

    sput v4, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->gravity:I

    .line 135
    const/high16 v4, 0x4270

    invoke-static {v4}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->dip2px(F)I

    move-result v4

    sput v4, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->y:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$000()Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$102(Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    sput-object p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupPref:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static dismissPopup()V
    .locals 2

    .prologue
    .line 269
    const-string v0, "LGBluetoothTutorialPopup"

    const-string v1, "dismissPopup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 272
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 276
    :cond_0
    return-void
.end method

.method public static isPopupShowing()Z
    .locals 4

    .prologue
    .line 254
    sget-object v1, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 256
    sget-object v1, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 258
    .local v0, isShowing:Z
    const-string v1, "LGBluetoothTutorialPopup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPopupShowing(), mPopupWindow.isShowing() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .end local v0           #isShowing:Z
    :goto_0
    return v0

    .line 262
    :cond_0
    const-string v1, "LGBluetoothTutorialPopup"

    const-string v2, "isPopupShowing(), mPopupWindow is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showTutorialPopup(Landroid/content/Context;I)V
    .locals 7
    .parameter "context"
    .parameter "mPopupType"

    .prologue
    const/4 v5, 0x0

    .line 150
    const-string v2, "LGBluetoothTutorialPopup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showTutorialPopup, mPopupType :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", [1:Turn on / 2:Select device / 3:Confirm to pair / 4:Completed] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sput p1, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupWindowType:I

    .line 155
    sget-object v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    const-string v2, "LGBluetoothTutorialPopup"

    const-string v3, "mPopupWindow is not null and showing. so, dismiss."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget-object v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 160
    :cond_0
    sput-object p0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mContext:Landroid/content/Context;

    .line 163
    new-instance v1, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;

    invoke-direct {v1, p0, p1}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;-><init>(Landroid/content/Context;I)V

    .line 165
    .local v1, tutorialPopup:Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;
    if-nez v1, :cond_1

    .line 166
    const-string v2, "LGBluetoothTutorialPopup"

    const-string v3, "tutorialPopup is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_0
    return-void

    .line 172
    :cond_1
    sget-object v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 173
    sget-object v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 174
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    .line 175
    sget-object v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v3, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup$2;

    invoke-direct {v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup$2;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 209
    sget-object v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupView:Landroid/view/View;

    new-instance v3, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup$3;

    invoke-direct {v3}, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup$3;-><init>()V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 224
    :cond_2
    :try_start_0
    sget-object v2, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    sget-object v3, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupView:Landroid/view/View;

    sget v4, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->gravity:I

    const/4 v5, 0x0

    sget v6, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->y:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateLayout(I)V
    .locals 3
    .parameter "screenMode"

    .prologue
    const/4 v2, -0x1

    .line 235
    const-string v0, "LGBluetoothTutorialPopup"

    const-string v1, "updateLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    :cond_0
    const-string v0, "LGBluetoothTutorialPopup"

    const-string v1, "updateLayout(), mPopupWindow is null OR mPopupWindow.isShowing() is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_0
    return-void

    .line 243
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 244
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    sget v1, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->widthInLandscape:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/PopupWindow;->update(II)V

    goto :goto_0

    .line 247
    :cond_2
    sget-object v0, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    sget v1, Lcom/android/lgesettings/bluetooth/LGBluetoothTutorialUtils;->widthInPortrait:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/PopupWindow;->update(II)V

    goto :goto_0
.end method
