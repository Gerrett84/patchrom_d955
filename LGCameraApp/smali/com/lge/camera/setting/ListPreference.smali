.class public Lcom/lge/camera/setting/ListPreference;
.super Lcom/lge/camera/setting/CameraPreference;
.source "ListPreference.java"


# instance fields
.field private mDefaultValue:Ljava/lang/String;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryCommand:Ljava/lang/String;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mExtraInfos:[Ljava/lang/CharSequence;

.field private mExtraInfos2:[Ljava/lang/CharSequence;

.field private mExtraInfos3:[Ljava/lang/CharSequence;

.field private mExtraInfos4:[Ljava/lang/CharSequence;

.field private mIndicatorIconResources:[I

.field private mKeepLastValue:Z

.field private mKey:Ljava/lang/String;

.field private mLoaded:Z

.field private mMenuCommand:Ljava/lang/String;

.field private mMenuIconResources:[I

.field private mMenuIconResourcesExpand:[I

.field private mPersist:Z

.field private mSaveSettingEnabled:Z

.field private mSettingMenuCommand:Ljava/lang/String;

.field private mSettingMenuIconResources:[I

.field private mSettingMenuIconResourcesExpand:[I

.field private mTitle:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/CameraPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-boolean v7, p0, Lcom/lge/camera/setting/ListPreference;->mLoaded:Z

    .line 40
    iput-boolean v7, p0, Lcom/lge/camera/setting/ListPreference;->mKeepLastValue:Z

    .line 42
    iput-boolean v6, p0, Lcom/lge/camera/setting/ListPreference;->mSaveSettingEnabled:Z

    .line 51
    sget-object v5, Lcom/lge/camera/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v5, v7, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 53
    .local v4, styledAttrs:Landroid/content/res/TypedArray;
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/util/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/lge/camera/setting/ListPreference;->mKey:Ljava/lang/String;

    .line 54
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/camera/setting/ListPreference;->mTitle:Ljava/lang/String;

    .line 55
    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/camera/setting/ListPreference;->mDefaultValue:Ljava/lang/String;

    .line 56
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 57
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 58
    invoke-direct {p0, p1, v4}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 59
    invoke-direct {p0, p1, v4}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResourcesExpand(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 60
    invoke-direct {p0, p1, v4}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 61
    invoke-direct {p0, p1, v4}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResourcesExpand(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 63
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/camera/setting/ListPreference;->mEntryCommand:Ljava/lang/String;

    .line 64
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/camera/setting/ListPreference;->mMenuCommand:Ljava/lang/String;

    .line 65
    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/camera/setting/ListPreference;->mSettingMenuCommand:Ljava/lang/String;

    .line 67
    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lge/camera/setting/ListPreference;->setExtraInfos([Ljava/lang/CharSequence;)V

    .line 68
    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lge/camera/setting/ListPreference;->setExtraInfos2([Ljava/lang/CharSequence;)V

    .line 69
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lge/camera/setting/ListPreference;->setExtraInfos3([Ljava/lang/CharSequence;)V

    .line 70
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lge/camera/setting/ListPreference;->setExtraInfos4([Ljava/lang/CharSequence;)V

    .line 72
    const/16 v5, 0xe

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/lge/camera/setting/ListPreference;->mPersist:Z

    .line 74
    const/16 v5, 0xc

    invoke-virtual {v4, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 75
    .local v2, iconsResId:I
    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 77
    .local v3, iconsTypedArray:Landroid/content/res/TypedArray;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 78
    .local v0, arrayLength:I
    new-array v5, v0, [I

    iput-object v5, p0, Lcom/lge/camera/setting/ListPreference;->mIndicatorIconResources:[I

    .line 79
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 80
    iget-object v5, p0, Lcom/lge/camera/setting/ListPreference;->mIndicatorIconResources:[I

    invoke-virtual {v3, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    aput v6, v5, v1

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v3           #iconsTypedArray:Landroid/content/res/TypedArray;
    :cond_0
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "prefName"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/CameraPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    iput-boolean v0, p0, Lcom/lge/camera/setting/ListPreference;->mLoaded:Z

    .line 40
    iput-boolean v0, p0, Lcom/lge/camera/setting/ListPreference;->mKeepLastValue:Z

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/setting/ListPreference;->mSaveSettingEnabled:Z

    .line 46
    return-void
.end method

.method private setMenuIconResources(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 7
    .parameter "context"
    .parameter "styledAttrs"

    .prologue
    const/4 v6, 0x0

    .line 129
    const/4 v4, 0x2

    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 130
    .local v2, selectedIconsResId:I
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    const/4 v4, 0x3

    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 133
    :cond_0
    if-eqz v2, :cond_1

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 135
    .local v3, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 136
    .local v0, arrayLength:I
    new-array v4, v0, [I

    iput-object v4, p0, Lcom/lge/camera/setting/ListPreference;->mMenuIconResources:[I

    .line 137
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 138
    iget-object v4, p0, Lcom/lge/camera/setting/ListPreference;->mMenuIconResources:[I

    invoke-virtual {v3, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    aput v5, v4, v1

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v3           #ta:Landroid/content/res/TypedArray;
    :cond_1
    return-void
.end method

.method private setMenuIconResourcesExpand(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 7
    .parameter "context"
    .parameter "styledAttrs"

    .prologue
    const/4 v6, 0x0

    .line 144
    const/4 v4, 0x2

    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 145
    .local v2, selectedIconsResId:I
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    const/4 v4, 0x3

    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 148
    :cond_0
    if-eqz v2, :cond_1

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 150
    .local v3, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 151
    .local v0, arrayLength:I
    new-array v4, v0, [I

    iput-object v4, p0, Lcom/lge/camera/setting/ListPreference;->mMenuIconResourcesExpand:[I

    .line 152
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 153
    iget-object v4, p0, Lcom/lge/camera/setting/ListPreference;->mMenuIconResourcesExpand:[I

    invoke-virtual {v3, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    aput v5, v4, v1

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v3           #ta:Landroid/content/res/TypedArray;
    :cond_1
    return-void
.end method

.method private setSettingMenuIconResources(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 7
    .parameter "context"
    .parameter "styledAttrs"

    .prologue
    const/4 v6, 0x0

    .line 99
    const/4 v4, 0x5

    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 100
    .local v2, settingIconResId:I
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    const/4 v4, 0x6

    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 103
    :cond_0
    if-eqz v2, :cond_1

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 105
    .local v3, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 106
    .local v0, arrayLength:I
    new-array v4, v0, [I

    iput-object v4, p0, Lcom/lge/camera/setting/ListPreference;->mSettingMenuIconResources:[I

    .line 107
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 108
    iget-object v4, p0, Lcom/lge/camera/setting/ListPreference;->mSettingMenuIconResources:[I

    invoke-virtual {v3, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    aput v5, v4, v1

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v3           #ta:Landroid/content/res/TypedArray;
    :cond_1
    return-void
.end method

.method private setSettingMenuIconResourcesExpand(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 7
    .parameter "context"
    .parameter "styledAttrs"

    .prologue
    const/4 v6, 0x0

    .line 114
    const/4 v4, 0x5

    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 115
    .local v2, settingIconResId:I
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 116
    const/4 v4, 0x6

    invoke-virtual {p2, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 118
    :cond_0
    if-eqz v2, :cond_1

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 120
    .local v3, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 121
    .local v0, arrayLength:I
    new-array v4, v0, [I

    iput-object v4, p0, Lcom/lge/camera/setting/ListPreference;->mSettingMenuIconResourcesExpand:[I

    .line 122
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 123
    iget-object v4, p0, Lcom/lge/camera/setting/ListPreference;->mSettingMenuIconResourcesExpand:[I

    invoke-virtual {v3, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    aput v5, v4, v1

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v0           #arrayLength:I
    .end local v1           #i:I
    .end local v3           #ta:Landroid/content/res/TypedArray;
    :cond_1
    return-void
.end method


# virtual methods
.method public filterUnsupported(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v1, entryValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const-string v5, "CameraApp"

    const-string v6, "Preference ---------------------------------------------------------"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 440
    const-string v6, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Preference Device support item ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "%02d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]\t\t: ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 442
    :cond_0
    const-string v5, "CameraApp"

    const-string v6, "Preference ---------------------------------------------------------"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const/4 v2, 0x0

    iget-object v5, p0, Lcom/lge/camera/setting/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v5

    .local v3, len:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 445
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Preference XML Defined values/entries\t: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/setting/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] / ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/setting/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v5, p0, Lcom/lge/camera/setting/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_1

    .line 448
    iget-object v5, p0, Lcom/lge/camera/setting/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    iget-object v5, p0, Lcom/lge/camera/setting/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 452
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 454
    .local v4, size:I
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Preference supported entries count ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v5, "CameraApp"

    const-string v6, "Preference ---------------------------------------------------------"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    new-array v5, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/lge/camera/setting/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 457
    new-array v5, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/lge/camera/setting/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 458
    return-void
.end method

.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 3
    .parameter "value"

    .prologue
    .line 404
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/lge/camera/setting/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 406
    iget-object v2, p0, Lcom/lge/camera/setting/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-static {v2, p1}, Lcom/lge/camera/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 410
    .end local v0           #i:I
    :goto_1
    return v0

    .line 404
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 410
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mMenuCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/String;
    .locals 2

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 417
    .local v0, index:I
    if-gez v0, :cond_0

    .line 418
    const-string v1, ""

    .line 420
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/lge/camera/setting/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getEntryCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mEntryCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 300
    .local v0, index:I
    if-gez v0, :cond_0

    .line 301
    const-string v1, ""

    .line 303
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/lge/camera/setting/ListPreference;->mExtraInfos:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getExtraInfo2()Ljava/lang/String;
    .locals 2

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 311
    .local v0, index:I
    if-gez v0, :cond_0

    .line 312
    const-string v1, ""

    .line 314
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/lge/camera/setting/ListPreference;->mExtraInfos2:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getExtraInfo3()Ljava/lang/String;
    .locals 2

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 322
    .local v0, index:I
    if-gez v0, :cond_0

    .line 323
    const-string v1, ""

    .line 325
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/lge/camera/setting/ListPreference;->mExtraInfos3:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getExtraInfo4()Ljava/lang/String;
    .locals 2

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 333
    .local v0, index:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/lge/camera/setting/ListPreference;->mExtraInfos4:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 334
    :cond_0
    const-string v1, ""

    .line 336
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/lge/camera/setting/ListPreference;->mExtraInfos4:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getExtraInfos()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mExtraInfos:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtraInfos2()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mExtraInfos2:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtraInfos3()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mExtraInfos3:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtraInfos4()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mExtraInfos4:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIndicatorIconResource()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 228
    iget-object v2, p0, Lcom/lge/camera/setting/ListPreference;->mIndicatorIconResources:[I

    if-eqz v2, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 230
    .local v0, index:I
    if-gez v0, :cond_1

    .line 236
    .end local v0           #index:I
    :cond_0
    :goto_0
    return v1

    .line 233
    .restart local v0       #index:I
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/setting/ListPreference;->mIndicatorIconResources:[I

    aget v1, v1, v0

    goto :goto_0
.end method

.method public getIndicatorIconResources()[I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 215
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mIndicatorIconResources:[I

    if-nez v0, :cond_0

    .line 216
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mIndicatorIconResources:[I

    .line 217
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mIndicatorIconResources:[I

    aput v1, v0, v1

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mIndicatorIconResources:[I

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuIconResources()[I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mMenuIconResources:[I

    return-object v0
.end method

.method public getMenuIconResourcesExpand()[I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mMenuIconResourcesExpand:[I

    return-object v0
.end method

.method public getSettingMenuCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mSettingMenuCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingMenuIconResources()[I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mSettingMenuIconResources:[I

    return-object v0
.end method

.method public getSettingMenuIconResourcesExpand()[I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mSettingMenuIconResourcesExpand:[I

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 366
    iget-boolean v1, p0, Lcom/lge/camera/setting/ListPreference;->mLoaded:Z

    if-nez v1, :cond_2

    .line 367
    invoke-virtual {p0}, Lcom/lge/camera/setting/ListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 368
    .local v0, pref:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/lge/camera/setting/ListPreference;->mPersist:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/lge/camera/setting/ListPreference;->mKeepLastValue:Z

    if-eqz v1, :cond_3

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/setting/ListPreference;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/camera/setting/ListPreference;->mDefaultValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/setting/ListPreference;->mValue:Ljava/lang/String;

    .line 370
    iget-object v1, p0, Lcom/lge/camera/setting/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/setting/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 371
    iget-object v1, p0, Lcom/lge/camera/setting/ListPreference;->mDefaultValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/lge/camera/setting/ListPreference;->mValue:Ljava/lang/String;

    .line 372
    iget-boolean v1, p0, Lcom/lge/camera/setting/ListPreference;->mSaveSettingEnabled:Z

    if-eqz v1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/lge/camera/setting/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/lge/camera/setting/ListPreference;->persistStringValue(Ljava/lang/String;)V

    .line 376
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/camera/setting/ListPreference;->mKeepLastValue:Z

    .line 381
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/setting/ListPreference;->mLoaded:Z

    .line 383
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/setting/ListPreference;->mValue:Ljava/lang/String;

    return-object v1

    .line 378
    .restart local v0       #pref:Landroid/content/SharedPreferences;
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/setting/ListPreference;->mDefaultValue:Ljava/lang/String;

    iput-object v1, p0, Lcom/lge/camera/setting/ListPreference;->mValue:Ljava/lang/String;

    .line 379
    iget-object v1, p0, Lcom/lge/camera/setting/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/lge/camera/setting/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public keepLastValue()V
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/setting/ListPreference;->mKeepLastValue:Z

    .line 462
    return-void
.end method

.method protected persistStringValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/lge/camera/setting/ListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 426
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/lge/camera/setting/ListPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 427
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 428
    return-void
.end method

.method public reloadValue()V
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/setting/ListPreference;->mLoaded:Z

    .line 432
    return-void
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0
    .parameter "menuCommand"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/lge/camera/setting/ListPreference;->mMenuCommand:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 0
    .parameter "defValue"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/lge/camera/setting/ListPreference;->mDefaultValue:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "entries"

    .prologue
    .line 249
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/CharSequence;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/lge/camera/setting/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 250
    return-void
.end method

.method public setEntryCommand(Ljava/lang/String;)V
    .locals 0
    .parameter "entryCommand"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/lge/camera/setting/ListPreference;->mEntryCommand:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 253
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/CharSequence;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/lge/camera/setting/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 254
    return-void
.end method

.method public setExtraInfos([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "extraInfos"

    .prologue
    .line 257
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/CharSequence;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/lge/camera/setting/ListPreference;->mExtraInfos:[Ljava/lang/CharSequence;

    .line 258
    return-void
.end method

.method public setExtraInfos2([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "extraInfos"

    .prologue
    .line 261
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/CharSequence;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/lge/camera/setting/ListPreference;->mExtraInfos2:[Ljava/lang/CharSequence;

    .line 262
    return-void
.end method

.method public setExtraInfos3([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "extraInfos"

    .prologue
    .line 265
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/CharSequence;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/lge/camera/setting/ListPreference;->mExtraInfos3:[Ljava/lang/CharSequence;

    .line 266
    return-void
.end method

.method public setExtraInfos4([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "extraInfos"

    .prologue
    .line 269
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/CharSequence;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/lge/camera/setting/ListPreference;->mExtraInfos4:[Ljava/lang/CharSequence;

    .line 270
    return-void
.end method

.method public setIndicatorIconResources([I)V
    .locals 1
    .parameter "values"

    .prologue
    .line 223
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [I

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/lge/camera/setting/ListPreference;->mIndicatorIconResources:[I

    .line 224
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/lge/camera/setting/ListPreference;->mKey:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setMenuIconResources([I)V
    .locals 1
    .parameter "values"

    .prologue
    .line 187
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [I

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/lge/camera/setting/ListPreference;->mMenuIconResources:[I

    .line 188
    return-void
.end method

.method public setMenuIconResourcesExpnd([I)V
    .locals 1
    .parameter "values"

    .prologue
    .line 195
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [I

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/lge/camera/setting/ListPreference;->mMenuIconResourcesExpand:[I

    .line 196
    return-void
.end method

.method public setPersist(Z)V
    .locals 0
    .parameter "persist"

    .prologue
    .line 361
    iput-boolean p1, p0, Lcom/lge/camera/setting/ListPreference;->mPersist:Z

    .line 362
    return-void
.end method

.method public setSaveSettingEnabled(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 357
    iput-boolean p1, p0, Lcom/lge/camera/setting/ListPreference;->mSaveSettingEnabled:Z

    .line 358
    return-void
.end method

.method public setSettingMenuCommand(Ljava/lang/String;)V
    .locals 0
    .parameter "settingMenuCommand"

    .prologue
    .line 293
    iput-object p1, p0, Lcom/lge/camera/setting/ListPreference;->mSettingMenuCommand:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setSettingMenuIconResources([I)V
    .locals 1
    .parameter "values"

    .prologue
    .line 203
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [I

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/lge/camera/setting/ListPreference;->mSettingMenuIconResources:[I

    .line 204
    return-void
.end method

.method public setSettingMenuIconResourcesExpand([I)V
    .locals 1
    .parameter "values"

    .prologue
    .line 211
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [I

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/lge/camera/setting/ListPreference;->mSettingMenuIconResourcesExpand:[I

    .line 212
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/lge/camera/setting/ListPreference;->mTitle:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 388
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 390
    :cond_0
    iput-object p1, p0, Lcom/lge/camera/setting/ListPreference;->mValue:Ljava/lang/String;

    .line 391
    iget-boolean v0, p0, Lcom/lge/camera/setting/ListPreference;->mSaveSettingEnabled:Z

    if-eqz v0, :cond_1

    .line 392
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/ListPreference;->persistStringValue(Ljava/lang/String;)V

    .line 394
    :cond_1
    return-void
.end method

.method public setValueIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 397
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/setting/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method
