.class public Lcom/android/lgesettings/EasyToUse;
.super Landroid/app/Activity;
.source "EasyToUse.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static checkEnable:Landroid/view/View;


# instance fields
.field private applyBtn:Landroid/widget/Button;

.field private easyBtn:Landroid/widget/RadioButton;

.field private normalBtn:Landroid/widget/RadioButton;

.field private previewBtn:Landroid/widget/Button;

.field private standardImg:Landroid/widget/ImageView;

.field private staterImg:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public btnCheck(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 156
    :goto_0
    :pswitch_0
    return-void

    .line 146
    :pswitch_1
    iget-object v0, p0, Lcom/android/lgesettings/EasyToUse;->easyBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/lgesettings/EasyToUse;->normalBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 150
    :pswitch_2
    iget-object v0, p0, Lcom/android/lgesettings/EasyToUse;->easyBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 151
    iget-object v0, p0, Lcom/android/lgesettings/EasyToUse;->normalBtn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x7f0a00f0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 128
    :goto_0
    return-void

    .line 107
    :pswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/EasyToUse;->easyBtn:Landroid/widget/RadioButton;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/EasyToUse;->btnCheck(Landroid/view/View;)V

    goto :goto_0

    .line 110
    :pswitch_1
    iget-object v0, p0, Lcom/android/lgesettings/EasyToUse;->normalBtn:Landroid/widget/RadioButton;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/EasyToUse;->btnCheck(Landroid/view/View;)V

    goto :goto_0

    .line 113
    :pswitch_2
    iget-object v0, p0, Lcom/android/lgesettings/EasyToUse;->easyBtn:Landroid/widget/RadioButton;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/EasyToUse;->btnCheck(Landroid/view/View;)V

    goto :goto_0

    .line 116
    :pswitch_3
    iget-object v0, p0, Lcom/android/lgesettings/EasyToUse;->normalBtn:Landroid/widget/RadioButton;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/EasyToUse;->btnCheck(Landroid/view/View;)V

    goto :goto_0

    .line 119
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/lgesettings/EasyToUse;->previewOpen()V

    goto :goto_0

    .line 122
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/lgesettings/EasyToUse;->showDialog()V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x7f0a00ef
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v1, 0x7f04006f

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/EasyToUse;->setContentView(I)V

    .line 52
    const v1, 0x7f0a00f0

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/EasyToUse;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/lgesettings/EasyToUse;->easyBtn:Landroid/widget/RadioButton;

    .line 53
    iget-object v1, p0, Lcom/android/lgesettings/EasyToUse;->easyBtn:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v1, 0x7f0a00f2

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/EasyToUse;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/lgesettings/EasyToUse;->normalBtn:Landroid/widget/RadioButton;

    .line 56
    iget-object v1, p0, Lcom/android/lgesettings/EasyToUse;->normalBtn:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v1, 0x7f0a00f3

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/EasyToUse;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/lgesettings/EasyToUse;->previewBtn:Landroid/widget/Button;

    .line 59
    iget-object v1, p0, Lcom/android/lgesettings/EasyToUse;->previewBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v1, 0x7f0a00f4

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/EasyToUse;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/lgesettings/EasyToUse;->applyBtn:Landroid/widget/Button;

    .line 62
    iget-object v1, p0, Lcom/android/lgesettings/EasyToUse;->applyBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v1, 0x7f0a00ef

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/EasyToUse;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/lgesettings/EasyToUse;->staterImg:Landroid/widget/ImageView;

    .line 65
    iget-object v1, p0, Lcom/android/lgesettings/EasyToUse;->staterImg:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v1, 0x7f0a00f1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/EasyToUse;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/lgesettings/EasyToUse;->standardImg:Landroid/widget/ImageView;

    .line 68
    iget-object v1, p0, Lcom/android/lgesettings/EasyToUse;->standardImg:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    if-eqz p1, :cond_1

    .line 71
    const-string v1, "mode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 72
    .local v0, checkMode:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/lgesettings/EasyToUse;->easyBtn:Landroid/widget/RadioButton;

    sput-object v1, Lcom/android/lgesettings/EasyToUse;->checkEnable:Landroid/view/View;

    .line 77
    :goto_0
    sget-object v1, Lcom/android/lgesettings/EasyToUse;->checkEnable:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/EasyToUse;->btnCheck(Landroid/view/View;)V

    .line 82
    .end local v0           #checkMode:I
    :goto_1
    return-void

    .line 75
    .restart local v0       #checkMode:I
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/EasyToUse;->normalBtn:Landroid/widget/RadioButton;

    sput-object v1, Lcom/android/lgesettings/EasyToUse;->checkEnable:Landroid/view/View;

    goto :goto_0

    .line 79
    .end local v0           #checkMode:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/EasyToUse;->updateBtn()V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    .line 198
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    const v10, 0x102002c

    if-ne v8, v10, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/android/lgesettings/EasyToUse;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "settings_style"

    invoke-static {v8, v10, v11}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 200
    .local v3, settingStyle:I
    if-ne v3, v9, :cond_1

    invoke-static {p0}, Lcom/android/lgesettings/Utils;->supportEasySettings(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 201
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Lcom/android/lgesettings/EasyToUse;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 202
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 203
    .local v2, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_1

    .line 204
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 205
    .local v6, topActivity:Landroid/content/ComponentName;
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 206
    .local v7, topActivityClassName:Ljava/lang/String;
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, baseActivityClassName:Ljava/lang/String;
    const-string v8, "kimyow"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "top="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  base="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v8, "com.lge.settings.easy.EasySettings"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/android/lgesettings/EasyToUse;->onBackPressed()V

    move v8, v9

    .line 224
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #baseActivityClassName:Ljava/lang/String;
    .end local v2           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3           #settingStyle:I
    .end local v6           #topActivity:Landroid/content/ComponentName;
    .end local v7           #topActivityClassName:Ljava/lang/String;
    :goto_0
    return v8

    .line 212
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v1       #baseActivityClassName:Ljava/lang/String;
    .restart local v2       #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v3       #settingStyle:I
    .restart local v6       #topActivity:Landroid/content/ComponentName;
    .restart local v7       #topActivityClassName:Ljava/lang/String;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.settings.SETTINGS"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v4, settings:Landroid/content/Intent;
    const/high16 v8, 0x1020

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 214
    invoke-static {v7}, Lcom/android/lgesettings/Utils;->getEasyTabIndex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, tabIndex:Ljava/lang/String;
    const-string v8, "kimyow"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tabIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v8, "android.intent.extra.TEXT"

    invoke-virtual {v4, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0, v4}, Lcom/android/lgesettings/EasyToUse;->startActivity(Landroid/content/Intent;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/lgesettings/EasyToUse;->finish()V

    move v8, v9

    .line 219
    goto :goto_0

    .line 224
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #baseActivityClassName:Ljava/lang/String;
    .end local v2           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3           #settingStyle:I
    .end local v4           #settings:Landroid/content/Intent;
    .end local v5           #tabIndex:Ljava/lang/String;
    .end local v6           #topActivity:Landroid/content/ComponentName;
    .end local v7           #topActivityClassName:Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v8

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 88
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 94
    sget-object v0, Lcom/android/lgesettings/EasyToUse;->checkEnable:Landroid/view/View;

    iget-object v1, p0, Lcom/android/lgesettings/EasyToUse;->easyBtn:Landroid/widget/RadioButton;

    if-ne v0, v1, :cond_0

    .line 95
    const-string v0, "mode"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    const-string v0, "mode"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public openHome()V
    .locals 3

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/lgesettings/EasyToUse;->finish()V

    .line 185
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 186
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/EasyToUse;->startActivity(Landroid/content/Intent;)V

    .line 191
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/EasyToUse;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 192
    .local v0, am:Landroid/app/ActivityManager;
    const-string v2, "com.lge.settings.easy"

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public previewOpen()V
    .locals 3

    .prologue
    .line 171
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/lgesettings/EasyToUseSelectDescript;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    iget-object v1, p0, Lcom/android/lgesettings/EasyToUse;->easyBtn:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const-string v1, "mode_key"

    const-string v2, "starter"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/EasyToUse;->startActivity(Landroid/content/Intent;)V

    .line 180
    :goto_0
    return-void

    .line 177
    :cond_0
    const-string v1, "mode_key"

    const-string v2, "standard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/EasyToUse;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public showDialog()V
    .locals 5

    .prologue
    .line 239
    const/4 v1, 0x0

    .line 241
    .local v1, msg:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/lgesettings/EasyToUse;->easyBtn:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/android/lgesettings/EasyToUse;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080d7a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 247
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080d59

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08059d

    new-instance v4, Lcom/android/lgesettings/EasyToUse$1;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/EasyToUse$1;-><init>(Lcom/android/lgesettings/EasyToUse;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080d60

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 260
    .local v0, AttentionDialog:Landroid/app/Dialog;
    return-void

    .line 244
    .end local v0           #AttentionDialog:Landroid/app/Dialog;
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/EasyToUse;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080d7b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public updateBtn()V
    .locals 4

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/lgesettings/EasyToUse;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ui_type_settings"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 134
    .local v0, checkDB:I
    if-nez v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/lgesettings/EasyToUse;->normalBtn:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/EasyToUse;->btnCheck(Landroid/view/View;)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/android/lgesettings/EasyToUse;->easyBtn:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/EasyToUse;->btnCheck(Landroid/view/View;)V

    goto :goto_0
.end method

.method public updateEasyUiDB()V
    .locals 3

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, updateDB:I
    iget-object v1, p0, Lcom/android/lgesettings/EasyToUse;->easyBtn:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    const/4 v0, 0x1

    .line 166
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/EasyToUse;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ui_type_settings"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    invoke-virtual {p0}, Lcom/android/lgesettings/EasyToUse;->openHome()V

    .line 168
    return-void

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/android/lgesettings/EasyToUse;->normalBtn:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const/4 v0, 0x0

    goto :goto_0
.end method
