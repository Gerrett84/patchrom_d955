.class public Lcom/android/lgesettings/AppWidgetPickActivity;
.super Lcom/android/lgesettings/ActivityPicker;
.source "AppWidgetPickActivity.java"

# interfaces
.implements Lcom/android/lgesettings/AppWidgetLoader$ItemConstructor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/lgesettings/ActivityPicker;",
        "Lcom/android/lgesettings/AppWidgetLoader$ItemConstructor",
        "<",
        "Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppWidgetId:I

.field private mAppWidgetLoader:Lcom/android/lgesettings/AppWidgetLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/lgesettings/AppWidgetLoader",
            "<",
            "Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/lgesettings/ActivityPicker;-><init>()V

    return-void
.end method


# virtual methods
.method public createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;
    .locals 12
    .parameter "context"
    .parameter "info"
    .parameter "extras"

    .prologue
    .line 108
    iget-object v5, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 109
    .local v5, label:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 111
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    iget v8, p2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    if-eqz v8, :cond_0

    .line 113
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 114
    .local v7, res:Landroid/content/res/Resources;
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v0, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 116
    .local v0, density:I
    sparse-switch v0, :sswitch_data_0

    .line 130
    :goto_0
    int-to-float v8, v0

    const/high16 v9, 0x3f40

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f00

    add-float/2addr v8, v9

    float-to-int v3, v8

    .line 132
    .local v3, iconDensity:I
    iget-object v8, p0, Lcom/android/lgesettings/AppWidgetPickActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v9, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 135
    .local v6, packageResources:Landroid/content/res/Resources;
    iget-boolean v8, p0, Lcom/android/lgesettings/ActivityPicker;->mWantNoThemeIcon:Z

    if-eqz v8, :cond_1

    .line 136
    iget-object v8, p0, Lcom/android/lgesettings/AppWidgetPickActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v9, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    iget v11, p2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-static {v8, v9, v10, v11}, Lcom/android/lgesettings/AppWidgetPickActivity;->loadNoThemeIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 144
    .end local v0           #density:I
    .end local v3           #iconDensity:I
    .end local v6           #packageResources:Landroid/content/res/Resources;
    .end local v7           #res:Landroid/content/res/Resources;
    :goto_1
    if-nez v2, :cond_0

    .line 145
    const-string v8, "AppWidgetPickActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t load icon drawable 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for provider: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    new-instance v4, Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;

    invoke-direct {v4, p1, v5, v2}, Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 151
    .local v4, item:Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;
    iget-object v8, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;->packageName:Ljava/lang/String;

    .line 152
    iget-object v8, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;->className:Ljava/lang/String;

    .line 153
    iput-object p3, v4, Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;->extras:Landroid/os/Bundle;

    .line 154
    return-object v4

    .line 118
    .end local v4           #item:Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;
    .restart local v0       #density:I
    .restart local v7       #res:Landroid/content/res/Resources;
    :sswitch_0
    const/16 v3, 0x78

    .line 120
    :sswitch_1
    const/16 v3, 0xa0

    .line 122
    :sswitch_2
    const/16 v3, 0xa0

    .line 124
    :sswitch_3
    const/16 v3, 0xf0

    .line 126
    :sswitch_4
    const/16 v3, 0x140

    .restart local v3       #iconDensity:I
    goto :goto_0

    .line 138
    .restart local v6       #packageResources:Landroid/content/res/Resources;
    :cond_1
    :try_start_1
    iget v8, p2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-virtual {v6, v8, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1

    .line 140
    .end local v0           #density:I
    .end local v3           #iconDensity:I
    .end local v6           #packageResources:Landroid/content/res/Resources;
    .end local v7           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 141
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "AppWidgetPickActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t load icon drawable 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for provider: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 116
    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_0
        0xd5 -> :sswitch_1
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
        0x1e0 -> :sswitch_4
    .end sparse-switch
.end method

.method public bridge synthetic createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/lgesettings/AppWidgetPickActivity;->createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;

    move-result-object v0

    return-object v0
.end method

.method protected getItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v3, p0, Lcom/android/lgesettings/AppWidgetPickActivity;->mAppWidgetLoader:Lcom/android/lgesettings/AppWidgetLoader;

    invoke-virtual {p0}, Lcom/android/lgesettings/AppWidgetPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/lgesettings/AppWidgetLoader;->getItems(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    .line 93
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/lgesettings/AppWidgetPickActivity;->mItems:Ljava/util/List;

    .line 95
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;

    .line 97
    .local v1, item:Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;
    iget-object v3, v1, Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;->packageName:Ljava/lang/String;

    const-string v4, "com.lge"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.calendar"

    iget-object v4, v1, Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    iget-object v3, p0, Lcom/android/lgesettings/AppWidgetPickActivity;->mItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    .end local v1           #item:Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;
    :cond_1
    iget-object v3, p0, Lcom/android/lgesettings/AppWidgetPickActivity;->mItems:Ljava/util/List;

    return-object v3
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 162
    invoke-virtual {p0, p2}, Lcom/android/lgesettings/AppWidgetPickActivity;->getIntentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    .line 163
    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/lgesettings/AppWidgetPickActivity;->mItems:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;

    .line 166
    .local v2, item:Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;
    iget-object v5, v2, Lcom/android/lgesettings/ActivityPicker$PickAdapter$Item;->extras:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    .line 169
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v1}, Lcom/android/lgesettings/AppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    .line 190
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/AppWidgetPickActivity;->finish()V

    .line 191
    return-void

    .line 172
    :cond_0
    const/4 v3, 0x0

    .line 173
    .local v3, options:Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 174
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "appWidgetOptions"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 177
    :cond_1
    iget-object v5, p0, Lcom/android/lgesettings/AppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v6, p0, Lcom/android/lgesettings/AppWidgetPickActivity;->mAppWidgetId:I

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    const/4 v4, -0x1

    .line 187
    .local v4, result:I
    :goto_1
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/lgesettings/AppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    goto :goto_0

    .line 179
    .end local v4           #result:I
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x0

    .restart local v4       #result:I
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/android/lgesettings/AppWidgetPickActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/AppWidgetPickActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 66
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/lgesettings/AppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 67
    new-instance v1, Lcom/android/lgesettings/AppWidgetLoader;

    iget-object v2, p0, Lcom/android/lgesettings/AppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-direct {v1, p0, v2, p0}, Lcom/android/lgesettings/AppWidgetLoader;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lcom/android/lgesettings/AppWidgetLoader$ItemConstructor;)V

    iput-object v1, p0, Lcom/android/lgesettings/AppWidgetPickActivity;->mAppWidgetLoader:Lcom/android/lgesettings/AppWidgetLoader;

    .line 70
    invoke-super {p0, p1}, Lcom/android/lgesettings/ActivityPicker;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Lcom/android/lgesettings/AppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/lgesettings/AppWidgetPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 77
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/lgesettings/AppWidgetPickActivity;->mAppWidgetId:I

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/AppWidgetPickActivity;->finish()V

    goto :goto_0
.end method

.method setResultData(ILandroid/content/Intent;)V
    .locals 3
    .parameter "code"
    .parameter "intent"

    .prologue
    .line 200
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 201
    .local v0, result:Landroid/content/Intent;
    :goto_0
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/android/lgesettings/AppWidgetPickActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0, p1, v0}, Lcom/android/lgesettings/AppWidgetPickActivity;->setResult(ILandroid/content/Intent;)V

    .line 203
    return-void

    .line 200
    .end local v0           #result:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    goto :goto_0
.end method
