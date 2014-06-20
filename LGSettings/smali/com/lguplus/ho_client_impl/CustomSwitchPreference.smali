.class public Lcom/lguplus/ho_client_impl/CustomSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "CustomSwitchPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 18
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/lguplus/ho_client_impl/CustomSwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 19
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/lguplus/ho_client_impl/CustomSwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/lguplus/ho_client_impl/CustomSwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 14
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/lguplus/ho_client_impl/CustomSwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 26
    const v1, 0x20e007c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 27
    .local v0, checkableView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 28
    check-cast v1, Landroid/widget/Checkable;

    invoke-super {p0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 29
    new-instance v1, Lcom/lguplus/ho_client_impl/CustomSwitchPreference$1;

    invoke-direct {v1, p0}, Lcom/lguplus/ho_client_impl/CustomSwitchPreference$1;-><init>(Lcom/lguplus/ho_client_impl/CustomSwitchPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method
