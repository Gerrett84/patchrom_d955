.class public Lcom/android/lgesettings/DreamBackend;
.super Ljava/lang/Object;
.source "DreamBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/DreamBackend$DreamInfoComparator;,
        Lcom/android/lgesettings/DreamBackend$DreamInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mComparator:Lcom/android/lgesettings/DreamBackend$DreamInfoComparator;

.field private final mContext:Landroid/content/Context;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private final mDreamsActivatedOnDockByDefault:Z

.field private final mDreamsActivatedOnSleepByDefault:Z

.field private final mDreamsEnabledByDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/lgesettings/DreamSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".Backend"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/DreamBackend;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/lgesettings/DreamBackend;->mContext:Landroid/content/Context;

    .line 86
    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 88
    new-instance v0, Lcom/android/lgesettings/DreamBackend$DreamInfoComparator;

    invoke-virtual {p0}, Lcom/android/lgesettings/DreamBackend;->getDefaultDream()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/lgesettings/DreamBackend$DreamInfoComparator;-><init>(Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/android/lgesettings/DreamBackend;->mComparator:Lcom/android/lgesettings/DreamBackend$DreamInfoComparator;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/DreamBackend;->mDreamsEnabledByDefault:Z

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/DreamBackend;->mDreamsActivatedOnSleepByDefault:Z

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/lgesettings/DreamBackend;->mDreamsActivatedOnDockByDefault:Z

    .line 95
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "key"
    .parameter "def"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 183
    iget-object v0, p0, Lcom/android/lgesettings/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private static getDreamComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 3
    .parameter "resolveInfo"

    .prologue
    .line 244
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_1

    .line 245
    :cond_0
    const/4 v0, 0x0

    .line 246
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getSettingsComponentName(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 13
    .parameter "pm"
    .parameter "resolveInfo"

    .prologue
    const/4 v9, 0x0

    .line 250
    if-eqz p1, :cond_0

    iget-object v10, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v10, :cond_0

    iget-object v10, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v10, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-object v9

    .line 254
    :cond_1
    const/4 v2, 0x0

    .line 255
    .local v2, cn:Ljava/lang/String;
    const/4 v5, 0x0

    .line 256
    .local v5, parser:Landroid/content/res/XmlResourceParser;
    const/4 v1, 0x0

    .line 258
    .local v1, caughtException:Ljava/lang/Exception;
    :try_start_0
    iget-object v10, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v11, "android.service.dream"

    invoke-virtual {v10, p0, v11}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 259
    if-nez v5, :cond_2

    .line 260
    sget-object v10, Lcom/android/lgesettings/DreamBackend;->TAG:Ljava/lang/String;

    const-string v11, "No android.service.dream meta-data"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    .line 284
    if-eqz v5, :cond_0

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 263
    :cond_2
    :try_start_1
    iget-object v10, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v6

    .line 264
    .local v6, res:Landroid/content/res/Resources;
    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 267
    .local v0, attrs:Landroid/util/AttributeSet;
    :cond_3
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    .local v8, type:I
    const/4 v10, 0x1

    if-eq v8, v10, :cond_4

    const/4 v10, 0x2

    if-ne v8, v10, :cond_3

    .line 269
    :cond_4
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 270
    .local v4, nodeName:Ljava/lang/String;
    const-string v10, "dream"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 271
    sget-object v10, Lcom/android/lgesettings/DreamBackend;->TAG:Ljava/lang/String;

    const-string v11, "Meta-data does not start with dream tag"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2

    .line 284
    if-eqz v5, :cond_0

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 274
    :cond_5
    :try_start_2
    sget-object v10, Lcom/android/internal/R$styleable;->Dream:[I

    invoke-virtual {v6, v0, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 275
    .local v7, sa:Landroid/content/res/TypedArray;
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 276
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2

    .line 284
    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 286
    .end local v0           #attrs:Landroid/util/AttributeSet;
    .end local v4           #nodeName:Ljava/lang/String;
    .end local v6           #res:Landroid/content/res/Resources;
    .end local v7           #sa:Landroid/content/res/TypedArray;
    .end local v8           #type:I
    :cond_6
    :goto_1
    if-eqz v1, :cond_8

    .line 287
    sget-object v10, Lcom/android/lgesettings/DreamBackend;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error parsing : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 277
    :catch_0
    move-exception v3

    .line 278
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v1, v3

    .line 284
    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 279
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 280
    .local v3, e:Ljava/io/IOException;
    move-object v1, v3

    .line 284
    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 281
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 282
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    move-object v1, v3

    .line 284
    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v9

    if-eqz v5, :cond_7

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    throw v9

    .line 290
    :cond_8
    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    goto/16 :goto_0
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "msg"
    .parameter "args"

    .prologue
    .line 296
    return-void
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/lgesettings/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 188
    return-void

    .line 187
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getActiveDream()Landroid/content/ComponentName;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 203
    iget-object v3, p0, Lcom/android/lgesettings/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-nez v3, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-object v2

    .line 206
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/lgesettings/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v3}, Landroid/service/dreams/IDreamManager;->getDreamComponents()[Landroid/content/ComponentName;

    move-result-object v0

    .line 207
    .local v0, dreams:[Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    const/4 v3, 0x0

    aget-object v2, v0, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    .end local v0           #dreams:[Landroid/content/ComponentName;
    :catch_0
    move-exception v1

    .line 209
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/android/lgesettings/DreamBackend;->TAG:Ljava/lang/String;

    const-string v4, "Failed to get active dream"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getActiveDreamName()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/android/lgesettings/DreamBackend;->getActiveDream()Landroid/content/ComponentName;

    move-result-object v0

    .line 141
    .local v0, cn:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 142
    iget-object v5, p0, Lcom/android/lgesettings/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 144
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, v0, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 145
    .local v3, ri:Landroid/content/pm/ServiceInfo;
    if-eqz v3, :cond_0

    .line 146
    invoke-virtual {v3, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 152
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #ri:Landroid/content/pm/ServiceInfo;
    :cond_0
    :goto_0
    return-object v4

    .line 148
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 149
    .local v1, exc:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public getDefaultDream()Landroid/content/ComponentName;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v2, p0, Lcom/android/lgesettings/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-nez v2, :cond_0

    .line 135
    :goto_0
    return-object v1

    .line 132
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/lgesettings/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v2}, Landroid/service/dreams/IDreamManager;->getDefaultDreamComponent()Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/lgesettings/DreamBackend;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get default dream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDreamInfos()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/DreamBackend$DreamInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 98
    const-string v9, "getDreamInfos()"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/android/lgesettings/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/lgesettings/DreamBackend;->getActiveDream()Landroid/content/ComponentName;

    move-result-object v0

    .line 100
    .local v0, activeDream:Landroid/content/ComponentName;
    iget-object v9, p0, Lcom/android/lgesettings/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 101
    .local v5, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.service.dreams.DreamService"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v3, dreamIntent:Landroid/content/Intent;
    const/16 v9, 0x80

    invoke-virtual {v5, v3, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 104
    .local v7, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    .local v2, dreamInfos:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/DreamBackend$DreamInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 106
    .local v6, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v9, :cond_0

    .line 108
    new-instance v1, Lcom/android/lgesettings/DreamBackend$DreamInfo;

    invoke-direct {v1}, Lcom/android/lgesettings/DreamBackend$DreamInfo;-><init>()V

    .line 109
    .local v1, dreamInfo:Lcom/android/lgesettings/DreamBackend$DreamInfo;
    invoke-virtual {v6, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v1, Lcom/android/lgesettings/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    .line 110
    const-string v9, "com.android.systemui.BeanBagDream"

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 111
    iget-object v9, p0, Lcom/android/lgesettings/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020048

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v1, Lcom/android/lgesettings/DreamBackend$DreamInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 115
    :goto_1
    invoke-static {v6}, Lcom/android/lgesettings/DreamBackend;->getDreamComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v9

    iput-object v9, v1, Lcom/android/lgesettings/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    .line 116
    iget-object v9, v1, Lcom/android/lgesettings/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v9, :cond_1

    .line 117
    iget-object v9, v1, Lcom/android/lgesettings/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v9, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, v1, Lcom/android/lgesettings/DreamBackend$DreamInfo;->isActive:Z

    .line 119
    :cond_1
    invoke-static {v5, v6}, Lcom/android/lgesettings/DreamBackend;->getSettingsComponentName(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v9

    iput-object v9, v1, Lcom/android/lgesettings/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    .line 120
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {v6, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v1, Lcom/android/lgesettings/DreamBackend$DreamInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 122
    .end local v1           #dreamInfo:Lcom/android/lgesettings/DreamBackend$DreamInfo;
    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    iget-object v9, p0, Lcom/android/lgesettings/DreamBackend;->mComparator:Lcom/android/lgesettings/DreamBackend$DreamInfoComparator;

    invoke-static {v2, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 123
    new-instance v8, Lcom/android/lgesettings/DreamBackend$DreamInfo;

    invoke-direct {v8}, Lcom/android/lgesettings/DreamBackend$DreamInfo;-><init>()V

    .line 124
    .local v8, temp:Lcom/android/lgesettings/DreamBackend$DreamInfo;
    invoke-interface {v2, v11, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 125
    return-object v2
.end method

.method public isActivatedOnDock()Z
    .locals 2

    .prologue
    .line 165
    const-string v0, "screensaver_activate_on_dock"

    iget-boolean v1, p0, Lcom/android/lgesettings/DreamBackend;->mDreamsActivatedOnDockByDefault:Z

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/DreamBackend;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isActivatedOnSleep()Z
    .locals 2

    .prologue
    .line 174
    const-string v0, "screensaver_activate_on_sleep"

    iget-boolean v1, p0, Lcom/android/lgesettings/DreamBackend;->mDreamsActivatedOnSleepByDefault:Z

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/DreamBackend;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 156
    const-string v0, "screensaver_enabled"

    iget-boolean v1, p0, Lcom/android/lgesettings/DreamBackend;->mDreamsEnabledByDefault:Z

    invoke-direct {p0, v0, v1}, Lcom/android/lgesettings/DreamBackend;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public launchSettings(Lcom/android/lgesettings/DreamBackend$DreamInfo;)V
    .locals 3
    .parameter "dreamInfo"

    .prologue
    .line 215
    const-string v0, "launchSettings(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/lgesettings/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/lgesettings/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/DreamBackend;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p1, Lcom/android/lgesettings/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setActivatedOnDock(Z)V
    .locals 4
    .parameter "value"

    .prologue
    .line 169
    const-string v0, "setActivatedOnDock(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/lgesettings/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    const-string v0, "screensaver_activate_on_dock"

    invoke-direct {p0, v0, p1}, Lcom/android/lgesettings/DreamBackend;->setBoolean(Ljava/lang/String;Z)V

    .line 171
    return-void
.end method

.method public setActivatedOnSleep(Z)V
    .locals 4
    .parameter "value"

    .prologue
    .line 178
    const-string v0, "setActivatedOnSleep(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/lgesettings/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    const-string v0, "screensaver_activate_on_sleep"

    invoke-direct {p0, v0, p1}, Lcom/android/lgesettings/DreamBackend;->setBoolean(Ljava/lang/String;Z)V

    .line 180
    return-void
.end method

.method public setActiveDream(Landroid/content/ComponentName;)V
    .locals 5
    .parameter "dream"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 191
    const-string v2, "setActiveDream(%s)"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/android/lgesettings/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    iget-object v2, p0, Lcom/android/lgesettings/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-nez v2, :cond_0

    .line 200
    :goto_0
    return-void

    .line 195
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    new-array v0, v2, [Landroid/content/ComponentName;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 196
    .local v0, dreams:[Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/lgesettings/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    .end local v0           #dreams:[Landroid/content/ComponentName;
    :cond_1
    invoke-interface {v2, v0}, Landroid/service/dreams/IDreamManager;->setDreamComponents([Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/lgesettings/DreamBackend;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set active dream to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "value"

    .prologue
    .line 160
    const-string v0, "setEnabled(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/lgesettings/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    const-string v0, "screensaver_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/lgesettings/DreamBackend;->setBoolean(Ljava/lang/String;Z)V

    .line 162
    return-void
.end method

.method public startDreaming()V
    .locals 3

    .prologue
    .line 233
    const-string v1, "startDreaming()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/lgesettings/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iget-object v1, p0, Lcom/android/lgesettings/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-nez v1, :cond_0

    .line 241
    :goto_0
    return-void

    .line 237
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/lgesettings/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->dream()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/android/lgesettings/DreamBackend;->TAG:Ljava/lang/String;

    const-string v2, "Failed to dream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
