.class Lcom/android/lgesettings/AirplaneModeEnabler_VZW$7;
.super Ljava/lang/Object;
.source "AirplaneModeEnabler_VZW.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->setSwitch(Landroid/widget/Switch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$7;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 266
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$7;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    iget-boolean v0, v0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->csActive:Z

    if-ne v2, v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$7;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    #getter for: Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->access$500(Lcom/android/lgesettings/AirplaneModeEnabler_VZW;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080ed2

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 275
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 276
    iget-object v0, p0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW$7;->this$0:Lcom/android/lgesettings/AirplaneModeEnabler_VZW;

    iput-boolean v2, v0, Lcom/android/lgesettings/AirplaneModeEnabler_VZW;->fromTouch:Z

    .line 280
    :cond_1
    return v3
.end method
