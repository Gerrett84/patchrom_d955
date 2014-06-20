.class public Lcom/android/lgesettings/GestureKnockOnAlertActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "GestureKnockOnAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final DB_TABLE_GESTURESETTING:[Ljava/lang/String;

.field private static checkbox:Landroid/widget/CheckBox;


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mNBtnText:Ljava/lang/String;

.field private mPBtnText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private temp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gesture_trun_screen_on_do_not_show"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/lgesettings/GestureKnockOnAlertActivity;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 78
    iput-object v0, p0, Lcom/android/lgesettings/GestureKnockOnAlertActivity;->mTitle:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/android/lgesettings/GestureKnockOnAlertActivity;->mMessage:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/android/lgesettings/GestureKnockOnAlertActivity;->mPBtnText:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/android/lgesettings/GestureKnockOnAlertActivity;->mNBtnText:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/android/lgesettings/GestureKnockOnAlertActivity;->temp:Ljava/lang/String;

    return-void
.end method

.method private getCreateView()Landroid/view/View;
    .locals 6

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/lgesettings/GestureKnockOnAlertActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040085

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 124
    .local v1, mView:Landroid/view/View;
    const v3, 0x7f0a0117

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 125
    .local v0, imageview:Landroid/widget/ImageView;
    const v3, 0x7f020300

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    const v3, 0x7f0a0118

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 128
    .local v2, textview2:Landroid/widget/TextView;
    const v3, 0x7f080925

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 130
    const v3, 0x7f0a00e8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    sput-object v3, Lcom/android/lgesettings/GestureKnockOnAlertActivity;->checkbox:Landroid/widget/CheckBox;

    .line 133
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 134
    sget-object v3, Lcom/android/lgesettings/GestureKnockOnAlertActivity;->checkbox:Landroid/widget/CheckBox;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 137
    :cond_0
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 141
    const/4 v3, -0x1

    if-ne p2, v3, :cond_2

    .line 143
    invoke-virtual {p0}, Lcom/android/lgesettings/GestureKnockOnAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 144
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/lgesettings/GestureKnockOnAlertActivity;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    aget-object v3, v3, v2

    sget-object v4, Lcom/android/lgesettings/GestureKnockOnAlertActivity;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 153
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/GestureKnockOnAlertActivity;->finish()V

    .line 154
    return-void

    .line 147
    :cond_2
    const/4 v2, -0x2

    if-ne p2, v2, :cond_1

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.settings.GestureSettingsActivity"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/GestureKnockOnAlertActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 90
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const-string v5, "RCSeAlertActivity"

    const-string v6, "onCreate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/android/lgesettings/GestureKnockOnAlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 95
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/lgesettings/GestureKnockOnAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 97
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v5, Lcom/android/lgesettings/GestureKnockOnAlertActivity;->DB_TABLE_GESTURESETTING:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 100
    .local v0, checkbox_status:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/lgesettings/GestureKnockOnAlertActivity;->finish()V

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/GestureKnockOnAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020196

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 105
    const v3, 0x7f080926

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/GestureKnockOnAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 106
    invoke-direct {p0}, Lcom/android/lgesettings/GestureKnockOnAlertActivity;->getCreateView()Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 108
    const v3, 0x7f080047

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/GestureKnockOnAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 109
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 110
    const v3, 0x7f080927

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/GestureKnockOnAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 111
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 112
    invoke-virtual {p0}, Lcom/android/lgesettings/GestureKnockOnAlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 114
    invoke-virtual {p0}, Lcom/android/lgesettings/GestureKnockOnAlertActivity;->setupAlert()V

    .line 115
    const-string v3, "RCSeAlertActivity"

    const-string v4, "onCreate++++++++"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void

    .end local v0           #checkbox_status:Ljava/lang/Boolean;
    :cond_1
    move v3, v4

    .line 97
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 158
    const-string v0, "RCSeAlertActivity"

    const-string v1, "onDestroy++++++++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 162
    return-void
.end method
