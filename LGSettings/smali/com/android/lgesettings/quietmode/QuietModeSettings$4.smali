.class Lcom/android/lgesettings/quietmode/QuietModeSettings$4;
.super Ljava/lang/Object;
.source "QuietModeSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/quietmode/QuietModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeSettings;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings$4;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings$4;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSettings;

    #setter for: Lcom/android/lgesettings/quietmode/QuietModeSettings;->isQuietModeChecked:Z
    invoke-static {v0, p2}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->access$202(Lcom/android/lgesettings/quietmode/QuietModeSettings;Z)Z

    .line 209
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings$4;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSettings;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeInfo:Lcom/android/lgesettings/quietmode/QuietModeInfo;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->access$100(Lcom/android/lgesettings/quietmode/QuietModeSettings;)Lcom/android/lgesettings/quietmode/QuietModeInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/lgesettings/quietmode/QuietModeInfo;->setSwichQuietMode(Z)V

    .line 210
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeSettings$4;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSettings;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeSettings;->mQuietModeSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeSettings;->access$300(Lcom/android/lgesettings/quietmode/QuietModeSettings;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    .line 211
    return-void
.end method
