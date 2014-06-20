.class public Lcom/android/lgesettings/SettingsBreadCrumb;
.super Ljava/lang/Object;
.source "SettingsBreadCrumb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;
    }
.end annotation


# instance fields
.field private mBackStackChangedListener:Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;

.field mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/lgesettings/SettingsBreadCrumb;->mContext:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lcom/android/lgesettings/SettingsBreadCrumb;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/SettingsBreadCrumb;->mFragmentManager:Landroid/app/FragmentManager;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/SettingsBreadCrumb;)Landroid/app/FragmentManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/lgesettings/SettingsBreadCrumb;->mFragmentManager:Landroid/app/FragmentManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/lgesettings/SettingsBreadCrumb;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/lgesettings/SettingsBreadCrumb;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/lgesettings/SettingsBreadCrumb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/lgesettings/SettingsBreadCrumb;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method public static get(Landroid/app/Activity;)Lcom/android/lgesettings/SettingsBreadCrumb;
    .locals 5
    .parameter "activity"

    .prologue
    .line 38
    const/4 v2, 0x0

    .line 40
    .local v2, settings:Lcom/android/lgesettings/Settings;
    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/android/lgesettings/Settings;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/lgesettings/Settings;->getBreadCrumb()Lcom/android/lgesettings/SettingsBreadCrumb;

    move-result-object v3

    :goto_1
    return-object v3

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, e:Ljava/lang/ClassCastException;
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 43
    const-string v3, "SettingsBreadCrumb"

    const-string v4, "ClassCastException~~!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 45
    .end local v1           #e:Ljava/lang/ClassCastException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isAttached(Landroid/app/Activity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 100
    invoke-static {p0}, Lcom/android/lgesettings/SettingsBreadCrumb;->get(Landroid/app/Activity;)Lcom/android/lgesettings/SettingsBreadCrumb;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addSwitch(Landroid/widget/Switch;)V
    .locals 3
    .parameter "mySwitch"

    .prologue
    const/4 v2, -0x2

    .line 176
    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsBreadCrumb;->get()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 181
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 182
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 183
    const-string v1, "mySwitch"

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsBreadCrumb;->removeSwitch()V

    .line 185
    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsBreadCrumb;->get()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public attach()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 68
    iget-object v3, p0, Lcom/android/lgesettings/SettingsBreadCrumb;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    const v4, 0x1020358

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 69
    .local v2, prefs:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 70
    .local v1, parentView:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/android/lgesettings/SettingsBreadCrumb;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400b7

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, breadcrumbContainer:Landroid/view/View;
    const-string v3, "tag_settings_breadcrumb"

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v1, v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 73
    iget-object v3, p0, Lcom/android/lgesettings/SettingsBreadCrumb;->mBackStackChangedListener:Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;

    if-nez v3, :cond_0

    .line 74
    new-instance v3, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;

    iget-object v4, p0, Lcom/android/lgesettings/SettingsBreadCrumb;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;-><init>(Lcom/android/lgesettings/SettingsBreadCrumb;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/lgesettings/SettingsBreadCrumb;->mBackStackChangedListener:Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;

    .line 75
    iget-object v3, p0, Lcom/android/lgesettings/SettingsBreadCrumb;->mFragmentManager:Landroid/app/FragmentManager;

    iget-object v4, p0, Lcom/android/lgesettings/SettingsBreadCrumb;->mBackStackChangedListener:Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 77
    :cond_0
    return-void
.end method

.method public clean()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/lgesettings/SettingsBreadCrumb;->mFragmentManager:Landroid/app/FragmentManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/SettingsBreadCrumb;->mBackStackChangedListener:Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/lgesettings/SettingsBreadCrumb;->mFragmentManager:Landroid/app/FragmentManager;

    iget-object v1, p0, Lcom/android/lgesettings/SettingsBreadCrumb;->mBackStackChangedListener:Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->removeOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/SettingsBreadCrumb;->mBackStackChangedListener:Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;

    .line 97
    :cond_0
    return-void
.end method

.method public get()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/lgesettings/SettingsBreadCrumb;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/lgesettings/SettingsBreadCrumb;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0a0181

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 52
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeSwitch()V
    .locals 3

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsBreadCrumb;->get()Landroid/view/ViewGroup;

    move-result-object v1

    if-nez v1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsBreadCrumb;->get()Landroid/view/ViewGroup;

    move-result-object v1

    const-string v2, "mySwitch"

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 194
    .local v0, mySwitch:Landroid/widget/Switch;
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/android/lgesettings/SettingsBreadCrumb;->get()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/lgesettings/SettingsBreadCrumb;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 120
    :cond_0
    const-string v0, "SettingsBreadCrumb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTitle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iput-object p1, p0, Lcom/android/lgesettings/SettingsBreadCrumb;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public showBreadCrumb(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "title"
    .parameter "shortTitle"

    .prologue
    .line 104
    const-string v0, "SettingsBreadCrumb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showBreadCrumb:title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", shortTitle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/android/lgesettings/SettingsBreadCrumb;->mBackStackChangedListener:Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/lgesettings/SettingsBreadCrumb;->mBackStackChangedListener:Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;

    iget-object v0, v0, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;->mRootTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/SettingsBreadCrumb;->mBackStackChangedListener:Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;

    iget-object v0, v0, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;->mRootTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/lgesettings/SettingsBreadCrumb;->mBackStackChangedListener:Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;

    iget-object v0, v0, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;->mRootTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/lgesettings/SettingsBreadCrumb;->mBackStackChangedListener:Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;->mForced:Z

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/SettingsBreadCrumb;->mBackStackChangedListener:Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;

    iput-object p1, v0, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;->mRootTitle:Ljava/lang/CharSequence;

    .line 112
    iget-object v0, p0, Lcom/android/lgesettings/SettingsBreadCrumb;->mBackStackChangedListener:Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;

    invoke-virtual {v0}, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;->onBackStackChanged()V

    .line 114
    :cond_1
    return-void
.end method
