.class public Lcom/android/lgesettings/LauncherActivityEx$MakeCategoryList;
.super Ljava/lang/Object;
.source "LauncherActivityEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/LauncherActivityEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MakeCategoryList"
.end annotation


# instance fields
.field private categoryItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private categorys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/LauncherActivityEx$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/lgesettings/LauncherActivityEx;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/LauncherActivityEx;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/LauncherActivityEx$ListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/LauncherActivityEx$ListItem;>;"
    iput-object p1, p0, Lcom/android/lgesettings/LauncherActivityEx$MakeCategoryList;->this$0:Lcom/android/lgesettings/LauncherActivityEx;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput-object p2, p0, Lcom/android/lgesettings/LauncherActivityEx$MakeCategoryList;->list:Ljava/util/List;

    .line 437
    invoke-direct {p0}, Lcom/android/lgesettings/LauncherActivityEx$MakeCategoryList;->fillCategoryItems()V

    .line 438
    invoke-direct {p0}, Lcom/android/lgesettings/LauncherActivityEx$MakeCategoryList;->fillEachListItems()V

    .line 439
    return-void
.end method

.method private fillCategoryItems()V
    .locals 3

    .prologue
    .line 488
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/lgesettings/LauncherActivityEx$MakeCategoryList;->categorys:Ljava/util/ArrayList;

    .line 489
    iget-object v1, p0, Lcom/android/lgesettings/LauncherActivityEx$MakeCategoryList;->this$0:Lcom/android/lgesettings/LauncherActivityEx;

    invoke-virtual {v1}, Lcom/android/lgesettings/LauncherActivityEx;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 491
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/lgesettings/LauncherActivityEx$MakeCategoryList;->categorys:Ljava/util/ArrayList;

    const v2, 0x7f08102f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v1, p0, Lcom/android/lgesettings/LauncherActivityEx$MakeCategoryList;->categorys:Ljava/util/ArrayList;

    const v2, 0x7f08001d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    iget-object v1, p0, Lcom/android/lgesettings/LauncherActivityEx$MakeCategoryList;->categorys:Ljava/util/ArrayList;

    const v2, 0x7f08001e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    iget-object v1, p0, Lcom/android/lgesettings/LauncherActivityEx$MakeCategoryList;->categorys:Ljava/util/ArrayList;

    const v2, 0x7f08001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    return-void
.end method

.method private fillEachListItems()V
    .locals 6

    .prologue
    .line 498
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/lgesettings/LauncherActivityEx$MakeCategoryList;->categoryItems:Ljava/util/ArrayList;

    .line 499
    iget-object v5, p0, Lcom/android/lgesettings/LauncherActivityEx$MakeCategoryList;->this$0:Lcom/android/lgesettings/LauncherActivityEx;

    invoke-virtual {v5}, Lcom/android/lgesettings/LauncherActivityEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 502
    .local v2, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/lgesettings/LauncherActivityEx;->access$300()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 503
    const v5, 0x7f090001

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 507
    .local v4, wirelessNetworksItems:[Ljava/lang/String;
    :goto_0
    const v5, 0x7f090002

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, deviceItems:[Ljava/lang/String;
    const v5, 0x7f090003

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 509
    .local v1, personalItems:[Ljava/lang/String;
    const v5, 0x7f090004

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 511
    .local v3, systemItems:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/lgesettings/LauncherActivityEx$MakeCategoryList;->categoryItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object v5, p0, Lcom/android/lgesettings/LauncherActivityEx$MakeCategoryList;->categoryItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    iget-object v5, p0, Lcom/android/lgesettings/LauncherActivityEx$MakeCategoryList;->categoryItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    iget-object v5, p0, Lcom/android/lgesettings/LauncherActivityEx$MakeCategoryList;->categoryItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    return-void

    .line 505
    .end local v0           #deviceItems:[Ljava/lang/String;
    .end local v1           #personalItems:[Ljava/lang/String;
    .end local v3           #systemItems:[Ljava/lang/String;
    .end local v4           #wirelessNetworksItems:[Ljava/lang/String;
    :cond_0
    const/high16 v5, 0x7f09

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .restart local v4       #wirelessNetworksItems:[Ljava/lang/String;
    goto :goto_0
.end method

.method private insertEachCategoryItems(ILjava/lang/String;Ljava/util/List;)V
    .locals 2
    .parameter "index"
    .parameter "categoryName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/LauncherActivityEx$ListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 451
    .local p3, categoryListItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/LauncherActivityEx$ListItem;>;"
    new-instance v0, Lcom/android/lgesettings/LauncherActivityEx$ListItem;

    invoke-direct {v0}, Lcom/android/lgesettings/LauncherActivityEx$ListItem;-><init>()V

    .line 452
    .local v0, categoryItem:Lcom/android/lgesettings/LauncherActivityEx$ListItem;
    const-string v1, "category"

    iput-object v1, v0, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->className:Ljava/lang/String;

    .line 453
    iput-object p2, v0, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->label:Ljava/lang/CharSequence;

    .line 455
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-direct {p0, p1, p3}, Lcom/android/lgesettings/LauncherActivityEx$MakeCategoryList;->sortCategoryItems(ILjava/util/List;)V

    .line 457
    return-void
.end method

.method private sortCategoryItems(ILjava/util/List;)V
    .locals 12
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/lgesettings/LauncherActivityEx$ListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, categoryListItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/LauncherActivityEx$ListItem;>;"
    const/4 v10, 0x1

    .line 460
    iget-object v9, p0, Lcom/android/lgesettings/LauncherActivityEx$MakeCategoryList;->categoryItems:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 461
    .local v8, sortItems:[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/lgesettings/LauncherActivityEx$MakeCategoryList;->list:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    .line 462
    .local v7, listSize:I
    array-length v4, v8

    .line 464
    .local v4, itemsSize:I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-eqz v9, :cond_2

    move v3, v10

    .line 465
    .local v3, isSecondaryUser:Z
    :goto_0
    const-string v1, "com.android.lgesettings.Settings$VpnSettingsActivity"

    .line 466
    .local v1, VPN_SETTINGS:Ljava/lang/String;
    const-string v0, "com.android.lgesettings.Settings$VpnSelectorActivity"

    .line 468
    .local v0, VPN_SELECTOR:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_5

    .line 470
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    if-ge v5, v7, :cond_4

    .line 473
    aget-object v11, v8, v2

    iget-object v9, p0, Lcom/android/lgesettings/LauncherActivityEx$MakeCategoryList;->list:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/lgesettings/LauncherActivityEx$ListItem;

    iget-object v9, v9, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->className:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 474
    if-eqz v3, :cond_3

    aget-object v9, v8, v2

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    aget-object v9, v8, v2

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 475
    :cond_0
    const-string v9, "LauncherActivityEx"

    const-string v11, "VPN shortcut is not avaiable to secondary users."

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_1
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 464
    .end local v0           #VPN_SELECTOR:Ljava/lang/String;
    .end local v1           #VPN_SETTINGS:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #isSecondaryUser:Z
    .end local v5           #j:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 477
    .restart local v0       #VPN_SELECTOR:Ljava/lang/String;
    .restart local v1       #VPN_SETTINGS:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #isSecondaryUser:Z
    .restart local v5       #j:I
    :cond_3
    iget-object v9, p0, Lcom/android/lgesettings/LauncherActivityEx$MakeCategoryList;->list:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 468
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 483
    .end local v5           #j:I
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .line 484
    .local v6, lastNum:I
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/lgesettings/LauncherActivityEx$ListItem;

    iput-boolean v10, v9, Lcom/android/lgesettings/LauncherActivityEx$ListItem;->fFinalitem:Z

    .line 485
    return-void
.end method


# virtual methods
.method public makeCategoryListItems()Ljava/util/List;
    .locals 3
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
    .line 442
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .local v0, categoryListItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/LauncherActivityEx$ListItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/lgesettings/LauncherActivityEx$MakeCategoryList;->categorys:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 445
    iget-object v2, p0, Lcom/android/lgesettings/LauncherActivityEx$MakeCategoryList;->categorys:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/android/lgesettings/LauncherActivityEx$MakeCategoryList;->insertEachCategoryItems(ILjava/lang/String;Ljava/util/List;)V

    .line 444
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 447
    :cond_0
    return-object v0
.end method
