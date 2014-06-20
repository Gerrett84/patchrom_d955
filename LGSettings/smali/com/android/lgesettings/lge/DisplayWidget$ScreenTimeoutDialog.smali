.class public Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;
.super Landroid/app/DialogFragment;
.source "DisplayWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lge/DisplayWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenTimeoutDialog"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mCurrentTimeout:J

.field private mSubTitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private revisedEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private revisedValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->revisedValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createTimeoutList(Landroid/app/AlertDialog$Builder;)V
    .locals 14
    .parameter "builder"

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "device_policy"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 290
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_1

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    .line 292
    .local v3, maxTimeout:J
    :goto_0
    iget-object v10, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "screen_off_timeout"

    const-wide/16 v12, 0x7530

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->mCurrentTimeout:J

    .line 296
    const-string v10, "ScreenTimeoutDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mCurrentTimeout="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->mCurrentTimeout:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-nez v10, :cond_0

    .line 302
    :try_start_0
    const-string v10, "power"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v5

    .line 304
    .local v5, power:Landroid/os/IPowerManager;
    if-eqz v5, :cond_0

    .line 305
    const v10, 0x7fffffff

    invoke-interface {v5, v10}, Landroid/os/IPowerManager;->setMaximumScreenOffTimeoutFromDeviceAdmin(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .end local v5           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090008

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 312
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09000d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v9

    .line 313
    .local v9, values:[Ljava/lang/CharSequence;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->revisedEntries:Ljava/util/ArrayList;

    .line 314
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->revisedValues:Ljava/util/ArrayList;

    .line 316
    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-nez v10, :cond_4

    .line 317
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v10, v9

    if-ge v2, v10, :cond_2

    .line 318
    iget-object v10, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->revisedEntries:Ljava/util/ArrayList;

    aget-object v11, v1, v2

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v10, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->revisedValues:Ljava/util/ArrayList;

    aget-object v11, v9, v2

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    const-string v10, "ScreenTimeoutDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "entries["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v1, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v10, "ScreenTimeoutDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "values["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v9, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 290
    .end local v1           #entries:[Ljava/lang/CharSequence;
    .end local v2           #i:I
    .end local v3           #maxTimeout:J
    .end local v9           #values:[Ljava/lang/CharSequence;
    :cond_1
    const-wide/16 v3, 0x0

    goto/16 :goto_0

    .line 324
    .restart local v1       #entries:[Ljava/lang/CharSequence;
    .restart local v2       #i:I
    .restart local v3       #maxTimeout:J
    .restart local v9       #values:[Ljava/lang/CharSequence;
    :cond_2
    iget-object v10, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->revisedValues:Ljava/util/ArrayList;

    iget-wide v11, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->mCurrentTimeout:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    iput v10, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->mCurrentIndex:I

    .line 343
    :goto_3
    iget v10, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->mCurrentIndex:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_3

    .line 344
    iget-object v10, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "screen_off_timeout"

    const/16 v12, 0x7530

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 347
    iget-object v10, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->revisedValues:Ljava/util/ArrayList;

    const/16 v11, 0x7530

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    iput v10, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->mCurrentIndex:I

    .line 349
    iget v10, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->mCurrentIndex:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_3

    .line 350
    const-string v10, "ScreenTimeoutDialog"

    const-string v11, "Error index of timeout list"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_3
    const-string v10, "ScreenTimeoutDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mCurrentIndex="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->mCurrentIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v10, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->revisedEntries:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v6, v10, [Ljava/lang/CharSequence;

    .line 357
    .local v6, tempEntries:[Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->revisedEntries:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 358
    iget v10, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->mCurrentIndex:I

    new-instance v11, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog$1;

    invoke-direct {v11, p0}, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog$1;-><init>(Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;)V

    invoke-virtual {p1, v6, v10, v11}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 373
    return-void

    .line 326
    .end local v2           #i:I
    .end local v6           #tempEntries:[Ljava/lang/CharSequence;
    :cond_4
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    array-length v10, v9

    if-ge v2, v10, :cond_6

    .line 327
    aget-object v10, v9, v2

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 328
    .local v7, timeout:J
    cmp-long v10, v7, v3

    if-gtz v10, :cond_5

    .line 329
    iget-object v10, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->revisedEntries:Ljava/util/ArrayList;

    aget-object v11, v1, v2

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v10, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->revisedValues:Ljava/util/ArrayList;

    aget-object v11, v9, v2

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    const-string v10, "ScreenTimeoutDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "entries["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v1, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string v10, "ScreenTimeoutDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "values["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v9, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 336
    .end local v7           #timeout:J
    :cond_6
    iget-wide v10, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->mCurrentTimeout:J

    cmp-long v10, v10, v3

    if-gtz v10, :cond_7

    .line 337
    iget-object v10, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->revisedValues:Ljava/util/ArrayList;

    iget-wide v11, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->mCurrentTimeout:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    iput v10, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->mCurrentIndex:I

    goto/16 :goto_3

    .line 339
    :cond_7
    iget-object v10, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->revisedValues:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->mCurrentIndex:I

    goto/16 :goto_3

    .line 307
    .end local v1           #entries:[Ljava/lang/CharSequence;
    .end local v2           #i:I
    .end local v9           #values:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v10

    goto/16 :goto_1
.end method

.method public static newInstance(Landroid/app/Activity;)Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;
    .locals 1
    .parameter "activity"

    .prologue
    .line 278
    new-instance v0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;

    invoke-direct {v0}, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 283
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 284
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 285
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->mContext:Landroid/content/Context;

    .line 257
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 258
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 259
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f04006a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 260
    .local v1, dialogView:Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 262
    const v3, 0x7f0a004b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->mTitle:Landroid/widget/TextView;

    .line 263
    iget-object v3, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->mTitle:Landroid/widget/TextView;

    const v4, 0x7f08098f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 265
    const v3, 0x7f0a00ea

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->mSubTitle:Landroid/widget/TextView;

    .line 266
    iget-object v3, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->mSubTitle:Landroid/widget/TextView;

    const v4, 0x7f0809d6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 268
    iget-object v3, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    const-wide/16 v5, 0x7530

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->mCurrentTimeout:J

    .line 272
    invoke-direct {p0, v0}, Lcom/android/lgesettings/lge/DisplayWidget$ScreenTimeoutDialog;->createTimeoutList(Landroid/app/AlertDialog$Builder;)V

    .line 274
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
