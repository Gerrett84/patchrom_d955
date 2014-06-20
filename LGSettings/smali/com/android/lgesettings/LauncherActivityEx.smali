.class public Lcom/android/lgesettings/LauncherActivityEx;
.super Landroid/app/ListActivity;
.source "LauncherActivityEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/LauncherActivityEx$1;,
        Lcom/android/lgesettings/LauncherActivityEx$MakeCategoryList;,
        Lcom/android/lgesettings/LauncherActivityEx$IconResizer;,
        Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;,
        Lcom/android/lgesettings/LauncherActivityEx$ListItem;
    }
.end annotation


# static fields
.field private static final LGVPN_SHORTCUT:Z


# instance fields
.field final CATEGORY:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field mAdapter:Landroid/widget/ListAdapter;

.field mIconResizer:Lcom/android/lgesettings/LauncherActivityEx$IconResizer;

.field mIntent:Landroid/content/Intent;

.field mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "ro.lge.capp_lgevpn"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/lgesettings/LauncherActivityEx;->LGVPN_SHORTCUT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 39
    const-string v0, "LauncherActivityEx"

    iput-object v0, p0, Lcom/android/lgesettings/LauncherActivityEx;->TAG:Ljava/lang/String;

    .line 40
    const-string v0, "category"

    iput-object v0, p0, Lcom/android/lgesettings/LauncherActivityEx;->CATEGORY:Ljava/lang/String;

    .line 430
    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/android/lgesettings/LauncherActivityEx;->LGVPN_SHORTCUT:Z

    return v0
.end method


# virtual methods
.method protected getTargetIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 408
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    return-object v0
.end method

.method protected intentForPosition(I)Landroid/content/Intent;
    .locals 2
    .parameter "position"

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/android/lgesettings/LauncherActivityEx;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;

    .line 399
    .local v0, adapter:Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;
    invoke-virtual {v0, p1}, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method protected itemForPosition(I)Lcom/android/lgesettings/LauncherActivityEx$ListItem;
    .locals 2
    .parameter "position"

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/android/lgesettings/LauncherActivityEx;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;

    .line 404
    .local v0, adapter:Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;
    invoke-virtual {v0, p1}, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;->itemForPosition(I)Lcom/android/lgesettings/LauncherActivityEx$ListItem;

    move-result-object v1

    return-object v1
.end method

.method public makeListItems()Ljava/util/List;
    .locals 8
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
    .line 417
    iget-object v5, p0, Lcom/android/lgesettings/LauncherActivityEx;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v5}, Lcom/android/lgesettings/LauncherActivityEx;->onQueryPackageManager(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    .line 420
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 421
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/LauncherActivityEx$ListItem;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 422
    .local v2, listSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 423
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 424
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v5, Lcom/android/lgesettings/LauncherActivityEx$ListItem;

    iget-object v6, p0, Lcom/android/lgesettings/LauncherActivityEx;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v3, v7}, Lcom/android/lgesettings/LauncherActivityEx$ListItem;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/lgesettings/LauncherActivityEx$IconResizer;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 427
    .end local v3           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 327
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 328
    invoke-virtual {p0}, Lcom/android/lgesettings/LauncherActivityEx;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/LauncherActivityEx;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 330
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/LauncherActivityEx;->requestWindowFeature(I)Z

    .line 331
    invoke-virtual {p0, v2}, Lcom/android/lgesettings/LauncherActivityEx;->setProgressBarIndeterminateVisibility(Z)V

    .line 332
    invoke-virtual {p0}, Lcom/android/lgesettings/LauncherActivityEx;->onSetContentView()V

    .line 334
    new-instance v0, Lcom/android/lgesettings/LauncherActivityEx$IconResizer;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/LauncherActivityEx$IconResizer;-><init>(Lcom/android/lgesettings/LauncherActivityEx;)V

    iput-object v0, p0, Lcom/android/lgesettings/LauncherActivityEx;->mIconResizer:Lcom/android/lgesettings/LauncherActivityEx$IconResizer;

    .line 336
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/lgesettings/LauncherActivityEx;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/lgesettings/LauncherActivityEx;->mIntent:Landroid/content/Intent;

    .line 337
    iget-object v0, p0, Lcom/android/lgesettings/LauncherActivityEx;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 338
    new-instance v0, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;

    iget-object v1, p0, Lcom/android/lgesettings/LauncherActivityEx;->mIconResizer:Lcom/android/lgesettings/LauncherActivityEx$IconResizer;

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/LauncherActivityEx$ActivityAdapter;-><init>(Lcom/android/lgesettings/LauncherActivityEx;Lcom/android/lgesettings/LauncherActivityEx$IconResizer;)V

    iput-object v0, p0, Lcom/android/lgesettings/LauncherActivityEx;->mAdapter:Landroid/widget/ListAdapter;

    .line 340
    iget-object v0, p0, Lcom/android/lgesettings/LauncherActivityEx;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/LauncherActivityEx;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 341
    invoke-virtual {p0}, Lcom/android/lgesettings/LauncherActivityEx;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/LauncherActivityEx;->setProgressBarIndeterminateVisibility(Z)V

    .line 347
    return-void
.end method

.method protected onEvaluateShowIcons()Z
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x1

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 389
    invoke-virtual {p0, p3}, Lcom/android/lgesettings/LauncherActivityEx;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v0

    .line 392
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/LauncherActivityEx;->startActivity(Landroid/content/Intent;)V

    .line 395
    :cond_0
    return-void
.end method

.method protected onQueryPackageManager(Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .parameter "queryIntent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/lgesettings/LauncherActivityEx;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onSetContentView()V
    .locals 1

    .prologue
    .line 384
    const v0, 0x7f0400b4

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/LauncherActivityEx;->setContentView(I)V

    .line 385
    return-void
.end method
