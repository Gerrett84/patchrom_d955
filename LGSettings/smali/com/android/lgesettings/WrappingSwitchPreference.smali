.class Lcom/android/lgesettings/WrappingSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "LocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/WrappingSwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private final mListener:Lcom/android/lgesettings/WrappingSwitchPreference$Listener;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 1194
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1174
    new-instance v0, Lcom/android/lgesettings/WrappingSwitchPreference$Listener;

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/WrappingSwitchPreference$Listener;-><init>(Lcom/android/lgesettings/WrappingSwitchPreference;Lcom/android/lgesettings/WrappingSwitchPreference$1;)V

    iput-object v0, p0, Lcom/android/lgesettings/WrappingSwitchPreference;->mListener:Lcom/android/lgesettings/WrappingSwitchPreference$Listener;

    .line 1175
    iput-object v1, p0, Lcom/android/lgesettings/WrappingSwitchPreference;->activity:Landroid/app/Activity;

    .line 1195
    const v0, 0x7f040109

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/WrappingSwitchPreference;->setWidgetLayoutResource(I)V

    .line 1196
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/WrappingSwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 1197
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/WrappingSwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 1198
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/android/lgesettings/WrappingSwitchPreference;->activity:Landroid/app/Activity;

    .line 1200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 1190
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1174
    new-instance v0, Lcom/android/lgesettings/WrappingSwitchPreference$Listener;

    invoke-direct {v0, p0, v1}, Lcom/android/lgesettings/WrappingSwitchPreference$Listener;-><init>(Lcom/android/lgesettings/WrappingSwitchPreference;Lcom/android/lgesettings/WrappingSwitchPreference$1;)V

    iput-object v0, p0, Lcom/android/lgesettings/WrappingSwitchPreference;->mListener:Lcom/android/lgesettings/WrappingSwitchPreference$Listener;

    .line 1175
    iput-object v1, p0, Lcom/android/lgesettings/WrappingSwitchPreference;->activity:Landroid/app/Activity;

    .line 1191
    return-void
.end method

.method static synthetic access$100(Lcom/android/lgesettings/WrappingSwitchPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1173
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/WrappingSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 1204
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 1205
    const-string v2, "hong"

    const-string v3, "onBindView"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    const v2, 0x7f0a020b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1209
    .local v0, checkableView:Landroid/view/View;
    const v2, 0x7f0a0228

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1210
    .local v1, mLineImage:Landroid/widget/ImageView;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1211
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 1212
    check-cast v2, Landroid/widget/Checkable;

    invoke-super {p0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1213
    instance-of v2, v0, Landroid/widget/Switch;

    if-eqz v2, :cond_0

    .line 1214
    check-cast v0, Landroid/widget/Switch;

    .end local v0           #checkableView:Landroid/view/View;
    iput-object v0, p0, Lcom/android/lgesettings/WrappingSwitchPreference;->mSwitch:Landroid/widget/Switch;

    .line 1215
    iget-object v2, p0, Lcom/android/lgesettings/WrappingSwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/lgesettings/WrappingSwitchPreference;->mListener:Lcom/android/lgesettings/WrappingSwitchPreference$Listener;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1216
    iget-object v2, p0, Lcom/android/lgesettings/WrappingSwitchPreference;->mSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/android/lgesettings/WrappingSwitchPreference$1;

    invoke-direct {v3, p0}, Lcom/android/lgesettings/WrappingSwitchPreference$1;-><init>(Lcom/android/lgesettings/WrappingSwitchPreference;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1224
    :cond_0
    return-void
.end method
