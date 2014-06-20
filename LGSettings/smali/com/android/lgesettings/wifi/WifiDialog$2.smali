.class Lcom/android/lgesettings/wifi/WifiDialog$2;
.super Ljava/lang/Object;
.source "WifiDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/wifi/WifiDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/wifi/WifiDialog;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/wifi/WifiDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/lgesettings/wifi/WifiDialog$2;->this$0:Lcom/android/lgesettings/wifi/WifiDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 320
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/lgesettings/wifi/WifiDialog$2;->this$0:Lcom/android/lgesettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/lgesettings/wifi/WifiDialog;->hideExpandableNotificationGuide()V

    .line 326
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
