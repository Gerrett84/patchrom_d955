.class public final Lcom/android/lgesettings/lge/ScreenSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "ScreenSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/lge/ScreenSwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private final mListener:Lcom/android/lgesettings/lge/ScreenSwitchPreference$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Lcom/android/lgesettings/lge/ScreenSwitchPreference$Listener;

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/lge/ScreenSwitchPreference$Listener;-><init>(Lcom/android/lgesettings/lge/ScreenSwitchPreference;Lcom/android/lgesettings/lge/ScreenSwitchPreference$1;)V

    iput-object v0, p0, Lcom/android/lgesettings/lge/ScreenSwitchPreference;->mListener:Lcom/android/lgesettings/lge/ScreenSwitchPreference$Listener;

    .line 33
    iput-object v1, p0, Lcom/android/lgesettings/lge/ScreenSwitchPreference;->activity:Landroid/app/Activity;

    .line 48
    const v0, 0x7f040109

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/lge/ScreenSwitchPreference;->setWidgetLayoutResource(I)V

    .line 50
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/android/lgesettings/lge/ScreenSwitchPreference;->activity:Landroid/app/Activity;

    .line 52
    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/lge/ScreenSwitchPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/lge/ScreenSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 68
    const v2, 0x7f0a020b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, checkableView:Landroid/view/View;
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 70
    check-cast v2, Landroid/widget/Checkable;

    invoke-super {p0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 72
    instance-of v2, v0, Landroid/widget/Switch;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 73
    check-cast v1, Landroid/widget/Switch;

    .line 74
    .local v1, switchView:Landroid/widget/Switch;
    iget-object v2, p0, Lcom/android/lgesettings/lge/ScreenSwitchPreference;->mListener:Lcom/android/lgesettings/lge/ScreenSwitchPreference$Listener;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 77
    .end local v1           #switchView:Landroid/widget/Switch;
    :cond_0
    new-instance v2, Lcom/android/lgesettings/lge/ScreenSwitchPreference$1;

    invoke-direct {v2, p0}, Lcom/android/lgesettings/lge/ScreenSwitchPreference$1;-><init>(Lcom/android/lgesettings/lge/ScreenSwitchPreference;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    :cond_1
    return-void
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method
