.class public Lcom/android/lgesettings/hotkey/AppListItemWrapper;
.super Ljava/lang/Object;
.source "AppListItemWrapper.java"


# instance fields
.field base:Landroid/view/View;

.field icon:Landroid/widget/ImageView;

.field label:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "base"

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/android/lgesettings/hotkey/AppListItemWrapper;->label:Landroid/widget/TextView;

    .line 13
    iput-object v0, p0, Lcom/android/lgesettings/hotkey/AppListItemWrapper;->icon:Landroid/widget/ImageView;

    .line 17
    iput-object p1, p0, Lcom/android/lgesettings/hotkey/AppListItemWrapper;->base:Landroid/view/View;

    .line 18
    return-void
.end method


# virtual methods
.method getIcon()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/lgesettings/hotkey/AppListItemWrapper;->icon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/android/lgesettings/hotkey/AppListItemWrapper;->base:Landroid/view/View;

    const v1, 0x7f0a004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/lgesettings/hotkey/AppListItemWrapper;->icon:Landroid/widget/ImageView;

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/hotkey/AppListItemWrapper;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method getLabel()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/lgesettings/hotkey/AppListItemWrapper;->label:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/android/lgesettings/hotkey/AppListItemWrapper;->base:Landroid/view/View;

    const v1, 0x7f0a0135

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lgesettings/hotkey/AppListItemWrapper;->label:Landroid/widget/TextView;

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/hotkey/AppListItemWrapper;->label:Landroid/widget/TextView;

    return-object v0
.end method
