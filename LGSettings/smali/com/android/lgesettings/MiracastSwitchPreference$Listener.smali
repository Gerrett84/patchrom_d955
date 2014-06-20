.class Lcom/android/lgesettings/MiracastSwitchPreference$Listener;
.super Ljava/lang/Object;
.source "MiracastSwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/MiracastSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/MiracastSwitchPreference;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/MiracastSwitchPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/lgesettings/MiracastSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/MiracastSwitchPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/MiracastSwitchPreference;Lcom/android/lgesettings/MiracastSwitchPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/lgesettings/MiracastSwitchPreference$Listener;-><init>(Lcom/android/lgesettings/MiracastSwitchPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 46
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 47
    .local v0, value:I
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/MiracastSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/MiracastSwitchPreference;

    #getter for: Lcom/android/lgesettings/MiracastSwitchPreference;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/lgesettings/MiracastSwitchPreference;->access$100(Lcom/android/lgesettings/MiracastSwitchPreference;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eq p2, v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/android/lgesettings/MiracastSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/MiracastSwitchPreference;

    #getter for: Lcom/android/lgesettings/MiracastSwitchPreference;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/lgesettings/MiracastSwitchPreference;->access$100(Lcom/android/lgesettings/MiracastSwitchPreference;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 52
    :cond_0
    return-void

    .line 46
    .end local v0           #value:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
