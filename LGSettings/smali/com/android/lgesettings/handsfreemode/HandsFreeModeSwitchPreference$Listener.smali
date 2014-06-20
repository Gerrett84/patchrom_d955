.class Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference$Listener;
.super Ljava/lang/Object;
.source "HandsFreeModeSwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference$Listener;-><init>(Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x1

    .line 38
    const-string v0, "soosin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCheced : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;

    #getter for: Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;->mHandsFreeModeInfo:Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;
    invoke-static {v0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;->access$100(Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;)Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;

    move-result-object v2

    if-ne p2, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->setDBHandsFreeModeState(I)V

    .line 40
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;

    invoke-virtual {v0, p2}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;->setChecked(Z)V

    .line 41
    if-ne p2, v1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;

    #getter for: Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;->mHandsFreeModeInfo:Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;
    invoke-static {v0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;->access$100(Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;)Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeInfo;->isEmptyCheckHandsFreeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;

    #calls: Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;->jumptoHandsFreeMode()V
    invoke-static {v0}, Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;->access$200(Lcom/android/lgesettings/handsfreemode/HandsFreeModeSwitchPreference;)V

    .line 46
    :cond_0
    return-void

    .line 39
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
