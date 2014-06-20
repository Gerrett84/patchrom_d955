.class public Lcom/android/lgesettings/wifi/WifiProgressCategorySetupWizard;
.super Lcom/android/lgesettings/ProgressCategoryBase;
.source "WifiProgressCategorySetupWizard.java"


# static fields
.field private static mProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/wifi/WifiProgressCategorySetupWizard;->mProgress:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/lgesettings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const v0, 0x7f0401b7

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/wifi/WifiProgressCategorySetupWizard;->setLayoutResource(I)V

    .line 41
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/android/lgesettings/ProgressCategoryBase;->onBindView(Landroid/view/View;)V

    .line 46
    const v2, 0x7f0a0219

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 47
    .local v1, textView:Landroid/widget/TextView;
    const v2, 0x7f0a021a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, progressBar:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 49
    sget-boolean v2, Lcom/android/lgesettings/wifi/WifiProgressCategorySetupWizard;->mProgress:Z

    if-eqz v2, :cond_1

    .line 50
    const v2, 0x7f080094

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 61
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/lgesettings/wifi/WifiProgressCategorySetupWizard;->mProgress:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    return-void

    .line 52
    :cond_1
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 61
    :cond_2
    const/4 v2, 0x4

    goto :goto_1
.end method

.method public setProgress(Z)V
    .locals 0
    .parameter "progressOn"

    .prologue
    .line 86
    sput-boolean p1, Lcom/android/lgesettings/wifi/WifiProgressCategorySetupWizard;->mProgress:Z

    .line 87
    invoke-virtual {p0}, Lcom/android/lgesettings/wifi/WifiProgressCategorySetupWizard;->notifyChanged()V

    .line 88
    return-void
.end method
