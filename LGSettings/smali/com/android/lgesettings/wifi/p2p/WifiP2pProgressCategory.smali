.class public Lcom/android/lgesettings/wifi/p2p/WifiP2pProgressCategory;
.super Lcom/android/lgesettings/ProgressCategoryBase;
.source "WifiP2pProgressCategory.java"


# static fields
.field private static mProgress:Z


# instance fields
.field private mNoDeviceFoundAdded:Z

.field private mNoDeviceFoundPreference:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/wifi/p2p/WifiP2pProgressCategory;->mProgress:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const v0, 0x7f0401b6

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pProgressCategory;->setLayoutResource(I)V

    .line 40
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/android/lgesettings/ProgressCategoryBase;->onBindView(Landroid/view/View;)V

    .line 45
    const v5, 0x7f0a0219

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 46
    .local v2, textView:Landroid/widget/TextView;
    const v5, 0x7f0a021a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 47
    .local v1, progressBar:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 48
    sget-boolean v5, Lcom/android/lgesettings/wifi/p2p/WifiP2pProgressCategory;->mProgress:Z

    if-eqz v5, :cond_4

    .line 49
    const v5, 0x7f080094

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 57
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pProgressCategory;->getPreferenceCount()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pProgressCategory;->getPreferenceCount()I

    move-result v5

    if-ne v5, v4, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-ne v5, v6, :cond_5

    :cond_1
    move v0, v4

    .line 62
    .local v0, noDeviceFound:Z
    :goto_1
    sget-boolean v5, Lcom/android/lgesettings/wifi/p2p/WifiP2pProgressCategory;->mProgress:Z

    if-eqz v5, :cond_6

    move v5, v3

    :goto_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 65
    sget-boolean v5, Lcom/android/lgesettings/wifi/p2p/WifiP2pProgressCategory;->mProgress:Z

    if-nez v5, :cond_2

    if-nez v0, :cond_7

    .line 66
    :cond_2
    iget-boolean v4, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pProgressCategory;->mNoDeviceFoundAdded:Z

    if-eqz v4, :cond_3

    .line 67
    iget-object v4, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/wifi/p2p/WifiP2pProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 68
    iput-boolean v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pProgressCategory;->mNoDeviceFoundAdded:Z

    .line 82
    :cond_3
    :goto_3
    return-void

    .line 51
    .end local v0           #noDeviceFound:Z
    :cond_4
    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    move v0, v3

    .line 57
    goto :goto_1

    .line 62
    .restart local v0       #noDeviceFound:Z
    :cond_6
    const/4 v5, 0x4

    goto :goto_2

    .line 71
    :cond_7
    iget-boolean v5, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pProgressCategory;->mNoDeviceFoundAdded:Z

    if-nez v5, :cond_3

    .line 72
    iget-object v5, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-nez v5, :cond_8

    .line 73
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pProgressCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    .line 74
    iget-object v5, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const v6, 0x7f0400ee

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 75
    iget-object v5, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const v6, 0x7f081653

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 76
    iget-object v5, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 78
    :cond_8
    iget-object v3, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/wifi/p2p/WifiP2pProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 79
    iput-boolean v4, p0, Lcom/android/lgesettings/wifi/p2p/WifiP2pProgressCategory;->mNoDeviceFoundAdded:Z

    goto :goto_3
.end method

.method public setProgress(Z)V
    .locals 0
    .parameter "progressOn"

    .prologue
    .line 86
    sput-boolean p1, Lcom/android/lgesettings/wifi/p2p/WifiP2pProgressCategory;->mProgress:Z

    .line 87
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/p2p/WifiP2pProgressCategory;->notifyChanged()V

    .line 88
    return-void
.end method
