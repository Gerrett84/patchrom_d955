.class public Lcom/android/lgesettings/AppWidgetLoader;
.super Ljava/lang/Object;
.source "AppWidgetLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/AppWidgetLoader$ItemConstructor;,
        Lcom/android/lgesettings/AppWidgetLoader$LabelledItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/android/lgesettings/AppWidgetLoader$LabelledItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mContext:Landroid/content/Context;

.field mItemConstructor:Lcom/android/lgesettings/AppWidgetLoader$ItemConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/lgesettings/AppWidgetLoader$ItemConstructor",
            "<TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lcom/android/lgesettings/AppWidgetLoader$ItemConstructor;)V
    .locals 0
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/appwidget/AppWidgetManager;",
            "Lcom/android/lgesettings/AppWidgetLoader$ItemConstructor",
            "<TItem;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, this:Lcom/android/lgesettings/AppWidgetLoader;,"Lcom/android/lgesettings/AppWidgetLoader<TItem;>;"
    .local p3, itemConstructor:Lcom/android/lgesettings/AppWidgetLoader$ItemConstructor;,"Lcom/android/lgesettings/AppWidgetLoader$ItemConstructor<TItem;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/lgesettings/AppWidgetLoader;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/lgesettings/AppWidgetLoader;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 50
    iput-object p3, p0, Lcom/android/lgesettings/AppWidgetLoader;->mItemConstructor:Lcom/android/lgesettings/AppWidgetLoader$ItemConstructor;

    .line 51
    return-void
.end method

.method private isAllowed(Landroid/appwidget/AppWidgetProviderInfo;)Z
    .locals 2
    .parameter "info"

    .prologue
    .line 139
    .local p0, this:Lcom/android/lgesettings/AppWidgetLoader;,"Lcom/android/lgesettings/AppWidgetLoader<TItem;>;"
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lge.sizechangable.musicwidget.widget"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lge.sizechangable.musicwidget.widget.MusicAppWidgetProvider4x2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lge.sizechangable.musicwidget.widget.MusicAppWidgetProviderQuickCover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lge.sizechangable.weather"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.lge.sizechangable.weather.layout.WeatherQuickCover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    :cond_1
    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getItems(Landroid/content/Intent;)Ljava/util/List;
    .locals 6
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/lgesettings/AppWidgetLoader;,"Lcom/android/lgesettings/AppWidgetLoader<TItem;>;"
    const/4 v5, 0x1

    .line 160
    const-string v4, "customSort"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 163
    .local v3, sortCustomAppWidgets:Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v2, items:Ljava/util/List;,"Ljava/util/List<TItem;>;"
    const-string v4, "categoryFilter"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 169
    .local v0, categoryFilter:I
    invoke-virtual {p0, v2, v0}, Lcom/android/lgesettings/AppWidgetLoader;->putInstalledAppWidgets(Ljava/util/List;I)V

    .line 172
    if-eqz v3, :cond_0

    .line 173
    invoke-virtual {p0, v2, p1}, Lcom/android/lgesettings/AppWidgetLoader;->putCustomAppWidgets(Ljava/util/List;Landroid/content/Intent;)V

    .line 175
    :cond_0
    new-instance v4, Lcom/android/lgesettings/AppWidgetLoader$1;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/AppWidgetLoader$1;-><init>(Lcom/android/lgesettings/AppWidgetLoader;)V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 182
    if-nez v3, :cond_1

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v1, customItems:Ljava/util/List;,"Ljava/util/List<TItem;>;"
    invoke-virtual {p0, v1, p1}, Lcom/android/lgesettings/AppWidgetLoader;->putCustomAppWidgets(Ljava/util/List;Landroid/content/Intent;)V

    .line 185
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 187
    .end local v1           #customItems:Ljava/util/List;,"Ljava/util/List<TItem;>;"
    :cond_1
    return-object v2
.end method

.method putAppWidgetItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter "categoryFilter"
    .parameter "ignoreFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/util/List",
            "<TItem;>;IZ)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, this:Lcom/android/lgesettings/AppWidgetLoader;,"Lcom/android/lgesettings/AppWidgetLoader<TItem;>;"
    .local p1, appWidgets:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    .local p2, customExtras:Ljava/util/List;,"Ljava/util/List<Landroid/os/Bundle;>;"
    .local p3, items:Ljava/util/List;,"Ljava/util/List<TItem;>;"
    if-nez p1, :cond_1

    .line 136
    :cond_0
    return-void

    .line 119
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 120
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 121
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 124
    .local v1, info:Landroid/appwidget/AppWidgetProviderInfo;
    if-nez p5, :cond_3

    iget v4, v1, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/2addr v4, p4

    if-nez v4, :cond_3

    .line 120
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/lgesettings/AppWidgetLoader;->isAllowed(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 131
    iget-object v5, p0, Lcom/android/lgesettings/AppWidgetLoader;->mItemConstructor:Lcom/android/lgesettings/AppWidgetLoader$ItemConstructor;

    iget-object v6, p0, Lcom/android/lgesettings/AppWidgetLoader;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_4

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    :goto_2
    invoke-interface {v5, v6, v1, v4}, Lcom/android/lgesettings/AppWidgetLoader$ItemConstructor;->createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/lgesettings/AppWidgetLoader$LabelledItem;

    .line 134
    .local v2, item:Lcom/android/lgesettings/AppWidgetLoader$LabelledItem;,"TItem;"
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 131
    .end local v2           #item:Lcom/android/lgesettings/AppWidgetLoader$LabelledItem;,"TItem;"
    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method putCustomAppWidgets(Ljava/util/List;Landroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lcom/android/lgesettings/AppWidgetLoader;,"Lcom/android/lgesettings/AppWidgetLoader<TItem;>;"
    .local p1, items:Ljava/util/List;,"Ljava/util/List<TItem;>;"
    const/4 v1, 0x0

    .line 60
    .local v1, customInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/4 v2, 0x0

    .line 62
    .local v2, customExtras:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const-string v0, "customInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 64
    :cond_0
    const-string v0, "AppWidgetAdapter"

    const-string v3, "EXTRA_CUSTOM_INFO not present."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_1
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/lgesettings/AppWidgetLoader;->putAppWidgetItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)V

    .line 108
    return-void

    .line 68
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 69
    .local v7, customInfoSize:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v7, :cond_5

    .line 70
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Parcelable;

    .line 71
    .local v9, p:Landroid/os/Parcelable;
    if-eqz v9, :cond_3

    instance-of v0, v9, Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v0, :cond_4

    .line 72
    :cond_3
    const/4 v1, 0x0

    .line 73
    const-string v0, "AppWidgetAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error using EXTRA_CUSTOM_INFO index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 78
    .end local v9           #p:Landroid/os/Parcelable;
    :cond_5
    const-string v0, "customExtras"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 79
    if-nez v2, :cond_6

    .line 80
    const/4 v1, 0x0

    .line 81
    const-string v0, "AppWidgetAdapter"

    const-string v3, "EXTRA_CUSTOM_INFO without EXTRA_CUSTOM_EXTRAS"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 86
    .local v6, customExtrasSize:I
    if-eq v7, v6, :cond_7

    .line 87
    const/4 v1, 0x0

    .line 88
    const/4 v2, 0x0

    .line 89
    const-string v0, "AppWidgetAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list size mismatch: EXTRA_CUSTOM_INFO: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " EXTRA_CUSTOM_EXTRAS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :cond_7
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_1

    .line 96
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Parcelable;

    .line 97
    .restart local v9       #p:Landroid/os/Parcelable;
    if-eqz v9, :cond_8

    instance-of v0, v9, Landroid/os/Bundle;

    if-nez v0, :cond_9

    .line 98
    :cond_8
    const/4 v1, 0x0

    .line 99
    const/4 v2, 0x0

    .line 100
    const-string v0, "AppWidgetAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error using EXTRA_CUSTOM_EXTRAS index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 95
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method putInstalledAppWidgets(Ljava/util/List;I)V
    .locals 6
    .parameter
    .parameter "categoryFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;I)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, this:Lcom/android/lgesettings/AppWidgetLoader;,"Lcom/android/lgesettings/AppWidgetLoader<TItem;>;"
    .local p1, items:Ljava/util/List;,"Ljava/util/List<TItem;>;"
    iget-object v0, p0, Lcom/android/lgesettings/AppWidgetLoader;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders(I)Ljava/util/List;

    move-result-object v1

    .line 196
    .local v1, installed:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/lgesettings/AppWidgetLoader;->putAppWidgetItems(Ljava/util/List;Ljava/util/List;Ljava/util/List;IZ)V

    .line 197
    return-void
.end method
