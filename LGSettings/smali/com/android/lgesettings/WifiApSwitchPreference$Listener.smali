.class Lcom/android/lgesettings/WifiApSwitchPreference$Listener;
.super Ljava/lang/Object;
.source "WifiApSwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/WifiApSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/WifiApSwitchPreference;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/WifiApSwitchPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/lgesettings/WifiApSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/WifiApSwitchPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/WifiApSwitchPreference;Lcom/android/lgesettings/WifiApSwitchPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/lgesettings/WifiApSwitchPreference$Listener;-><init>(Lcom/android/lgesettings/WifiApSwitchPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 27
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 28
    .local v0, value:I
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/WifiApSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/WifiApSwitchPreference;

    #getter for: Lcom/android/lgesettings/WifiApSwitchPreference;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/lgesettings/WifiApSwitchPreference;->access$100(Lcom/android/lgesettings/WifiApSwitchPreference;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eq p2, v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/android/lgesettings/WifiApSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/WifiApSwitchPreference;

    #getter for: Lcom/android/lgesettings/WifiApSwitchPreference;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/lgesettings/WifiApSwitchPreference;->access$100(Lcom/android/lgesettings/WifiApSwitchPreference;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 33
    :cond_0
    return-void

    .line 27
    .end local v0           #value:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
