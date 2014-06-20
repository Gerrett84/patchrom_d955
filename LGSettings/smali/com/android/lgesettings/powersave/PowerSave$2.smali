.class Lcom/android/lgesettings/powersave/PowerSave$2;
.super Ljava/lang/Thread;
.source "PowerSave.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/powersave/PowerSave;->doRestore()V
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
    .line 1107
    iput-object p1, p0, Lcom/android/lgesettings/powersave/PowerSave$2;->this$0:Lcom/android/lgesettings/powersave/PowerSave;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1110
    const-string v0, "PowerSave"

    const-string v1, "Start restore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSave$2;->this$0:Lcom/android/lgesettings/powersave/PowerSave;

    #calls: Lcom/android/lgesettings/powersave/PowerSave;->doSync()V
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSave;->access$1100(Lcom/android/lgesettings/powersave/PowerSave;)V

    .line 1120
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSave$2;->this$0:Lcom/android/lgesettings/powersave/PowerSave;

    #calls: Lcom/android/lgesettings/powersave/PowerSave;->doBrightness()V
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSave;->access$1200(Lcom/android/lgesettings/powersave/PowerSave;)V

    .line 1121
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSave$2;->this$0:Lcom/android/lgesettings/powersave/PowerSave;

    #calls: Lcom/android/lgesettings/powersave/PowerSave;->doTouch()V
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSave;->access$1300(Lcom/android/lgesettings/powersave/PowerSave;)V

    .line 1122
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSave$2;->this$0:Lcom/android/lgesettings/powersave/PowerSave;

    #calls: Lcom/android/lgesettings/powersave/PowerSave;->doScreenTimeout()V
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSave;->access$1400(Lcom/android/lgesettings/powersave/PowerSave;)V

    .line 1123
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSave$2;->this$0:Lcom/android/lgesettings/powersave/PowerSave;

    #calls: Lcom/android/lgesettings/powersave/PowerSave;->doFrontLed()V
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSave;->access$1500(Lcom/android/lgesettings/powersave/PowerSave;)V

    .line 1124
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSave$2;->this$0:Lcom/android/lgesettings/powersave/PowerSave;

    #calls: Lcom/android/lgesettings/powersave/PowerSave;->doCpu()V
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSave;->access$1600(Lcom/android/lgesettings/powersave/PowerSave;)V

    .line 1128
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSave$2;->this$0:Lcom/android/lgesettings/powersave/PowerSave;

    #calls: Lcom/android/lgesettings/powersave/PowerSave;->doEmotionalLED()V
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSave;->access$1700(Lcom/android/lgesettings/powersave/PowerSave;)V

    .line 1130
    iget-object v0, p0, Lcom/android/lgesettings/powersave/PowerSave$2;->this$0:Lcom/android/lgesettings/powersave/PowerSave;

    #calls: Lcom/android/lgesettings/powersave/PowerSave;->doAutoScreenTone()V
    invoke-static {v0}, Lcom/android/lgesettings/powersave/PowerSave;->access$1800(Lcom/android/lgesettings/powersave/PowerSave;)V

    .line 1131
    return-void
.end method
