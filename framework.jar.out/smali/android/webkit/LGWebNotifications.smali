.class public Landroid/webkit/LGWebNotifications;
.super Landroid/content/BroadcastReceiver;
.source "LGWebNotifications.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LGWebNotifications"

.field static final PERMISSION_ALLOWED:I = 0x0

.field static final PERMISSION_DENIED:I = 0x2

.field static final PERMISSION_NOT_ALLOWED:I = 0x1

.field static final PERMISSION_PREF_HOSTNAME:Ljava/lang/String; = "url"

.field static final PERMISSION_PREF_KEY:Ljava/lang/String; = "privacy_enable_web_notifications"

.field static final PERMISSION_PREF_VALUE:Ljava/lang/String; = "permission"

.field private static volatile sNotifications:Landroid/webkit/LGWebNotifications;


# instance fields
.field private ACTION_CLICK:Ljava/lang/String;

.field private ACTION_CLOSE:Ljava/lang/String;

.field private NOTI_ID:Ljava/lang/String;

.field public final PERMISSION_PREF_URI:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mCore:Landroid/webkit/WebViewCore;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPermissionRequestDialog:Landroid/app/AlertDialog;

.field private mVisibleNotis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWebViewClassic:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebViewCore;Landroid/webkit/WebViewClassic;)V
    .locals 3
    .parameter "c"
    .parameter "core"
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 50
    iput-object v1, p0, Landroid/webkit/LGWebNotifications;->mNotificationManager:Landroid/app/NotificationManager;

    .line 51
    iput-object v1, p0, Landroid/webkit/LGWebNotifications;->mPermissionRequestDialog:Landroid/app/AlertDialog;

    .line 56
    const-string v1, "android.webkit.noti.action_click"

    iput-object v1, p0, Landroid/webkit/LGWebNotifications;->ACTION_CLICK:Ljava/lang/String;

    .line 57
    const-string v1, "android.webkit.noti.action_close"

    iput-object v1, p0, Landroid/webkit/LGWebNotifications;->ACTION_CLOSE:Ljava/lang/String;

    .line 176
    sget-object v1, Landroid/provider/BrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v2, "noti_permissions"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/LGWebNotifications;->PERMISSION_PREF_URI:Landroid/net/Uri;

    .line 64
    iput-object p1, p0, Landroid/webkit/LGWebNotifications;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Landroid/webkit/LGWebNotifications;->mCore:Landroid/webkit/WebViewCore;

    .line 66
    iput-object p3, p0, Landroid/webkit/LGWebNotifications;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    .line 67
    const-string/jumbo v1, "notiId"

    iput-object v1, p0, Landroid/webkit/LGWebNotifications;->NOTI_ID:Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 70
    .local v0, intFilt:Landroid/content/IntentFilter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/webkit/LGWebNotifications;->ACTION_CLICK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/webkit/LGWebNotifications;->ACTION_CLOSE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Landroid/webkit/LGWebNotifications;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Landroid/webkit/LGWebNotifications;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Landroid/webkit/LGWebNotifications;->mNotificationManager:Landroid/app/NotificationManager;

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/webkit/LGWebNotifications;->mVisibleNotis:Ljava/util/List;

    .line 78
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/LGWebNotifications;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/webkit/LGWebNotifications;->downloadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/LGWebNotifications;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/LGWebNotifications;->show(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$202(Landroid/webkit/LGWebNotifications;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Landroid/webkit/LGWebNotifications;->mPermissionRequestDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Landroid/webkit/LGWebNotifications;)Landroid/webkit/WebViewCore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/webkit/LGWebNotifications;->mCore:Landroid/webkit/WebViewCore;

    return-object v0
.end method

.method private click(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 340
    iget-object v0, p0, Landroid/webkit/LGWebNotifications;->mCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xe7

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendNotificationMessage(II)V

    .line 341
    return-void
.end method

.method private close(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 335
    invoke-direct {p0, p1}, Landroid/webkit/LGWebNotifications;->setInvisible(I)V

    .line 336
    iget-object v0, p0, Landroid/webkit/LGWebNotifications;->mCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xe8

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendNotificationMessage(II)V

    .line 337
    return-void
.end method

.method private downloadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "urlString"

    .prologue
    .line 346
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 347
    .local v1, conn:Ljava/net/URLConnection;
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 351
    .end local v1           #conn:Ljava/net/URLConnection;
    :goto_0
    return-object v0

    .line 349
    :catch_0
    move-exception v2

    .line 350
    .local v2, e:Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 351
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVisible(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 113
    iget-object v0, p0, Landroid/webkit/LGWebNotifications;->mVisibleNotis:Ljava/util/List;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setInvisible(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 121
    iget-object v0, p0, Landroid/webkit/LGWebNotifications;->mVisibleNotis:Ljava/util/List;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method

.method private setVisible(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 117
    iget-object v0, p0, Landroid/webkit/LGWebNotifications;->mVisibleNotis:Ljava/util/List;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method private show(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "id"
    .parameter "title"
    .parameter "text"
    .parameter "icon"

    .prologue
    const/high16 v6, 0x800

    .line 125
    invoke-direct {p0, p1}, Landroid/webkit/LGWebNotifications;->isVisible(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    new-instance v3, Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/webkit/LGWebNotifications;->ACTION_CLICK:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/webkit/LGWebNotifications;->NOTI_ID:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 129
    .local v0, contentIntent:Landroid/content/Intent;
    new-instance v3, Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/webkit/LGWebNotifications;->ACTION_CLOSE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/webkit/LGWebNotifications;->NOTI_ID:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 132
    .local v1, deleteIntent:Landroid/content/Intent;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Landroid/webkit/LGWebNotifications;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x202036b

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/LGWebNotifications;->mContext:Landroid/content/Context;

    invoke-static {v4, p1, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/LGWebNotifications;->mContext:Landroid/content/Context;

    invoke-static {v4, p1, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 143
    .local v2, noti:Landroid/app/Notification;
    iget-object v3, p0, Landroid/webkit/LGWebNotifications;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, p1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 145
    .end local v0           #contentIntent:Landroid/content/Intent;
    .end local v1           #deleteIntent:Landroid/content/Intent;
    .end local v2           #noti:Landroid/app/Notification;
    :cond_0
    return-void
.end method


# virtual methods
.method cancel(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 325
    invoke-direct {p0, p1}, Landroid/webkit/LGWebNotifications;->setInvisible(I)V

    .line 326
    iget-object v0, p0, Landroid/webkit/LGWebNotifications;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 327
    return-void
.end method

.method cancelAll()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Landroid/webkit/LGWebNotifications;->mVisibleNotis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 331
    iget-object v0, p0, Landroid/webkit/LGWebNotifications;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 332
    return-void
.end method

.method cancelRequestsForPermission()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Landroid/webkit/LGWebNotifications;->mPermissionRequestDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Landroid/webkit/LGWebNotifications;->mPermissionRequestDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/LGWebNotifications;->mPermissionRequestDialog:Landroid/app/AlertDialog;

    .line 322
    :cond_0
    return-void
.end method

.method checkPermission()I
    .locals 17

    .prologue
    .line 186
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/LGWebNotifications;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 187
    .local v13, prefs:Landroid/content/SharedPreferences;
    const-string/jumbo v1, "privacy_enable_web_notifications"

    const/4 v2, 0x1

    invoke-interface {v13, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 188
    const/4 v14, 0x2

    .line 228
    .end local v13           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return v14

    .line 190
    .restart local v13       #prefs:Landroid/content/SharedPreferences;
    :cond_1
    const/4 v14, 0x1

    .line 192
    .local v14, result:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/LGWebNotifications;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v12

    .line 193
    .local v12, pageUrl:Ljava/lang/String;
    new-instance v16, Ljava/net/URL;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 194
    .local v16, url:Ljava/net/URL;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v10

    .line 196
    .local v10, hostName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/LGWebNotifications;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/LGWebNotifications;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/LGWebNotifications;->PERMISSION_PREF_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string/jumbo v5, "url = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v10, v6, v7

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    .line 206
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 208
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    const-string/jumbo v1, "permission"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 210
    .local v11, index:I
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v14

    .line 213
    .end local v11           #index:I
    :cond_2
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 219
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v10           #hostName:Ljava/lang/String;
    .end local v12           #pageUrl:Ljava/lang/String;
    .end local v13           #prefs:Landroid/content/SharedPreferences;
    .end local v14           #result:I
    .end local v16           #url:Ljava/net/URL;
    :catch_0
    move-exception v9

    .line 220
    .local v9, e:Ljava/net/MalformedURLException;
    const-string v1, "NOTI"

    const-string v2, "checkPermission. bad page url"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v14, 0x2

    goto :goto_0

    .line 213
    .end local v9           #e:Ljava/net/MalformedURLException;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v10       #hostName:Ljava/lang/String;
    .restart local v12       #pageUrl:Ljava/lang/String;
    .restart local v13       #prefs:Landroid/content/SharedPreferences;
    .restart local v14       #result:I
    .restart local v16       #url:Ljava/net/URL;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 222
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v10           #hostName:Ljava/lang/String;
    .end local v12           #pageUrl:Ljava/lang/String;
    .end local v13           #prefs:Landroid/content/SharedPreferences;
    .end local v14           #result:I
    .end local v16           #url:Ljava/net/URL;
    :catch_1
    move-exception v9

    .line 223
    .local v9, e:Ljava/lang/ClassCastException;
    const-string v1, "NOTI"

    const-string v2, "checkPermission. wrong data type in shared settings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v14, 0x1

    goto :goto_0

    .line 226
    .end local v9           #e:Ljava/lang/ClassCastException;
    :catch_2
    move-exception v15

    .line 227
    .local v15, t:Ljava/lang/Throwable;
    const-string v1, "NOTI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPermission. something else is wrong "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v14, 0x1

    goto :goto_0
.end method

.method destroy()V
    .locals 4

    .prologue
    .line 103
    :try_start_0
    iget-object v1, p0, Landroid/webkit/LGWebNotifications;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    iget-object v1, p0, Landroid/webkit/LGWebNotifications;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->cancelAll()V

    .line 109
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/LGWebNotifications;->mCore:Landroid/webkit/WebViewCore;

    .line 110
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NOTI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while unregistering notifications broadcast receiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 84
    .local v1, extras:Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Landroid/webkit/LGWebNotifications;->NOTI_ID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 92
    .local v2, id:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/webkit/LGWebNotifications;->ACTION_CLICK:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    invoke-direct {p0, v2}, Landroid/webkit/LGWebNotifications;->click(I)V

    goto :goto_0

    .line 94
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/webkit/LGWebNotifications;->ACTION_CLOSE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 95
    invoke-direct {p0, v2}, Landroid/webkit/LGWebNotifications;->close(I)V

    goto :goto_0

    .line 97
    :cond_2
    const-string v3, "NOTI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BroadcastReceiver action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method requestPermission()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 252
    iget-object v5, p0, Landroid/webkit/LGWebNotifications;->mPermissionRequestDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_1

    .line 253
    iget-object v5, p0, Landroid/webkit/LGWebNotifications;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 254
    .local v4, title:Ljava/lang/String;
    const/4 v1, 0x0

    .line 255
    .local v1, message:Ljava/lang/String;
    if-nez v4, :cond_2

    .line 256
    iget-object v5, p0, Landroid/webkit/LGWebNotifications;->mContext:Landroid/content/Context;

    const v6, 0x20b02eb

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 263
    :goto_0
    iget-object v5, p0, Landroid/webkit/LGWebNotifications;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v3

    .line 264
    .local v3, settings:Landroid/webkit/WebSettings;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getFloatingMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 265
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 266
    .local v2, outValue:Landroid/util/TypedValue;
    iget-object v5, p0, Landroid/webkit/LGWebNotifications;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1010309

    invoke-virtual {v5, v6, v2, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 268
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Landroid/webkit/LGWebNotifications;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v0, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 274
    .end local v2           #outValue:Landroid/util/TypedValue;
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    :goto_1
    const v5, 0x202026e

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x20b02e9

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040013

    new-instance v7, Landroid/webkit/LGWebNotifications$3;

    invoke-direct {v7, p0}, Landroid/webkit/LGWebNotifications$3;-><init>(Landroid/webkit/LGWebNotifications;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040009

    new-instance v7, Landroid/webkit/LGWebNotifications$2;

    invoke-direct {v7, p0}, Landroid/webkit/LGWebNotifications$2;-><init>(Landroid/webkit/LGWebNotifications;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Landroid/webkit/LGWebNotifications$1;

    invoke-direct {v6, p0}, Landroid/webkit/LGWebNotifications$1;-><init>(Landroid/webkit/LGWebNotifications;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/LGWebNotifications;->mPermissionRequestDialog:Landroid/app/AlertDialog;

    .line 307
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/webkit/WebSettingsClassic;->getFloatingMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 308
    iget-object v5, p0, Landroid/webkit/LGWebNotifications;->mPermissionRequestDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d2

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 309
    iget-object v5, p0, Landroid/webkit/LGWebNotifications;->mPermissionRequestDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const-string v6, "Floating: Browser"

    invoke-virtual {v5, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 312
    :cond_0
    iget-object v5, p0, Landroid/webkit/LGWebNotifications;->mPermissionRequestDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 314
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #message:Ljava/lang/String;
    .end local v3           #settings:Landroid/webkit/WebSettings;
    .end local v4           #title:Ljava/lang/String;
    :cond_1
    return-void

    .line 258
    .restart local v1       #message:Ljava/lang/String;
    .restart local v4       #title:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Landroid/webkit/LGWebNotifications;->mContext:Landroid/content/Context;

    const v6, 0x20b02ea

    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 271
    .restart local v3       #settings:Landroid/webkit/WebSettings;
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Landroid/webkit/LGWebNotifications;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    goto :goto_1
.end method

.method setPermissionValue(I)V
    .locals 9
    .parameter "value"

    .prologue
    .line 233
    const-string v6, "NOTI"

    const-string/jumbo v7, "setPermissionValue"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :try_start_0
    iget-object v6, p0, Landroid/webkit/LGWebNotifications;->mWebViewClassic:Landroid/webkit/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkit/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, pageUrl:Ljava/lang/String;
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 238
    .local v4, url:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, hostName:Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 241
    .local v5, values:Landroid/content/ContentValues;
    const-string/jumbo v6, "url"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string/jumbo v6, "permission"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    iget-object v6, p0, Landroid/webkit/LGWebNotifications;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/webkit/LGWebNotifications;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Landroid/webkit/LGWebNotifications;->PERMISSION_PREF_URI:Landroid/net/Uri;

    invoke-static {v6, v7, v8, v5}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 249
    .end local v1           #hostName:Ljava/lang/String;
    .end local v2           #pageUrl:Ljava/lang/String;
    .end local v4           #url:Ljava/net/URL;
    .end local v5           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, e:Ljava/net/MalformedURLException;
    const-string v6, "NOTI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPermissionValue bad url exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v3

    .line 247
    .local v3, t:Ljava/lang/Throwable;
    const-string v6, "NOTI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPermissionValue. something else is wrong "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method show(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "title"
    .parameter "text"
    .parameter "iconUrl"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Landroid/webkit/LGWebNotifications;->setVisible(I)V

    .line 150
    const/4 v1, 0x0

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/webkit/LGWebNotifications;->show(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 167
    new-instance v0, Landroid/webkit/LGWebNotifications$1Task;

    invoke-direct {v0, p0}, Landroid/webkit/LGWebNotifications$1Task;-><init>(Landroid/webkit/LGWebNotifications;)V

    .line 168
    .local v0, task:Landroid/webkit/LGWebNotifications$1Task;
    iput p1, v0, Landroid/webkit/LGWebNotifications$1Task;->id:I

    .line 169
    iput-object p2, v0, Landroid/webkit/LGWebNotifications$1Task;->title:Ljava/lang/String;

    .line 170
    iput-object p3, v0, Landroid/webkit/LGWebNotifications$1Task;->text:Ljava/lang/String;

    .line 171
    iput-object p4, v0, Landroid/webkit/LGWebNotifications$1Task;->iconUrl:Ljava/lang/String;

    .line 172
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/webkit/LGWebNotifications$1Task;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 173
    return-void
.end method
