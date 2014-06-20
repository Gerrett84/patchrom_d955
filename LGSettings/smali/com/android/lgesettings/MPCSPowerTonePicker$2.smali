.class Lcom/android/lgesettings/MPCSPowerTonePicker$2;
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
    .line 85
    iput-object p1, p0, Lcom/android/lgesettings/MPCSPowerTonePicker$2;->this$0:Lcom/android/lgesettings/MPCSPowerTonePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 87
    const-string v0, "MPCSPowerTonePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save sound index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/MPCSPowerTonePicker$2;->this$0:Lcom/android/lgesettings/MPCSPowerTonePicker;

    #getter for: Lcom/android/lgesettings/MPCSPowerTonePicker;->currentPowerTonePosition:I
    invoke-static {v2}, Lcom/android/lgesettings/MPCSPowerTonePicker;->access$000(Lcom/android/lgesettings/MPCSPowerTonePicker;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :try_start_0
    const-string v0, "MPCSPowerTonePicker"

    const-string v1, "insert!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker$2;->this$0:Lcom/android/lgesettings/MPCSPowerTonePicker;

    iget-object v1, p0, Lcom/android/lgesettings/MPCSPowerTonePicker$2;->this$0:Lcom/android/lgesettings/MPCSPowerTonePicker;

    #getter for: Lcom/android/lgesettings/MPCSPowerTonePicker;->currentPowerTonePosition:I
    invoke-static {v1}, Lcom/android/lgesettings/MPCSPowerTonePicker;->access$000(Lcom/android/lgesettings/MPCSPowerTonePicker;)I

    move-result v1

    #calls: Lcom/android/lgesettings/MPCSPowerTonePicker;->writePowerOnTone(I)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/MPCSPowerTonePicker;->access$100(Lcom/android/lgesettings/MPCSPowerTonePicker;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/android/lgesettings/MPCSPowerTonePicker$2;->this$0:Lcom/android/lgesettings/MPCSPowerTonePicker;

    invoke-virtual {v0}, Lcom/android/lgesettings/MPCSPowerTonePicker;->finish()V

    .line 94
    return-void

    .line 91
    :catch_0
    move-exception v0

    goto :goto_0
.end method
