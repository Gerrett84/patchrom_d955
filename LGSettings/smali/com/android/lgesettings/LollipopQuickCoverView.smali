.class public Lcom/android/lgesettings/LollipopQuickCoverView;
.super Landroid/preference/PreferenceActivity;
.source "LollipopQuickCoverView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/lgesettings/LollipopQuickCoverView;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 46
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 47
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 50
    :cond_0
    const v2, 0x7f060030

    invoke-virtual {p0, v2}, Lcom/android/lgesettings/LollipopQuickCoverView;->addPreferencesFromResource(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/lgesettings/LollipopQuickCoverView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400bd

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 53
    .local v1, footer:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/lgesettings/LollipopQuickCoverView;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1, v5, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 54
    invoke-virtual {p0}, Lcom/android/lgesettings/LollipopQuickCoverView;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 55
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 59
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 60
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/lgesettings/LollipopQuickCoverView;->onBackPressed()V

    .line 62
    const/4 v1, 0x1

    .line 65
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
