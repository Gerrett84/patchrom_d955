.class Lcom/android/lgesettings/MPCSPowerTonePicker$1;
.super Ljava/lang/Object;
.source "MPCSPowerTonePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/MPCSPowerTonePicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/MPCSPowerTonePicker;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/MPCSPowerTonePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/lgesettings/MPCSPowerTonePicker$1;->this$0:Lcom/android/lgesettings/MPCSPowerTonePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker$1;->this$0:Lcom/android/lgesettings/MPCSPowerTonePicker;

    iget-object v0, v0, Lcom/android/lgesettings/MPCSPowerTonePicker;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 81
    iget-object v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker$1;->this$0:Lcom/android/lgesettings/MPCSPowerTonePicker;

    invoke-virtual {v0}, Lcom/android/lgesettings/MPCSPowerTonePicker;->finish()V

    .line 82
    return-void
.end method
