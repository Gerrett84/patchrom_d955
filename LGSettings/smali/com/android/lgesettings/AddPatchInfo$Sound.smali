.class public Lcom/android/lgesettings/AddPatchInfo$Sound;
.super Ljava/lang/Object;
.source "AddPatchInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/AddPatchInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Sound"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/AddPatchInfo;


# direct methods
.method public constructor <init>(Lcom/android/lgesettings/AddPatchInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/lgesettings/AddPatchInfo$Sound;->this$0:Lcom/android/lgesettings/AddPatchInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    #getter for: Lcom/android/lgesettings/AddPatchInfo;->mList:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/android/lgesettings/AddPatchInfo;->access$000(Lcom/android/lgesettings/AddPatchInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/lgesettings/AddPatchInfo$Sound;->addInfo(Ljava/util/ArrayList;)V

    .line 55
    return-void
.end method

.method private addInfo(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lgesettings/AddPatchInfo$Addinfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, mSound:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/lgesettings/AddPatchInfo$Addinfo;>;"
    new-instance v0, Lcom/android/lgesettings/AddPatchInfo$Addinfo;

    iget-object v1, p0, Lcom/android/lgesettings/AddPatchInfo$Sound;->this$0:Lcom/android/lgesettings/AddPatchInfo;

    const-string v2, "001"

    const-string v3, "hyunjeong.shin"

    const-string v4, "20130805"

    const-string v5, "Quiet mode - allowed contact list text color change - Z"

    invoke-direct/range {v0 .. v5}, Lcom/android/lgesettings/AddPatchInfo$Addinfo;-><init>(Lcom/android/lgesettings/AddPatchInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v0, Lcom/android/lgesettings/AddPatchInfo$Addinfo;

    iget-object v1, p0, Lcom/android/lgesettings/AddPatchInfo$Sound;->this$0:Lcom/android/lgesettings/AddPatchInfo;

    const-string v2, "002"

    const-string v3, "hakgyu98.kim"

    const-string v4, "20130805"

    const-string v5, "sprint vibrate pattern modify for A1"

    invoke-direct/range {v0 .. v5}, Lcom/android/lgesettings/AddPatchInfo$Addinfo;-><init>(Lcom/android/lgesettings/AddPatchInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v0, Lcom/android/lgesettings/AddPatchInfo$Addinfo;

    iget-object v1, p0, Lcom/android/lgesettings/AddPatchInfo$Sound;->this$0:Lcom/android/lgesettings/AddPatchInfo;

    const-string v2, "003"

    const-string v3, "susin.park"

    const-string v4, "20130806"

    const-string v5, "Quiet mode - notification icon & string changed"

    invoke-direct/range {v0 .. v5}, Lcom/android/lgesettings/AddPatchInfo$Addinfo;-><init>(Lcom/android/lgesettings/AddPatchInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v0, Lcom/android/lgesettings/AddPatchInfo$Addinfo;

    iget-object v1, p0, Lcom/android/lgesettings/AddPatchInfo$Sound;->this$0:Lcom/android/lgesettings/AddPatchInfo;

    const-string v2, "004"

    const-string v3, "hyunjeong.shin"

    const-string v4, "20130807"

    const-string v5, "Voice Notification - not support SMS for KDDI"

    invoke-direct/range {v0 .. v5}, Lcom/android/lgesettings/AddPatchInfo$Addinfo;-><init>(Lcom/android/lgesettings/AddPatchInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v0, Lcom/android/lgesettings/AddPatchInfo$Addinfo;

    iget-object v1, p0, Lcom/android/lgesettings/AddPatchInfo$Sound;->this$0:Lcom/android/lgesettings/AddPatchInfo;

    const-string v2, "005"

    const-string v3, "susin.park"

    const-string v4, "20130808"

    const-string v5, "Incoming call vibration create - ringer mode change issue fixed"

    invoke-direct/range {v0 .. v5}, Lcom/android/lgesettings/AddPatchInfo$Addinfo;-><init>(Lcom/android/lgesettings/AddPatchInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method
