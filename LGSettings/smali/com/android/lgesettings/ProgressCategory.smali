.class public Lcom/android/lgesettings/ProgressCategory;
.super Lcom/android/lgesettings/ProgressCategoryBase;
.source "ProgressCategory.java"


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mEmptyTextRes:I

.field private mNoDeviceFoundAdded:Z

.field private mNoDeviceFoundPreference:Landroid/preference/Preference;

.field private mProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "emptyTextRes"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/ProgressCategory;->mProgress:Z

    .line 43
    const v0, 0x7f0400fb

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/ProgressCategory;->setLayoutResource(I)V

    .line 44
    iput p3, p0, Lcom/android/lgesettings/ProgressCategory;->mEmptyTextRes:I

    .line 46
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/ProgressCategory;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 48
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    invoke-super {p0, p1}, Lcom/android/lgesettings/ProgressCategoryBase;->onBindView(Landroid/view/View;)V

    .line 53
    const v5, 0x7f0a021a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 56
    .local v1, progressBar:Landroid/view/View;
    iget-boolean v5, p0, Lcom/android/lgesettings/ProgressCategory;->mProgress:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/lgesettings/ProgressCategory;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 57
    iput-boolean v4, p0, Lcom/android/lgesettings/ProgressCategory;->mProgress:Z

    .line 61
    :cond_0
    const v5, 0x7f0a0219

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 62
    .local v2, textView:Landroid/widget/TextView;
    iget-boolean v5, p0, Lcom/android/lgesettings/ProgressCategory;->mProgress:Z

    if-eqz v5, :cond_4

    .line 63
    const v5, 0x7f080094

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 68
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/ProgressCategory;->getPreferenceCount()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/lgesettings/ProgressCategory;->getPreferenceCount()I

    move-result v5

    if-ne v5, v4, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/android/lgesettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-ne v5, v6, :cond_5

    :cond_1
    move v0, v4

    .line 70
    .local v0, noDeviceFound:Z
    :goto_1
    iget-boolean v5, p0, Lcom/android/lgesettings/ProgressCategory;->mProgress:Z

    if-eqz v5, :cond_6

    move v5, v3

    :goto_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-boolean v5, p0, Lcom/android/lgesettings/ProgressCategory;->mProgress:Z

    if-nez v5, :cond_2

    if-nez v0, :cond_7

    .line 73
    :cond_2
    iget-boolean v4, p0, Lcom/android/lgesettings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-eqz v4, :cond_3

    .line 74
    iget-object v4, p0, Lcom/android/lgesettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v4}, Lcom/android/lgesettings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 75
    iput-boolean v3, p0, Lcom/android/lgesettings/ProgressCategory;->mNoDeviceFoundAdded:Z

    .line 89
    :cond_3
    :goto_3
    return-void

    .line 65
    .end local v0           #noDeviceFound:Z
    :cond_4
    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    move v0, v3

    .line 68
    goto :goto_1

    .line 70
    .restart local v0       #noDeviceFound:Z
    :cond_6
    const/16 v5, 0x8

    goto :goto_2

    .line 78
    :cond_7
    iget-boolean v5, p0, Lcom/android/lgesettings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-nez v5, :cond_3

    .line 79
    iget-object v5, p0, Lcom/android/lgesettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-nez v5, :cond_8

    .line 80
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/lgesettings/ProgressCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/lgesettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    .line 81
    iget-object v5, p0, Lcom/android/lgesettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const v6, 0x7f0400ee

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 82
    iget-object v5, p0, Lcom/android/lgesettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    iget v6, p0, Lcom/android/lgesettings/ProgressCategory;->mEmptyTextRes:I

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 83
    iget-object v5, p0, Lcom/android/lgesettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 85
    :cond_8
    iget-object v3, p0, Lcom/android/lgesettings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/android/lgesettings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 86
    iput-boolean v4, p0, Lcom/android/lgesettings/ProgressCategory;->mNoDeviceFoundAdded:Z

    goto :goto_3
.end method

.method public setProgress(Z)V
    .locals 1
    .parameter "progressOn"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/lgesettings/ProgressCategory;->mProgress:Z

    .line 95
    if-nez p1, :cond_0

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/lgesettings/ProgressCategory;->mNoDeviceFoundAdded:Z

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/ProgressCategory;->notifyChanged()V

    .line 100
    return-void
.end method
