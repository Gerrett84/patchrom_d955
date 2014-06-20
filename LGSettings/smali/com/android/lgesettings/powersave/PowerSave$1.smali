.class Lcom/android/lgesettings/powersave/PowerSave$1;
.super Ljava/lang/Thread;
.source "PowerSave.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/powersave/PowerSave;->doPowerSave()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/powersave/PowerSave;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/powersave/PowerSave;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/lgesettings/powersave/PowerSave$1;->this$0:Lcom/android/lgesettings/powersave/PowerSave;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSave$1;->this$0:Lcom/android/lgesettings/powersave/PowerSave;

    #calls: Lcom/android/lgesettings/powersave/PowerSave;->applyPowerSaveWifi()V
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSave;->access$000(Lcom/android/lgesettings/powersave/PowerSave;)V

    .line 142
    invoke-static {}, Lcom/android/lgesettings/powersave/PowerSave;->access$100()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "KR"

    invoke-static {}, Lcom/android/lgesettings/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSave$1;->this$0:Lcom/android/lgesettings/powersave/PowerSave;

    #calls: Lcom/android/lgesettings/powersave/PowerSave;->applyPowerSaveNfc()V
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSave;->access$200(Lcom/android/lgesettings/powersave/PowerSave;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSave$1;->this$0:Lcom/android/lgesettings/powersave/PowerSave;

    #calls: Lcom/android/lgesettings/powersave/PowerSave;->applyPowerSaveSync()V
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSave;->access$300(Lcom/android/lgesettings/powersave/PowerSave;)V

    .line 146
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSave$1;->this$0:Lcom/android/lgesettings/powersave/PowerSave;

    #calls: Lcom/android/lgesettings/powersave/PowerSave;->applyPowerSaveBrightness()V
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSave;->access$400(Lcom/android/lgesettings/powersave/PowerSave;)V

    .line 148
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSave$1;->this$0:Lcom/android/lgesettings/powersave/PowerSave;

    #calls: Lcom/android/lgesettings/powersave/PowerSave;->applyPowerSaveTouch()V
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSave;->access$500(Lcom/android/lgesettings/powersave/PowerSave;)V

    .line 152
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSave$1;->this$0:Lcom/android/lgesettings/powersave/PowerSave;

    #calls: Lcom/android/lgesettings/powersave/PowerSave;->applyPowerSaveEmotionalLED()V
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSave;->access$600(Lcom/android/lgesettings/powersave/PowerSave;)V

    .line 153
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSave$1;->this$0:Lcom/android/lgesettings/powersave/PowerSave;

    #calls: Lcom/android/lgesettings/powersave/PowerSave;->applyPowerSaveCpu()V
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSave;->access$700(Lcom/android/lgesettings/powersave/PowerSave;)V

    .line 154
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSave$1;->this$0:Lcom/android/lgesettings/powersave/PowerSave;

    #calls: Lcom/android/lgesettings/powersave/PowerSave;->applyPowerSaveScreenTimeout()V
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSave;->access$800(Lcom/android/lgesettings/powersave/PowerSave;)V

    .line 155
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSave$1;->this$0:Lcom/android/lgesettings/powersave/PowerSave;

    #calls: Lcom/android/lgesettings/powersave/PowerSave;->applyPowerSaveFrontLed()V
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSave;->access$900(Lcom/android/lgesettings/powersave/PowerSave;)V

    .line 157
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSave$1;->this$0:Lcom/android/lgesettings/powersave/PowerSave;

    #calls: Lcom/android/lgesettings/powersave/PowerSave;->applyPowerSaveAutoScreenTone()V
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSave;->access$1000(Lcom/android/lgesettings/powersave/PowerSave;)V

    .line 160
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSave$1;->this$0:Lcom/android/lgesettings/powersave/PowerSave;

    invoke-virtual {v0}, Lcom/android/lgesettings/powersave/PowerSave;->updateActivationPowerControl()V

    .line 161
    return-void
.end method
