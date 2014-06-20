.class Lcom/android/lgesettings/vibratecreation/VibratePicker$7;
.super Ljava/lang/Object;
.source "VibratePicker.java"

# interfaces
.implements Lcom/android/lgesettings/quietmode/ByteLengthFilter$OnMaxLengthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/vibratecreation/VibratePicker;->createRenameDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/vibratecreation/VibratePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 717
    iput-object p1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$7;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMaxLength()V
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$7;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #calls: Lcom/android/lgesettings/vibratecreation/VibratePicker;->maxlengthEditToast()V
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$900(Lcom/android/lgesettings/vibratecreation/VibratePicker;)V

    .line 721
    return-void
.end method
