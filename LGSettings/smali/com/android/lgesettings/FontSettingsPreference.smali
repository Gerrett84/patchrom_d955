.class public Lcom/android/lgesettings/FontSettingsPreference;
.super Landroid/preference/ListPreference;
.source "FontSettingsPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultTypefaceIndex:I

.field private mFontListAdapter:Lcom/android/lgesettings/FontListAdapter;

.field private mFontServerConnected:Z

.field private mHandler:Landroid/os/Handler;

.field private mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;

.field private mRetryShowDialog:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput v0, p0, Lcom/android/lgesettings/FontSettingsPreference;->mDefaultTypefaceIndex:I

    .line 46
    iput-boolean v0, p0, Lcom/android/lgesettings/FontSettingsPreference;->mFontServerConnected:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/lgesettings/FontSettingsPreference;->mRetryShowDialog:Z

    .line 50
    new-instance v0, Lcom/android/lgesettings/FontSettingsPreference$1;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/FontSettingsPreference$1;-><init>(Lcom/android/lgesettings/FontSettingsPreference;)V

    iput-object v0, p0, Lcom/android/lgesettings/FontSettingsPreference;->mHandler:Landroid/os/Handler;

    .line 65
    iput-object p1, p0, Lcom/android/lgesettings/FontSettingsPreference;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/FontSettingsPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/lgesettings/FontSettingsPreference;->initFontSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/FontSettingsPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/lgesettings/FontSettingsPreference;->isLGSmartWorld()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/FontSettingsPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/lgesettings/FontSettingsPreference;->goLGSmartWorldFontApps()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/lgesettings/FontSettingsPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/lgesettings/FontSettingsPreference;->dlgLGSmartWorld()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/lgesettings/FontSettingsPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/lgesettings/FontSettingsPreference;->mDefaultTypefaceIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/lgesettings/FontSettingsPreference;)Lcom/android/lgesettings/FontServerConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/lgesettings/FontSettingsPreference;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/lgesettings/FontSettingsPreference;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/lgesettings/FontSettingsPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/lgesettings/FontSettingsPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/lgesettings/FontSettingsPreference;->goLGSmartWorldDownload()V

    return-void
.end method

.method private dlgLGSmartWorld()V
    .locals 3

    .prologue
    .line 257
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/lgesettings/FontSettingsPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 258
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/lgesettings/FontSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0811e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 259
    iget-object v1, p0, Lcom/android/lgesettings/FontSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0811ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 260
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 261
    iget-object v1, p0, Lcom/android/lgesettings/FontSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0811dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/FontSettingsPreference$5;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/FontSettingsPreference$5;-><init>(Lcom/android/lgesettings/FontSettingsPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 267
    iget-object v1, p0, Lcom/android/lgesettings/FontSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0811eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/lgesettings/FontSettingsPreference$6;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/FontSettingsPreference$6;-><init>(Lcom/android/lgesettings/FontSettingsPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 274
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 275
    return-void
.end method

.method private goLGSmartWorldDownload()V
    .locals 4

    .prologue
    const/high16 v3, 0x1000

    const/4 v2, 0x1

    .line 242
    invoke-direct {p0}, Lcom/android/lgesettings/FontSettingsPreference;->isDomesticProduct()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 243
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://kr.lgworld.com/mobile/main/retrieveMain.dev"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 244
    .local v0, lgIntent:Landroid/content/Intent;
    const-string v1, "com.android.browser"

    const-string v2, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 246
    iget-object v1, p0, Lcom/android/lgesettings/FontSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 253
    .end local v0           #lgIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/FontSettingsPreference;->isjapaneseProduct()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 248
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://jp.lgworld.com/optimus/index.jsp"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 249
    .restart local v0       #lgIntent:Landroid/content/Intent;
    const-string v1, "com.android.browser"

    const-string v2, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 251
    iget-object v1, p0, Lcom/android/lgesettings/FontSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private goLGSmartWorldFontApps()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 224
    invoke-direct {p0}, Lcom/android/lgesettings/FontSettingsPreference;->isDomesticProduct()Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 225
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 226
    .local v0, dlIntent:Landroid/content/Intent;
    const-string v1, "com.lg.apps.cubeapp"

    const-string v2, "com.lgworld.mobile.phone.ux.LGWorldIntroActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v1, "catCode"

    const-string v2, "000019"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v1, "catName"

    iget-object v2, p0, Lcom/android/lgesettings/FontSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0811ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v1, "isCategory"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 230
    const-string v1, "catListTpCode"

    const-string v2, "00"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    iget-object v1, p0, Lcom/android/lgesettings/FontSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 238
    .end local v0           #dlIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/FontSettingsPreference;->isjapaneseProduct()Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 233
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 234
    .restart local v0       #dlIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/lgesettings/FontSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.lge.apps.jp.phone"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 235
    const-string v1, "CategoryID"

    const-string v2, "FONT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    iget-object v1, p0, Lcom/android/lgesettings/FontSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private hasFontServerConnected()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/lgesettings/FontSettingsPreference;->mFontServerConnected:Z

    return v0
.end method

.method private hasRetryShowDialog()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/lgesettings/FontSettingsPreference;->mRetryShowDialog:Z

    return v0
.end method

.method private initFontSettings()V
    .locals 2

    .prologue
    .line 94
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/lgesettings/FontSettingsPreference;->setFontServerConnected(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/android/lgesettings/FontSettingsPreference;->updateFontServer()V

    .line 97
    iget-object v0, p0, Lcom/android/lgesettings/FontSettingsPreference;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/lgesettings/FontSettingsPreference;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;

    invoke-virtual {v0}, Lcom/android/lgesettings/FontServerConnection;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/FontSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 100
    :cond_0
    new-instance v0, Lcom/android/lgesettings/FontListAdapter;

    iget-object v1, p0, Lcom/android/lgesettings/FontSettingsPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/lgesettings/FontListAdapter;-><init>(Landroid/content/Context;Lcom/android/lgesettings/FontSettingsPreference;)V

    iput-object v0, p0, Lcom/android/lgesettings/FontSettingsPreference;->mFontListAdapter:Lcom/android/lgesettings/FontListAdapter;

    .line 101
    invoke-direct {p0}, Lcom/android/lgesettings/FontSettingsPreference;->hasRetryShowDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/FontSettingsPreference;->setRetryShowDialog(Z)V

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/FontSettingsPreference;->showDialog(Landroid/os/Bundle;)V

    .line 105
    :cond_1
    return-void
.end method

.method private isDomesticProduct()Z
    .locals 2

    .prologue
    .line 181
    const-string v1, "ro.build.target_country"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, country:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    const-string v1, "kr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    const/4 v1, 0x1

    .line 187
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isLGSmartWorld()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 201
    iget-object v5, p0, Lcom/android/lgesettings/FontSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 202
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/16 v5, 0x2000

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 204
    .local v2, mInstalledPkgList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-direct {p0}, Lcom/android/lgesettings/FontSettingsPreference;->isDomesticProduct()Z

    move-result v5

    if-ne v5, v4, :cond_1

    .line 206
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 207
    .local v0, a:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.lg.apps.cubeapp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 219
    .end local v0           #a:Landroid/content/pm/ApplicationInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return v4

    .line 211
    :cond_1
    invoke-direct {p0}, Lcom/android/lgesettings/FontSettingsPreference;->isjapaneseProduct()Z

    move-result v5

    if-ne v5, v4, :cond_3

    .line 213
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 214
    .restart local v0       #a:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.lge.apps.jp.phone"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 219
    .end local v0           #a:Landroid/content/pm/ApplicationInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isjapaneseProduct()Z
    .locals 2

    .prologue
    .line 191
    const-string v1, "ro.build.target_country"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, country:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    const-string v1, "jp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    const/4 v1, 0x1

    .line 197
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setFontServerConnected(Z)V
    .locals 0
    .parameter "connected"

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/android/lgesettings/FontSettingsPreference;->mFontServerConnected:Z

    .line 163
    return-void
.end method

.method private setRetryShowDialog(Z)V
    .locals 0
    .parameter "retry"

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/android/lgesettings/FontSettingsPreference;->mRetryShowDialog:Z

    .line 155
    return-void
.end method


# virtual methods
.method public connectFontServer()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/lgesettings/FontSettingsPreference;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/android/lgesettings/FontServerConnection;

    iget-object v1, p0, Lcom/android/lgesettings/FontSettingsPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/lgesettings/FontSettingsPreference;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/lgesettings/FontServerConnection;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/lgesettings/FontSettingsPreference;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;

    .line 71
    iget-object v0, p0, Lcom/android/lgesettings/FontSettingsPreference;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;

    invoke-virtual {v0}, Lcom/android/lgesettings/FontServerConnection;->connectFontServerService()V

    .line 73
    :cond_0
    return-void
.end method

.method public disconnectFontServer()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/lgesettings/FontSettingsPreference;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/lgesettings/FontSettingsPreference;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;

    invoke-virtual {v0}, Lcom/android/lgesettings/FontServerConnection;->disconnectFontServerService()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/FontSettingsPreference;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;

    .line 80
    :cond_0
    return-void
.end method

.method public getFontServer()Lcom/android/lgesettings/FontServerConnection;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/lgesettings/FontSettingsPreference;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 108
    invoke-direct {p0}, Lcom/android/lgesettings/FontSettingsPreference;->initFontSettings()V

    .line 109
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 110
    invoke-direct {p0}, Lcom/android/lgesettings/FontSettingsPreference;->isDomesticProduct()Z

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/lgesettings/FontSettingsPreference;->isjapaneseProduct()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/FontSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0811e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/lgesettings/FontSettingsPreference$2;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/FontSettingsPreference$2;-><init>(Lcom/android/lgesettings/FontSettingsPreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/FontSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0811dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/lgesettings/FontSettingsPreference$3;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/FontSettingsPreference$3;-><init>(Lcom/android/lgesettings/FontSettingsPreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 133
    iget-object v0, p0, Lcom/android/lgesettings/FontSettingsPreference;->mFontListAdapter:Lcom/android/lgesettings/FontListAdapter;

    new-instance v1, Lcom/android/lgesettings/FontSettingsPreference$4;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/FontSettingsPreference$4;-><init>(Lcom/android/lgesettings/FontSettingsPreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 148
    return-void

    .line 123
    :cond_1
    invoke-virtual {p1, v2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/lgesettings/FontSettingsPreference;->hasFontServerConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/lgesettings/FontSettingsPreference;->setRetryShowDialog(Z)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public updateFontServer()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/lgesettings/FontSettingsPreference;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/lgesettings/FontSettingsPreference;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;

    invoke-virtual {v0}, Lcom/android/lgesettings/FontServerConnection;->updateFontServer()V

    .line 85
    iget-object v0, p0, Lcom/android/lgesettings/FontSettingsPreference;->mRemoteFontServer:Lcom/android/lgesettings/FontServerConnection;

    invoke-virtual {v0}, Lcom/android/lgesettings/FontServerConnection;->getDefaultTypefaceIndex()I

    move-result v0

    iput v0, p0, Lcom/android/lgesettings/FontSettingsPreference;->mDefaultTypefaceIndex:I

    .line 87
    :cond_0
    return-void
.end method
