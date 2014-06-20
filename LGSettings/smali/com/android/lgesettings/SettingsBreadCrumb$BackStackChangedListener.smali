.class Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;
.super Ljava/lang/Object;
.source "SettingsBreadCrumb.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/SettingsBreadCrumb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackStackChangedListener"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field public mForced:Z

.field public mRootTitle:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/lgesettings/SettingsBreadCrumb;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/SettingsBreadCrumb;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;->this$0:Lcom/android/lgesettings/SettingsBreadCrumb;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;->mRootTitle:Ljava/lang/CharSequence;

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;->mForced:Z

    .line 132
    check-cast p2, Landroid/app/Activity;

    .end local p2
    iput-object p2, p0, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;->mActivity:Landroid/app/Activity;

    .line 133
    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 137
    const-string v4, "SettingsBreadCrumb"

    const-string v5, "onBackStackChanged"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v4, p0, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;->this$0:Lcom/android/lgesettings/SettingsBreadCrumb;

    invoke-virtual {v4}, Lcom/android/lgesettings/SettingsBreadCrumb;->get()Landroid/view/ViewGroup;

    move-result-object v4

    if-nez v4, :cond_0

    .line 172
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v4, p0, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;->this$0:Lcom/android/lgesettings/SettingsBreadCrumb;

    #getter for: Lcom/android/lgesettings/SettingsBreadCrumb;->mFragmentManager:Landroid/app/FragmentManager;
    invoke-static {v4}, Lcom/android/lgesettings/SettingsBreadCrumb;->access$000(Lcom/android/lgesettings/SettingsBreadCrumb;)Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 142
    .local v0, numEntries:I
    iget-object v4, p0, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0a0183

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 143
    .local v2, upIcon:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0a0184

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 144
    .local v1, tv:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0a0182

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 145
    .local v3, upicon_title:Landroid/view/View;
    if-lez v0, :cond_3

    .line 146
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    iget-object v4, p0, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;->this$0:Lcom/android/lgesettings/SettingsBreadCrumb;

    #getter for: Lcom/android/lgesettings/SettingsBreadCrumb;->mTitle:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/lgesettings/SettingsBreadCrumb;->access$100(Lcom/android/lgesettings/SettingsBreadCrumb;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;->this$0:Lcom/android/lgesettings/SettingsBreadCrumb;

    #getter for: Lcom/android/lgesettings/SettingsBreadCrumb;->mTitle:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/lgesettings/SettingsBreadCrumb;->access$100(Lcom/android/lgesettings/SettingsBreadCrumb;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 148
    iget-object v4, p0, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;->this$0:Lcom/android/lgesettings/SettingsBreadCrumb;

    #getter for: Lcom/android/lgesettings/SettingsBreadCrumb;->mTitle:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/lgesettings/SettingsBreadCrumb;->access$100(Lcom/android/lgesettings/SettingsBreadCrumb;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v4, p0, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;->this$0:Lcom/android/lgesettings/SettingsBreadCrumb;

    const-string v5, ""

    #setter for: Lcom/android/lgesettings/SettingsBreadCrumb;->mTitle:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/lgesettings/SettingsBreadCrumb;->access$102(Lcom/android/lgesettings/SettingsBreadCrumb;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    :goto_1
    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-virtual {v3, v7}, Landroid/view/View;->setClickable(Z)V

    .line 159
    new-instance v4, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener$1;

    invoke-direct {v4, p0}, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener$1;-><init>(Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    :goto_2
    iput-boolean v6, p0, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;->mForced:Z

    goto :goto_0

    .line 151
    :cond_1
    iget-boolean v4, p0, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;->mForced:Z

    if-ne v4, v7, :cond_2

    .line 152
    iget-object v4, p0, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;->mRootTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 154
    :cond_2
    iget-object v4, p0, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;->this$0:Lcom/android/lgesettings/SettingsBreadCrumb;

    #getter for: Lcom/android/lgesettings/SettingsBreadCrumb;->mFragmentManager:Landroid/app/FragmentManager;
    invoke-static {v4}, Lcom/android/lgesettings/SettingsBreadCrumb;->access$000(Lcom/android/lgesettings/SettingsBreadCrumb;)Landroid/app/FragmentManager;

    move-result-object v4

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 166
    :cond_3
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    iget-object v4, p0, Lcom/android/lgesettings/SettingsBreadCrumb$BackStackChangedListener;->mRootTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    invoke-virtual {v3, v6}, Landroid/view/View;->setClickable(Z)V

    goto :goto_2
.end method
