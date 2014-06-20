.class public Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;
.super Landroid/app/DialogFragment;
.source "DisplayWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lge/DisplayWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontSizeDialog"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mCurrentIndex:I

.field private mEntriesResourceID:I

.field private mValuesResourceID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 99
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->mCurConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->mValuesResourceID:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->applyFontSize(Ljava/lang/Object;)V

    return-void
.end method

.method private applyFontSize(Ljava/lang/Object;)V
    .locals 7
    .parameter "objValue"

    .prologue
    .line 197
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 198
    .local v0, conf:Landroid/content/res/Configuration;
    if-eqz v0, :cond_0

    .line 199
    const-string v2, "FontSizeDialog"

    const-string v3, "orientation config  old:%d new:%d "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->mCurConfig:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v2, p0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->mCurConfig:Landroid/content/res/Configuration;

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    iput v3, v2, Landroid/content/res/Configuration;->orientation:I

    .line 203
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 204
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v0           #conf:Landroid/content/res/Configuration;
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "FontSizeDialog"

    const-string v3, "Unable to save font size"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private floatToIndex(F)I
    .locals 7
    .parameter "val"

    .prologue
    .line 212
    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v6, "vee3e"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v6, "vee3ds"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v6, "l1v"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 214
    const v0, 0x7f090027

    .line 225
    .local v0, ValuesResourceID:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 227
    .local v4, values:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 228
    .local v2, lastVal:F
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 229
    aget-object v5, v4, v1

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 230
    .local v3, thisVal:F
    sub-float v5, v3, v2

    const/high16 v6, 0x3f00

    mul-float/2addr v5, v6

    add-float/2addr v5, v2

    cmpg-float v5, p1, v5

    if-gez v5, :cond_2

    .line 231
    add-int/lit8 v5, v1, -0x1

    .line 235
    .end local v3           #thisVal:F
    :goto_2
    return v5

    .line 218
    .end local v0           #ValuesResourceID:I
    .end local v1           #i:I
    .end local v2           #lastVal:F
    .end local v4           #values:[Ljava/lang/String;
    :cond_0
    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v6, "l1v"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 219
    const v0, 0x7f090028

    .line 220
    .restart local v0       #ValuesResourceID:I
    const-string v5, "FontSizeDialog"

    const-string v6, "L1V font size"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    .end local v0           #ValuesResourceID:I
    :cond_1
    const v0, 0x7f090025

    .line 223
    .restart local v0       #ValuesResourceID:I
    const-string v5, "FontSizeDialog"

    const-string v6, "normal font size"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 233
    .restart local v1       #i:I
    .restart local v2       #lastVal:F
    .restart local v3       #thisVal:F
    .restart local v4       #values:[Ljava/lang/String;
    :cond_2
    move v2, v3

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 235
    .end local v3           #thisVal:F
    :cond_3
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    goto :goto_2
.end method

.method private getCurrentIndex()I
    .locals 6

    .prologue
    .line 177
    :try_start_0
    iget-object v3, p0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    iget-object v3, p0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->mCurConfig:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    invoke-direct {p0, v3}, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->floatToIndex(F)I

    move-result v2

    .line 184
    .local v2, index:I
    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "vee3e"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "vee3ds"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, "l1v"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sync_large_text"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 187
    .local v0, bIsMaximumFont:I
    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 188
    const/4 v2, 0x5

    .line 192
    .end local v0           #bIsMaximumFont:I
    :cond_0
    return v2

    .line 178
    .end local v2           #index:I
    :catch_0
    move-exception v1

    .line 179
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "FontSizeDialog"

    const-string v4, "Unable to retrieve font size"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static newInstance(Landroid/app/Activity;)Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;
    .locals 1
    .parameter "activity"

    .prologue
    .line 166
    new-instance v0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;

    invoke-direct {v0}, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 173
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x7f090024

    .line 107
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->mContext:Landroid/content/Context;

    .line 109
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0803ae

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 113
    invoke-static {}, Lcom/android/lgesettings/Utils;->isUpgradeModel()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "vee3e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "vee3ds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "l1v"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    const v1, 0x7f090026

    iput v1, p0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->mEntriesResourceID:I

    .line 117
    const v1, 0x7f090027

    iput v1, p0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->mValuesResourceID:I

    .line 118
    const-string v1, "FontSizeDialog"

    const-string v2, "font size change"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    invoke-direct {p0}, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->getCurrentIndex()I

    move-result v1

    iput v1, p0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->mCurrentIndex:I

    .line 131
    iget v1, p0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->mEntriesResourceID:I

    iget v2, p0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->mCurrentIndex:I

    new-instance v3, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog$1;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog$1;-><init>(Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 155
    const/high16 v1, 0x104

    new-instance v2, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog$2;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog$2;-><init>(Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 162
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 121
    :cond_0
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "l1v"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    iput v3, p0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->mEntriesResourceID:I

    .line 123
    const v1, 0x7f090028

    iput v1, p0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->mValuesResourceID:I

    goto :goto_0

    .line 126
    :cond_1
    iput v3, p0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->mEntriesResourceID:I

    .line 127
    const v1, 0x7f090025

    iput v1, p0, Lcom/android/lgesettings/lge/DisplayWidget$FontSizeDialog;->mValuesResourceID:I

    goto :goto_0
.end method
