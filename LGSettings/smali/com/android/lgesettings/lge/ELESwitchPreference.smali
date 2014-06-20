.class public final Lcom/android/lgesettings/lge/ELESwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "ELESwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/lge/ELESwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private final mListener:Lcom/android/lgesettings/lge/ELESwitchPreference$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Lcom/android/lgesettings/lge/ELESwitchPreference$Listener;

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/lge/ELESwitchPreference$Listener;-><init>(Lcom/android/lgesettings/lge/ELESwitchPreference;Lcom/android/lgesettings/lge/ELESwitchPreference$1;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/ELESwitchPreference;->mListener:Lcom/android/lgesettings/lge/ELESwitchPreference$Listener;

    .line 33
    iput-object v1, p0, Lcom/android/lgesettings/lge/ELESwitchPreference;->activity:Landroid/app/Activity;

    .line 45
    const v0, 0x7f040109

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/ELESwitchPreference;->setWidgetLayoutResource(I)V

    .line 47
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/android/lgesettings/lge/ELESwitchPreference;->activity:Landroid/app/Activity;

    .line 48
    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/lge/ELESwitchPreference;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/lgesettings/lge/ELESwitchPreference;->activity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 64
    const v2, 0x7f0a020b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, checkableView:Landroid/view/View;
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 66
    check-cast v2, Landroid/widget/Checkable;

    invoke-super {p0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 68
    instance-of v2, v0, Landroid/widget/Switch;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 69
    check-cast v1, Landroid/widget/Switch;

    .line 70
    .local v1, switchView:Landroid/widget/Switch;
    iget-object v2, p0, Lcom/android/lgesettings/lge/ELESwitchPreference;->mListener:Lcom/android/lgesettings/lge/ELESwitchPreference$Listener;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 73
    .end local v1           #switchView:Landroid/widget/Switch;
    :cond_0
    new-instance v2, Lcom/android/lgesettings/lge/ELESwitchPreference$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/lge/ELESwitchPreference$1;-><init>(Lcom/android/lgesettings/lge/ELESwitchPreference;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    :cond_1
    return-void
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method
