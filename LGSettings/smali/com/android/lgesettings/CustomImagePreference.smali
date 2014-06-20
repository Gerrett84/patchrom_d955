.class public Lcom/android/lgesettings/CustomImagePreference;
.super Landroid/preference/Preference;
.source "CustomImagePreference.java"


# instance fields
.field private mMultiTaskingGuide:Lcom/android/lgesettings/MultiTaskingGuide;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/lgesettings/CustomImagePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/CustomImagePreference;->mMultiTaskingGuide:Lcom/android/lgesettings/MultiTaskingGuide;

    .line 15
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/lgesettings/CustomImagePreference;->mMultiTaskingGuide:Lcom/android/lgesettings/MultiTaskingGuide;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/lgesettings/CustomImagePreference;->mMultiTaskingGuide:Lcom/android/lgesettings/MultiTaskingGuide;

    invoke-virtual {v0}, Lcom/android/lgesettings/MultiTaskingGuide;->cleanUp()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lgesettings/CustomImagePreference;->mMultiTaskingGuide:Lcom/android/lgesettings/MultiTaskingGuide;

    .line 45
    :cond_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/lgesettings/CustomImagePreference;->mMultiTaskingGuide:Lcom/android/lgesettings/MultiTaskingGuide;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/android/lgesettings/MultiTaskingGuide;

    invoke-virtual {p0}, Lcom/android/lgesettings/CustomImagePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/lgesettings/MultiTaskingGuide;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/CustomImagePreference;->mMultiTaskingGuide:Lcom/android/lgesettings/MultiTaskingGuide;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/CustomImagePreference;->mMultiTaskingGuide:Lcom/android/lgesettings/MultiTaskingGuide;

    invoke-virtual {v0}, Lcom/android/lgesettings/MultiTaskingGuide;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "parent"

    .prologue
    .line 23
    const-string v0, "kimyow"

    const-string v1, "CustomImagePreference::onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v0, p0, Lcom/android/lgesettings/CustomImagePreference;->mMultiTaskingGuide:Lcom/android/lgesettings/MultiTaskingGuide;

    if-eqz v0, :cond_0

    .line 27
    const-string v0, "kimyow"

    const-string v1, "CustomImagePreference::mMultiTaskingGuide.cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v0, p0, Lcom/android/lgesettings/CustomImagePreference;->mMultiTaskingGuide:Lcom/android/lgesettings/MultiTaskingGuide;

    invoke-virtual {v0}, Lcom/android/lgesettings/MultiTaskingGuide;->getView()Landroid/view/View;

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    .line 30
    :cond_0
    new-instance v0, Lcom/android/lgesettings/MultiTaskingGuide;

    invoke-virtual {p0}, Lcom/android/lgesettings/CustomImagePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/lgesettings/MultiTaskingGuide;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lgesettings/CustomImagePreference;->mMultiTaskingGuide:Lcom/android/lgesettings/MultiTaskingGuide;

    .line 31
    iget-object v0, p0, Lcom/android/lgesettings/CustomImagePreference;->mMultiTaskingGuide:Lcom/android/lgesettings/MultiTaskingGuide;

    invoke-virtual {v0}, Lcom/android/lgesettings/MultiTaskingGuide;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
