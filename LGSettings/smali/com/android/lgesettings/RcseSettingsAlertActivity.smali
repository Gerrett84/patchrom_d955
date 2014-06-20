.class public Lcom/android/lgesettings/RcseSettingsAlertActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "RcseSettingsAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static KEY_NAME:Ljava/lang/String;

.field private static PREFERENCE_NAME:Ljava/lang/String;


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mNBtnText:Ljava/lang/String;

.field private mPBtnText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private temp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-string v0, "gsma.joyn.preferences"

    sput-object v0, Lcom/android/lgesettings/RcseSettingsAlertActivity;->PREFERENCE_NAME:Ljava/lang/String;

    .line 77
    const-string v0, "gsma.joyn.enabled"

    sput-object v0, Lcom/android/lgesettings/RcseSettingsAlertActivity;->KEY_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 68
    iput-object v0, p0, Lcom/android/lgesettings/RcseSettingsAlertActivity;->mTitle:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/android/lgesettings/RcseSettingsAlertActivity;->mMessage:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/android/lgesettings/RcseSettingsAlertActivity;->mPBtnText:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/android/lgesettings/RcseSettingsAlertActivity;->mNBtnText:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/android/lgesettings/RcseSettingsAlertActivity;->temp:Ljava/lang/String;

    return-void
.end method

.method private getJoynEnabled(Ljava/lang/String;)Z
    .locals 13
    .parameter "packageName"

    .prologue
    const/4 v9, 0x0

    .line 127
    const/4 v7, 0x0

    .line 128
    .local v7, result:Z
    const/4 v2, 0x0

    .line 130
    .local v2, filePath:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/lgesettings/RcseSettingsAlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 131
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/shared_prefs/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    new-instance v1, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/lgesettings/RcseSettingsAlertActivity;->PREFERENCE_NAME:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".xml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 134
    :cond_0
    const-string v10, "RCSeAlertActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "filePath:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Not exists"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .end local v1           #file:Ljava/io/File;
    :goto_0
    return v9

    .line 138
    .restart local v1       #file:Ljava/io/File;
    :cond_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    .line 140
    .local v6, parserCreator:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 141
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-interface {v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 142
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 143
    .local v4, parseEvent:I
    :goto_1
    const/4 v9, 0x1

    if-eq v4, v9, :cond_2

    .line 144
    const/4 v9, 0x2

    if-ne v4, v9, :cond_3

    .line 145
    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, name:Ljava/lang/String;
    sget-object v9, Lcom/android/lgesettings/RcseSettingsAlertActivity;->KEY_NAME:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 147
    const/4 v9, 0x0

    const-string v10, "value"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 148
    .local v8, value:Ljava/lang/String;
    const-string v9, "true"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 149
    const/4 v7, 0x1

    .end local v1           #file:Ljava/io/File;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #parseEvent:I
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #parserCreator:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8           #value:Ljava/lang/String;
    :cond_2
    :goto_2
    move v9, v7

    .line 159
    goto :goto_0

    .line 154
    .restart local v1       #file:Ljava/io/File;
    .restart local v4       #parseEvent:I
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #parserCreator:Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_1

    .line 156
    .end local v1           #file:Ljava/io/File;
    .end local v4           #parseEvent:I
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #parserCreator:Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public checkMultiClient()V
    .locals 8

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/lgesettings/RcseSettingsAlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 165
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 168
    .local v3, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 169
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    .line 172
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "gsma.joyn.client"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 173
    const-string v5, "RCSeAlertActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "joyn package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v5, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/lgesettings/RcseSettingsAlertActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 178
    iget-object v5, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/lgesettings/RcseSettingsAlertActivity;->getJoynEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 180
    .local v1, enabled:Z
    const-string v5, "RCSeAlertActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "joyn package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " enabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "gsma.joyn.settings.activity"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 185
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "gsma.joyn.settings.activity"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/lgesettings/RcseSettingsAlertActivity;->temp:Ljava/lang/String;

    .line 187
    const-string v5, "RCSeAlertActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "intentinfo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/lgesettings/RcseSettingsAlertActivity;->temp:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_1
    if-eqz v1, :cond_0

    .line 196
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #enabled:Z
    :cond_2
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 101
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/android/lgesettings/RcseSettingsAlertActivity;->checkMultiClient()V

    .line 105
    :try_start_0
    const-string v2, "RCSeAlertActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "afercheckintentinfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/RcseSettingsAlertActivity;->temp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/lgesettings/RcseSettingsAlertActivity;->temp:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/lgesettings/RcseSettingsAlertActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/RcseSettingsAlertActivity;->finish()V

    .line 116
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "RCSeAlertActivity"

    const-string v3, "There is no RCS app except LG RCS app"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, -0x2

    if-ne p2, v2, :cond_0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const-string v1, "RCSeAlertActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/lgesettings/RcseSettingsAlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 86
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f080015

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/RcseSettingsAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 87
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 88
    const v1, 0x7f080016

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/RcseSettingsAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 89
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 90
    const v1, 0x7f080917

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/RcseSettingsAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 91
    invoke-virtual {p0}, Lcom/android/lgesettings/RcseSettingsAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020196

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 92
    const v1, 0x7f080905

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/RcseSettingsAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 93
    invoke-virtual {p0}, Lcom/android/lgesettings/RcseSettingsAlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 95
    invoke-virtual {p0}, Lcom/android/lgesettings/RcseSettingsAlertActivity;->setupAlert()V

    .line 96
    const-string v1, "RCSeAlertActivity"

    const-string v2, "onCreate++++++++"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 120
    const-string v0, "RCSeAlertActivity"

    const-string v1, "onDestroy++++++++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 124
    return-void
.end method
