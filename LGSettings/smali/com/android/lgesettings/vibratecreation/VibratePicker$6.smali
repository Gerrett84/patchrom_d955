.class Lcom/android/lgesettings/vibratecreation/VibratePicker$6;
.super Ljava/lang/Object;
.source "VibratePicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/vibratecreation/VibratePicker;->selectPopup(I)V
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
    .line 685
    iput-object p1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "selectedIndex"

    .prologue
    .line 690
    packed-switch p2, :pswitch_data_0

    .line 700
    :goto_0
    return-void

    .line 692
    :pswitch_0
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #calls: Lcom/android/lgesettings/vibratecreation/VibratePicker;->createRenameDialog()V
    invoke-static {v0}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$600(Lcom/android/lgesettings/vibratecreation/VibratePicker;)V

    goto :goto_0

    .line 695
    :pswitch_1
    iget-object v0, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$6;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mReNameVibrate:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$700(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/lgesettings/vibratecreation/VibratePicker;->removePopup(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$800(Lcom/android/lgesettings/vibratecreation/VibratePicker;Ljava/lang/String;)V

    goto :goto_0

    .line 690
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
