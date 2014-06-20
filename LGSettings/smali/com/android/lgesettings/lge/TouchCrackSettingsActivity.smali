.class public Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;
.super Landroid/app/Activity;
.source "TouchCrackSettingsActivity.java"


# instance fields
.field private final MAX_INDEX:I

.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mMessage:Ljava/lang/String;

.field private mSelectedMenuIndex:I

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->mToast:Landroid/widget/Toast;

    .line 28
    iput-object v0, p0, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->mMessage:Ljava/lang/String;

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->MAX_INDEX:I

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->itemList:Ljava/util/ArrayList;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->mSelectedMenuIndex:I

    return-void
.end method


# virtual methods
.method public confirmMenuAndSendIntent(I)V
    .locals 3
    .parameter "menuIndex"

    .prologue
    .line 159
    const/4 v1, 0x0

    .line 161
    .local v1, value:I
    packed-switch p1, :pswitch_data_0

    .line 173
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 174
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.lge.android.intent.action.TOUCHCRACK_MODE_EVENT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v2, "TOUCHCRACK_MODE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 177
    return-void

    .line 163
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_0
    const/4 v1, 0x1

    .line 164
    goto :goto_0

    .line 166
    :pswitch_1
    const/4 v1, 0x2

    .line 167
    goto :goto_0

    .line 169
    :pswitch_2
    const/4 v1, 0x0

    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public enablePowerKeyHooking()Z
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 81
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 82
    .local v0, layoutParams:Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->extend:I

    or-int/lit16 v2, v2, 0x800

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->extend:I

    .line 83
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 85
    const/4 v2, 0x1

    return v2
.end method

.method public moveDownMenu()V
    .locals 2

    .prologue
    .line 112
    iget v0, p0, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->mSelectedMenuIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->mSelectedMenuIndex:I

    .line 113
    iget v0, p0, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->mSelectedMenuIndex:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->mSelectedMenuIndex:I

    .line 117
    :cond_0
    iget v0, p0, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->mSelectedMenuIndex:I

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->setItemSelected(I)V

    .line 118
    return-void
.end method

.method public moveUpMenu()V
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->mSelectedMenuIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->mSelectedMenuIndex:I

    .line 104
    iget v0, p0, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->mSelectedMenuIndex:I

    if-gez v0, :cond_0

    .line 105
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->mSelectedMenuIndex:I

    .line 108
    :cond_0
    iget v0, p0, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->mSelectedMenuIndex:I

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->setItemSelected(I)V

    .line 109
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->setRequestedOrientation(I)V

    .line 43
    const v0, 0x7f040005

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->setContentView(I)V

    .line 49
    iget-object v1, p0, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->itemList:Ljava/util/ArrayList;

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v1, p0, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->itemList:Ljava/util/ArrayList;

    const v0, 0x7f0a0012

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v1, p0, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->itemList:Ljava/util/ArrayList;

    const v0, 0x7f0a0013

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->enablePowerKeyHooking()Z

    .line 58
    iget v0, p0, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->mSelectedMenuIndex:I

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->setItemSelected(I)V

    .line 59
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 63
    const/16 v1, 0x1a

    if-ne p1, v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->selectMenu()V

    .line 75
    :goto_0
    return v0

    .line 67
    :cond_0
    const/16 v1, 0x18

    if-ne p1, v1, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->moveUpMenu()V

    goto :goto_0

    .line 70
    :cond_1
    const/16 v1, 0x19

    if-ne p1, v1, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->moveDownMenu()V

    goto :goto_0

    .line 75
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public selectMenu()V
    .locals 2

    .prologue
    .line 122
    iget v0, p0, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->mSelectedMenuIndex:I

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->confirmMenuAndSendIntent(I)V

    .line 125
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->finish()V

    .line 135
    return-void

    .line 126
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setItemSelected(I)V
    .locals 7
    .parameter "index"

    .prologue
    const/16 v4, 0xff

    .line 89
    if-ltz p1, :cond_0

    const/4 v3, 0x2

    if-le p1, v3, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 94
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 95
    iget-object v3, p0, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 96
    .local v1, item:Landroid/widget/FrameLayout;
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    .end local v1           #item:Landroid/widget/FrameLayout;
    :cond_2
    iget-object v3, p0, Lcom/android/lgesettings/lge/TouchCrackSettingsActivity;->itemList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const/16 v4, 0xc3

    const/16 v5, 0xd2

    const/16 v6, 0xd7

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method
