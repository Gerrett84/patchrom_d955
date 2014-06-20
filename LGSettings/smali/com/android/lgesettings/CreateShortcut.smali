.class public Lcom/android/lgesettings/CreateShortcut;
.super Lcom/android/lgesettings/LauncherActivityEx;
.source "CreateShortcut.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/lgesettings/LauncherActivityEx;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTargetIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 44
    .local v0, targetIntent:Landroid/content/Intent;
    const-string v1, "com.android.lgesettings.SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 47
    return-object v0
.end method

.method public makeListItems()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/LauncherActivityEx$ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const v9, 0x7f080ab4

    const v8, 0x7f0807d8

    const/4 v7, 0x0

    .line 53
    invoke-super {p0}, Lcom/android/lgesettings/LauncherActivityEx;->makeListItems()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 55
    .local v3, li:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/LauncherActivityEx$ListItem;>;"
    const-string v4, "TLS"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;

    .line 57
    .local v2, item:Lcom/android/lgesettings/LauncherActivityEx$ListItem;
    iget-object v4, v2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->className:Ljava/lang/String;

    const-string v5, "com.android.lgesettings.Settings$TetherSettingsActivity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/lgesettings/CreateShortcut;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->label:Ljava/lang/CharSequence;

    goto :goto_0

    .line 63
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/android/lgesettings/LauncherActivityEx$ListItem;
    :cond_1
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/CreateShortcut;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 64
    .local v0, cm:Landroid/net/ConnectivityManager;
    const-string v4, "CreateShortcut"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isTetheringSupported="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v4

    if-nez v4, :cond_6

    .line 66
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;

    .line 67
    .restart local v2       #item:Lcom/android/lgesettings/LauncherActivityEx$ListItem;
    const-string v4, "CreateShortcut"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "className="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->className:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v4, v2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->className:Ljava/lang/String;

    const-string v5, "com.android.lgesettings.Settings$TetherSettingsActivity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 69
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 107
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/android/lgesettings/LauncherActivityEx$ListItem;
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;

    .line 108
    .restart local v2       #item:Lcom/android/lgesettings/LauncherActivityEx$ListItem;
    iget-object v4, v2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->className:Ljava/lang/String;

    const-string v5, "com.android.lgesettings.Settings$DataUsageSummaryActivity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 110
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 111
    invoke-virtual {p0}, Lcom/android/lgesettings/CreateShortcut;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->label:Ljava/lang/CharSequence;

    .line 132
    .end local v2           #item:Lcom/android/lgesettings/LauncherActivityEx$ListItem;
    :cond_5
    :goto_2
    return-object v3

    .line 74
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_6
    const-string v4, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v4

    const-string v5, "US"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "TMO"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    const-string v4, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 80
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;

    .line 81
    .restart local v2       #item:Lcom/android/lgesettings/LauncherActivityEx$ListItem;
    const-string v4, "CreateShortcut"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VZW className="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->className:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v4, v2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->className:Ljava/lang/String;

    const-string v5, "com.android.lgesettings.Settings$TetherSettingsActivity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 83
    const-string v4, "VZW"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 84
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 86
    :cond_a
    const-string v4, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 87
    invoke-virtual {p0}, Lcom/android/lgesettings/CreateShortcut;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->label:Ljava/lang/CharSequence;

    .line 88
    invoke-virtual {p0}, Lcom/android/lgesettings/CreateShortcut;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020338

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 90
    :cond_b
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v4

    const-string v5, "US"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "TMO"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 93
    invoke-virtual {p0}, Lcom/android/lgesettings/CreateShortcut;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0812a8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->label:Ljava/lang/CharSequence;

    .line 94
    invoke-virtual {p0}, Lcom/android/lgesettings/CreateShortcut;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02033c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 96
    :cond_c
    const-string v4, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 97
    invoke-virtual {p0}, Lcom/android/lgesettings/CreateShortcut;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->label:Ljava/lang/CharSequence;

    .line 98
    invoke-virtual {p0}, Lcom/android/lgesettings/CreateShortcut;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020339

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 113
    :cond_d
    const-string v4, "SKT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "KT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 115
    :cond_e
    invoke-virtual {p0}, Lcom/android/lgesettings/CreateShortcut;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080a7c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->label:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 116
    :cond_f
    const-string v4, "LGU"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 117
    invoke-virtual {p0}, Lcom/android/lgesettings/CreateShortcut;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0807f3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->label:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 118
    :cond_10
    const-string v4, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 119
    invoke-virtual {p0}, Lcom/android/lgesettings/CreateShortcut;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080fa3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->label:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 120
    :cond_11
    const-string v4, "ro.lge.mtk_dualsim"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_12

    const-string v4, "ro.lge.mtk_triplesim"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-static {}, Lcom/android/lgesettings/Utils;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 123
    :cond_12
    invoke-virtual {p0}, Lcom/android/lgesettings/CreateShortcut;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->label:Ljava/lang/CharSequence;

    goto/16 :goto_2
.end method

.method protected onEvaluateShowIcons()Z
    .locals 1

    .prologue
    .line 266
    invoke-static {}, Lcom/android/lgesettings/Utils;->supportFunctionIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    const/4 v0, 0x1

    .line 268
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v7, 0x1

    .line 140
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/lgesettings/CreateShortcut;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/lgesettings/CreateShortcut;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v3

    .line 144
    .local v3, shortcutIntent:Landroid/content/Intent;
    const/high16 v4, 0x1420

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 145
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 148
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, p3}, Lcom/android/lgesettings/CreateShortcut;->itemForPosition(I)Lcom/android/lgesettings/LauncherActivityEx$ListItem;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 151
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p0, p3}, Lcom/android/lgesettings/CreateShortcut;->itemForPosition(I)Lcom/android/lgesettings/LauncherActivityEx$ListItem;

    move-result-object v5

    iget-object v5, v5, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 152
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const/high16 v5, 0x7f03

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 156
    invoke-static {}, Lcom/android/lgesettings/Utils;->supportFunctionIcon()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 157
    const-string v0, ""

    .line 158
    .local v0, className:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/lgesettings/CreateShortcut;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "settings_style"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 160
    .local v2, settingStyle:I
    invoke-static {p0}, Lcom/android/lgesettings/Utils;->supportEasySettings(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 161
    const/4 v2, 0x0

    .line 165
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/lgesettings/CreateShortcut;->itemForPosition(I)Lcom/android/lgesettings/LauncherActivityEx$ListItem;

    move-result-object v4

    iget-object v4, v4, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->className:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 166
    invoke-virtual {p0, p3}, Lcom/android/lgesettings/CreateShortcut;->itemForPosition(I)Lcom/android/lgesettings/LauncherActivityEx$ListItem;

    move-result-object v4

    iget-object v0, v4, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->className:Ljava/lang/String;

    .line 171
    :goto_1
    const-string v4, "com.android.lgesettings.Settings$WifiSettingsActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 172
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v5, 0x7f020359

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 254
    .end local v0           #className:Ljava/lang/String;
    .end local v2           #settingStyle:I
    :cond_3
    :goto_2
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 256
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v1}, Lcom/android/lgesettings/CreateShortcut;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #shortcutIntent:Landroid/content/Intent;
    :goto_3
    invoke-virtual {p0}, Lcom/android/lgesettings/CreateShortcut;->finish()V

    goto :goto_0

    .line 168
    .restart local v0       #className:Ljava/lang/String;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #settingStyle:I
    .restart local v3       #shortcutIntent:Landroid/content/Intent;
    :cond_4
    :try_start_1
    const-string v4, "CreateShortcut"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "itemForPosition is null, position="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 257
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #settingStyle:I
    .end local v3           #shortcutIntent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto :goto_3

    .line 174
    .restart local v0       #className:Ljava/lang/String;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #settingStyle:I
    .restart local v3       #shortcutIntent:Landroid/content/Intent;
    :cond_5
    const-string v4, "com.android.lgesettings.Settings$BluetoothSettingsActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 175
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v5, 0x7f02032c

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    .line 177
    :cond_6
    const-string v4, "com.android.lgesettings.Settings$TetherSettingsActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 179
    const-string v4, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 180
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v5, 0x7f020339

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    .line 182
    :cond_7
    const-string v4, "ATT"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 183
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v5, 0x7f020338

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    .line 185
    :cond_8
    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v4

    const-string v5, "US"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "TMO"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 188
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v5, 0x7f02033c

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 192
    :cond_9
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v5, 0x7f020337

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 195
    :cond_a
    const-string v4, "com.android.lgesettings.Settings$VpnSettingsActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 196
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v5, 0x7f020358

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 199
    :cond_b
    const-string v4, "com.android.lgesettings.Settings$VpnSelectorActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 200
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v5, 0x7f020358

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 203
    :cond_c
    const-string v4, "com.android.lgesettings.Settings$SoundSettingsActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 204
    if-ne v2, v7, :cond_d

    .line 205
    const-string v4, "com.lge.settings.easy"

    const-string v5, "com.lge.settings.easy.EasySettings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const-string v4, "android.intent.extra.TEXT"

    const-string v5, "sound"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    :cond_d
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v5, 0x7f020353

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 210
    :cond_e
    const-string v4, "com.android.lgesettings.Settings$DisplaySettingsActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 211
    if-ne v2, v7, :cond_f

    .line 212
    const-string v4, "com.lge.settings.easy"

    const-string v5, "com.lge.settings.easy.EasySettings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v4, "android.intent.extra.TEXT"

    const-string v5, "display"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    :cond_f
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v5, 0x7f020331

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 217
    :cond_10
    const-string v4, "com.android.lgesettings.Settings$ManageApplicationsActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 218
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v5, 0x7f020327

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 220
    :cond_11
    const-string v4, "com.android.lgesettings.Settings$LocationSettingsActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 221
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v5, 0x7f02033f

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 223
    :cond_12
    const-string v4, "com.android.lgesettings.Settings$AccessibilitySettingsActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 224
    const-string v4, "com.android.lgesettingsaccessibility"

    invoke-static {p0, v4}, Lcom/android/lgesettings/Utils;->checkPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 225
    const-string v4, "com.android.lgesettingsaccessibility"

    const-string v5, "com.android.lgesettingsaccessibility.SettingsAccessibilityActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    :cond_13
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v5, 0x7f020323

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 229
    :cond_14
    const-string v4, "com.android.lgesettings.Settings$DataUsageSummaryActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 230
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v5, 0x7f02032f

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 232
    :cond_15
    const-string v4, "com.android.lgesettings.Settings$PowerSaveBatteryDetailActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 233
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v5, 0x7f02032b

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 235
    :cond_16
    const-string v4, "com.android.lgesettings.Settings$ConnectivitySettingsActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 236
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v5, 0x7f02032d

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 238
    :cond_17
    const-string v4, "com.android.lgesettings.Settings$LockSettingsActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 239
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v5, 0x7f020340

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 241
    :cond_18
    const-string v4, "com.android.lgesettings.Settings$PowerSaveSettingsActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 242
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v5, 0x7f02034b

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 244
    :cond_19
    const-string v4, "com.android.lgesettings.Settings$StorageSettingsActivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 245
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v5, 0x7f020354

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 247
    :cond_1a
    const-string v4, "com.lge.wireless_storage.NetworkStorageSettings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 248
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v5, 0x7f020332

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
