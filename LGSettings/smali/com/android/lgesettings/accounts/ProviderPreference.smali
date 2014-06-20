.class public Lcom/android/lgesettings/accounts/ProviderPreference;
.super Landroid/preference/Preference;
.source "ProviderPreference.java"


# instance fields
.field private checkedAccount:Landroid/graphics/drawable/Drawable;

.field private context:Landroid/content/Context;

.field private isExistedAccount:Z

.field private mAccountType:Ljava/lang/String;

.field private mCheckAccount:Landroid/widget/ImageView;

.field private mProviderIcon:Landroid/graphics/drawable/Drawable;

.field private mProviderIconView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)V
    .locals 1
    .parameter "context"
    .parameter "accountType"
    .parameter "icon"
    .parameter "providerName"
    .parameter "isExisted"

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 35
    iput-boolean v0, p0, Lcom/android/lgesettings/accounts/ProviderPreference;->isExistedAccount:Z

    .line 43
    iput-object p2, p0, Lcom/android/lgesettings/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    .line 44
    iput-boolean p5, p0, Lcom/android/lgesettings/accounts/ProviderPreference;->isExistedAccount:Z

    .line 46
    iput-object p3, p0, Lcom/android/lgesettings/accounts/ProviderPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/lgesettings/accounts/ProviderPreference;->setPersistent(Z)V

    .line 48
    invoke-virtual {p0, p4}, Lcom/android/lgesettings/accounts/ProviderPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    const v0, 0x7f04010e

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/accounts/ProviderPreference;->setLayoutResource(I)V

    .line 51
    iput-object p1, p0, Lcom/android/lgesettings/accounts/ProviderPreference;->context:Landroid/content/Context;

    .line 52
    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/lgesettings/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 56
    const v0, 0x7f0a023b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/lgesettings/accounts/ProviderPreference;->mProviderIconView:Landroid/widget/ImageView;

    .line 57
    iget-object v0, p0, Lcom/android/lgesettings/accounts/ProviderPreference;->mProviderIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/lgesettings/accounts/ProviderPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    iget-boolean v0, p0, Lcom/android/lgesettings/accounts/ProviderPreference;->isExistedAccount:Z

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/lgesettings/accounts/ProviderPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lgesettings/accounts/ProviderPreference;->checkedAccount:Landroid/graphics/drawable/Drawable;

    .line 62
    const v0, 0x7f0a023c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/lgesettings/accounts/ProviderPreference;->mCheckAccount:Landroid/widget/ImageView;

    .line 63
    iget-object v0, p0, Lcom/android/lgesettings/accounts/ProviderPreference;->mCheckAccount:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/lgesettings/accounts/ProviderPreference;->checkedAccount:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    :cond_0
    return-void
.end method
