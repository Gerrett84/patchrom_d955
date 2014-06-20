.class Lcom/android/lgesettings/AppThemeWidget;
.super Ljava/lang/Object;
.source "AppThemeWidget.java"


# instance fields
.field private mCurrentThemeName:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mWidgetInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/lgesettings/AppThemeWidget;->mWidgetInfo:Ljava/util/HashMap;

    .line 32
    iput-object v1, p0, Lcom/android/lgesettings/AppThemeWidget;->mResources:Landroid/content/res/Resources;

    .line 33
    iput-object v1, p0, Lcom/android/lgesettings/AppThemeWidget;->mCurrentThemeName:Ljava/lang/String;

    .line 36
    if-nez p1, :cond_0

    .line 42
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/lgesettings/AppThemeWidget;->initCurrentTheme(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/android/lgesettings/AppThemeWidget;->initResource(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0}, Lcom/android/lgesettings/AppThemeWidget;->readWidgetInfoFromTheme()V

    goto :goto_0
.end method

.method private initCurrentTheme(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 47
    .local v1, pref:Landroid/content/SharedPreferences;
    :try_start_0
    const-string v2, "com.lge.launcher2"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    const-string v3, "LGHome2_Theme"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 53
    :goto_0
    if-eqz v1, :cond_0

    .line 54
    const-string v2, "CurrentTheme"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/lgesettings/AppThemeWidget;->mCurrentThemeName:Ljava/lang/String;

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/AppThemeWidget;->mCurrentThemeName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 58
    const-string v2, "com.lge.launcher2.theme.optimus"

    iput-object v2, p0, Lcom/android/lgesettings/AppThemeWidget;->mCurrentThemeName:Ljava/lang/String;

    .line 60
    :cond_1
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private initResource(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 65
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 68
    :try_start_0
    iget-object v3, p0, Lcom/android/lgesettings/AppThemeWidget;->mCurrentThemeName:Ljava/lang/String;

    const/16 v4, 0x2000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 70
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/lgesettings/AppThemeWidget;->mResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v1

    .line 73
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private readWidgetInfoFromTheme()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 81
    :try_start_0
    iget-object v5, p0, Lcom/android/lgesettings/AppThemeWidget;->mResources:Landroid/content/res/Resources;

    if-nez v5, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const/4 v2, 0x0

    .line 85
    .local v2, resId:I
    iget-object v5, p0, Lcom/android/lgesettings/AppThemeWidget;->mResources:Landroid/content/res/Resources;

    const-string v6, "theme_resources"

    const-string v7, "xml"

    iget-object v8, p0, Lcom/android/lgesettings/AppThemeWidget;->mCurrentThemeName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 88
    if-eqz v2, :cond_0

    .line 92
    iget-object v5, p0, Lcom/android/lgesettings/AppThemeWidget;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 93
    .local v4, xpp:Landroid/content/res/XmlResourceParser;
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    .line 95
    .local v1, eventType:I
    :goto_1
    if-eq v1, v9, :cond_0

    .line 96
    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    .line 97
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, sTag:Ljava/lang/String;
    const-string v5, "WidgetInfo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 100
    iget-object v5, p0, Lcom/android/lgesettings/AppThemeWidget;->mWidgetInfo:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v4, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .end local v3           #sTag:Ljava/lang/String;
    :cond_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    .line 105
    .end local v1           #eventType:I
    .end local v2           #resId:I
    .end local v4           #xpp:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "widgetName"

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_1

    .line 114
    iget-object v4, p0, Lcom/android/lgesettings/AppThemeWidget;->mWidgetInfo:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 115
    .local v3, widgetImage:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 116
    const/4 v4, 0x0

    .line 130
    .end local v3           #widgetImage:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 120
    .restart local v3       #widgetImage:Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/lgesettings/AppThemeWidget;->mResources:Landroid/content/res/Resources;

    const-string v5, "drawable"

    iget-object v6, p0, Lcom/android/lgesettings/AppThemeWidget;->mCurrentThemeName:Ljava/lang/String;

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 123
    .local v2, resId:I
    if-eqz v2, :cond_1

    .line 124
    iget-object v4, p0, Lcom/android/lgesettings/AppThemeWidget;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v2           #resId:I
    .end local v3           #widgetImage:Ljava/lang/String;
    :cond_1
    :goto_1
    move-object v4, v0

    .line 130
    goto :goto_0

    .line 126
    .restart local v3       #widgetImage:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 127
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
