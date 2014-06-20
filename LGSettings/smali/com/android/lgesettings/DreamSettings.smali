.class public Lcom/android/lgesettings/DreamSettings;
.super Lcom/android/lgesettings/SettingsPreferenceFragment;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/DreamSettings$PackageReceiver;,
        Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;,
        Lcom/android/lgesettings/DreamSettings$SingleChoiceAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;

.field private mBackend:Lcom/android/lgesettings/DreamBackend;

.field private mContext:Landroid/content/Context;

.field private mItemIndex:I

.field private mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

.field private final mPackageReceiver:Lcom/android/lgesettings/DreamSettings$PackageReceiver;

.field private mRefreshing:Z

.field private mSingleChoiceAdapter:Lcom/android/lgesettings/DreamSettings$SingleChoiceAdapter;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/android/lgesettings/DreamSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/lgesettings/DreamSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;-><init>()V

    .line 66
    new-instance v0, Lcom/android/lgesettings/DreamSettings$PackageReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/DreamSettings$PackageReceiver;-><init>(Lcom/android/lgesettings/DreamSettings;Lcom/android/lgesettings/DreamSettings$1;)V

    iput-object v0, p0, Lcom/android/lgesettings/DreamSettings;->mPackageReceiver:Lcom/android/lgesettings/DreamSettings$PackageReceiver;

    .line 76
    iput-object v1, p0, Lcom/android/lgesettings/DreamSettings;->mSingleChoiceAdapter:Lcom/android/lgesettings/DreamSettings$SingleChoiceAdapter;

    .line 533
    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/DreamSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/lgesettings/DreamSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/lgesettings/DreamSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/lgesettings/DreamSettings;->mRefreshing:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/lgesettings/DreamSettings;)Lcom/android/lgesettings/DreamBackend;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/lgesettings/DreamSettings;->mBackend:Lcom/android/lgesettings/DreamBackend;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/lgesettings/DreamSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/lgesettings/DreamSettings;->refreshFromBackend()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/lgesettings/DreamSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/lgesettings/DreamSettings;->mItemIndex:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/lgesettings/DreamSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/lgesettings/DreamSettings;->mItemIndex:I

    return p1
.end method

.method static synthetic access$600(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-static {p0, p1}, Lcom/android/lgesettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 2
    .parameter "menu"
    .parameter "titleRes"
    .parameter "actionEnum"
    .parameter "isEnabled"
    .parameter "onClick"

    .prologue
    .line 285
    invoke-interface {p1, p2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 286
    .local v0, item:Landroid/view/MenuItem;
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 287
    invoke-interface {v0, p4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 288
    new-instance v1, Lcom/android/lgesettings/DreamSettings$6;

    invoke-direct {v1, p0, p5}, Lcom/android/lgesettings/DreamSettings$6;-><init>(Lcom/android/lgesettings/DreamSettings;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 295
    return-object v0
.end method

.method private createWhenToDreamDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 315
    iget-object v2, p0, Lcom/android/lgesettings/DreamSettings;->mBackend:Lcom/android/lgesettings/DreamBackend;

    invoke-virtual {v2}, Lcom/android/lgesettings/DreamBackend;->isActivatedOnDock()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/lgesettings/DreamSettings;->mBackend:Lcom/android/lgesettings/DreamBackend;

    invoke-virtual {v2}, Lcom/android/lgesettings/DreamBackend;->isActivatedOnSleep()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    .line 319
    .local v0, initialSelection:I
    :goto_0
    iput v0, p0, Lcom/android/lgesettings/DreamSettings;->mItemIndex:I

    .line 321
    const v2, 0x7f0803a7

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/DreamSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, mTitle:Ljava/lang/String;
    const-string v2, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    const v2, 0x7f080107

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/DreamSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 326
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/lgesettings/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/DreamSettings;->mSingleChoiceAdapter:Lcom/android/lgesettings/DreamSettings$SingleChoiceAdapter;

    new-instance v4, Lcom/android/lgesettings/DreamSettings$8;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/DreamSettings$8;-><init>(Lcom/android/lgesettings/DreamSettings;)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/lgesettings/DreamSettings$7;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/DreamSettings$7;-><init>(Lcom/android/lgesettings/DreamSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 315
    .end local v0           #initialSelection:I
    .end local v1           #mTitle:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/DreamSettings;->mBackend:Lcom/android/lgesettings/DreamBackend;

    invoke-virtual {v2}, Lcom/android/lgesettings/DreamBackend;->isActivatedOnDock()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/lgesettings/DreamSettings;->mBackend:Lcom/android/lgesettings/DreamBackend;

    invoke-virtual {v2}, Lcom/android/lgesettings/DreamBackend;->isActivatedOnSleep()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "context"

    .prologue
    .line 379
    new-instance v0, Lcom/android/lgesettings/DreamBackend;

    invoke-direct {v0, p0}, Lcom/android/lgesettings/DreamBackend;-><init>(Landroid/content/Context;)V

    .line 380
    .local v0, backend:Lcom/android/lgesettings/DreamBackend;
    invoke-virtual {v0}, Lcom/android/lgesettings/DreamBackend;->isEnabled()Z

    move-result v1

    .line 381
    .local v1, isEnabled:Z
    if-nez v1, :cond_0

    .line 382
    const v2, 0x7f0803a5

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 384
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/lgesettings/DreamBackend;->getActiveDreamName()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "msg"
    .parameter "args"

    .prologue
    .line 409
    return-void
.end method

.method private refreshFromBackend()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 389
    const-string v6, "refreshFromBackend()"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/android/lgesettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/lgesettings/DreamSettings;->mRefreshing:Z

    .line 391
    iget-object v6, p0, Lcom/android/lgesettings/DreamSettings;->mBackend:Lcom/android/lgesettings/DreamBackend;

    invoke-virtual {v6}, Lcom/android/lgesettings/DreamBackend;->isEnabled()Z

    move-result v2

    .line 392
    .local v2, dreamsEnabled:Z
    iget-object v6, p0, Lcom/android/lgesettings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    if-eq v6, v2, :cond_0

    .line 393
    iget-object v6, p0, Lcom/android/lgesettings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 395
    :cond_0
    iget-object v6, p0, Lcom/android/lgesettings/DreamSettings;->mAdapter:Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v6}, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;->clear()V

    .line 396
    if-eqz v2, :cond_1

    .line 397
    iget-object v6, p0, Lcom/android/lgesettings/DreamSettings;->mBackend:Lcom/android/lgesettings/DreamBackend;

    invoke-virtual {v6}, Lcom/android/lgesettings/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v1

    .line 398
    .local v1, dreamInfos:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/DreamBackend$DreamInfo;>;"
    iget-object v6, p0, Lcom/android/lgesettings/DreamSettings;->mAdapter:Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v6, v1}, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;->addAll(Ljava/util/Collection;)V

    .line 400
    .end local v1           #dreamInfos:Ljava/util/List;,"Ljava/util/List<Lcom/android/lgesettings/DreamBackend$DreamInfo;>;"
    :cond_1
    iget-object v6, p0, Lcom/android/lgesettings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    if-eqz v6, :cond_2

    .line 401
    iget-object v0, p0, Lcom/android/lgesettings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    .local v0, arr$:[Landroid/view/MenuItem;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 402
    .local v5, menuItem:Landroid/view/MenuItem;
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 401
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 403
    .end local v0           #arr$:[Landroid/view/MenuItem;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #menuItem:Landroid/view/MenuItem;
    :cond_2
    iput-boolean v8, p0, Lcom/android/lgesettings/DreamSettings;->mRefreshing:Z

    .line 404
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 138
    const v0, 0x7f08088b

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 201
    const-string v2, "onActivityCreated(%s)"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/android/lgesettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 204
    invoke-virtual {p0}, Lcom/android/lgesettings/DreamSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 206
    .local v1, listView:Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/android/lgesettings/DreamSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 207
    .local v0, emptyView:Landroid/widget/TextView;
    const-string v2, "DCM"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    const v2, 0x7f080ffa

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 212
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 213
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 215
    new-instance v2, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;

    iget-object v3, p0, Lcom/android/lgesettings/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;-><init>(Lcom/android/lgesettings/DreamSettings;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/lgesettings/DreamSettings;->mAdapter:Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;

    .line 216
    iget-object v2, p0, Lcom/android/lgesettings/DreamSettings;->mAdapter:Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 217
    return-void

    .line 210
    :cond_0
    const v2, 0x7f080ff9

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 143
    const-string v0, "onAttach(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/lgesettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 145
    iput-object p1, p0, Lcom/android/lgesettings/DreamSettings;->mContext:Landroid/content/Context;

    .line 146
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 312
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/16 v5, 0x10

    const/4 v9, -0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 150
    const-string v3, "onCreate(%s)"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-static {v3, v4}, Lcom/android/lgesettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/lgesettings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 153
    .local v1, activity:Landroid/app/Activity;
    new-instance v3, Lcom/android/lgesettings/DreamBackend;

    invoke-direct {v3, v1}, Lcom/android/lgesettings/DreamBackend;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/lgesettings/DreamSettings;->mBackend:Lcom/android/lgesettings/DreamBackend;

    .line 154
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/lgesettings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    .line 155
    iget-object v3, p0, Lcom/android/lgesettings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v3, p0, Lcom/android/lgesettings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/android/lgesettings/DreamSettings$1;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/DreamSettings$1;-><init>(Lcom/android/lgesettings/DreamSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 166
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 168
    .local v2, padding:I
    iget-object v3, p0, Lcom/android/lgesettings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v7, v7, v2, v7}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 169
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 171
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/lgesettings/DreamSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const v6, 0x800015

    invoke-direct {v5, v9, v9, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 176
    invoke-virtual {p0, v8}, Lcom/android/lgesettings/DreamSettings;->setHasOptionsMenu(Z)V

    .line 178
    new-instance v3, Lcom/android/lgesettings/DreamSettings$SingleChoiceAdapter;

    iget-object v4, p0, Lcom/android/lgesettings/DreamSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/android/lgesettings/DreamSettings$SingleChoiceAdapter;-><init>(Lcom/android/lgesettings/DreamSettings;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/lgesettings/DreamSettings;->mSingleChoiceAdapter:Lcom/android/lgesettings/DreamSettings$SingleChoiceAdapter;

    .line 181
    invoke-virtual {p0}, Lcom/android/lgesettings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 182
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-object v3, p0, Lcom/android/lgesettings/DreamSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/lgesettings/Utils;->supportSplitView(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "dialogId"

    .prologue
    const/4 v4, 0x1

    .line 300
    const-string v0, "onCreateDialog(%s)"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/lgesettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    if-ne p1, v4, :cond_0

    .line 302
    invoke-direct {p0}, Lcom/android/lgesettings/DreamSettings;->createWhenToDreamDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 308
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 221
    const-string v0, "onCreateOptionsMenu()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/lgesettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcom/android/lgesettings/DreamSettings;->mBackend:Lcom/android/lgesettings/DreamBackend;

    invoke-virtual {v0}, Lcom/android/lgesettings/DreamBackend;->isEnabled()Z

    move-result v4

    .line 225
    .local v4, isEnabled:Z
    invoke-static {}, Lcom/android/lgesettings/Utils;->isRTLLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/lgesettings/Utils;->isEnglishDigitRTLLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    const v2, 0x7f080107

    const/4 v3, 0x2

    new-instance v5, Lcom/android/lgesettings/DreamSettings$2;

    invoke-direct {v5, p0}, Lcom/android/lgesettings/DreamSettings$2;-><init>(Lcom/android/lgesettings/DreamSettings;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/lgesettings/DreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v7

    .line 239
    .local v7, whenToDream:Landroid/view/MenuItem;
    const v2, 0x7f0803a8

    const/4 v3, 0x2

    new-instance v5, Lcom/android/lgesettings/DreamSettings$3;

    invoke-direct {v5, p0}, Lcom/android/lgesettings/DreamSettings$3;-><init>(Lcom/android/lgesettings/DreamSettings;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/lgesettings/DreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v6

    .line 247
    .local v6, start:Landroid/view/MenuItem;
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/MenuItem;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    const/4 v1, 0x1

    aput-object v7, v0, v1

    iput-object v0, p0, Lcom/android/lgesettings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    .line 281
    :goto_0
    return-void

    .line 253
    .end local v6           #start:Landroid/view/MenuItem;
    .end local v7           #whenToDream:Landroid/view/MenuItem;
    :cond_1
    const v2, 0x7f0803a8

    const/4 v3, 0x2

    new-instance v5, Lcom/android/lgesettings/DreamSettings$4;

    invoke-direct {v5, p0}, Lcom/android/lgesettings/DreamSettings$4;-><init>(Lcom/android/lgesettings/DreamSettings;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/lgesettings/DreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v6

    .line 263
    .restart local v6       #start:Landroid/view/MenuItem;
    const v2, 0x7f080107

    const/4 v3, 0x2

    new-instance v5, Lcom/android/lgesettings/DreamSettings$5;

    invoke-direct {v5, p0}, Lcom/android/lgesettings/DreamSettings$5;-><init>(Lcom/android/lgesettings/DreamSettings;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/lgesettings/DreamSettings;->createMenuItem(Landroid/view/Menu;IIZLjava/lang/Runnable;)Landroid/view/MenuItem;

    move-result-object v7

    .line 276
    .restart local v7       #whenToDream:Landroid/view/MenuItem;
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/MenuItem;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    const/4 v1, 0x1

    aput-object v7, v0, v1

    iput-object v0, p0, Lcom/android/lgesettings/DreamSettings;->mMenuItemsWhenEnabled:[Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/lgesettings/DreamSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 196
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 197
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 414
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 415
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/android/lgesettings/DreamSettings;->finish()V

    .line 417
    const/4 v1, 0x1

    .line 419
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 344
    const-string v0, "onPause()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/lgesettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onPause()V

    .line 346
    iget-object v0, p0, Lcom/android/lgesettings/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/lgesettings/DreamSettings;->mPackageReceiver:Lcom/android/lgesettings/DreamSettings$PackageReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 347
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 351
    const-string v1, "onResume()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/lgesettings/DreamSettings;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    invoke-super {p0}, Lcom/android/lgesettings/SettingsPreferenceFragment;->onResume()V

    .line 353
    invoke-direct {p0}, Lcom/android/lgesettings/DreamSettings;->refreshFromBackend()V

    .line 356
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 357
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Lcom/android/lgesettings/DreamSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/lgesettings/DreamSettings;->mPackageReceiver:Lcom/android/lgesettings/DreamSettings$PackageReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 363
    return-void
.end method
