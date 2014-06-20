.class Lcom/android/lgesettings/vibratecreation/VibratePicker$1$1;
.super Ljava/lang/Object;
.source "VibratePicker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/vibratecreation/VibratePicker$1;->getHeaderView(Ljava/lang/String;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/vibratecreation/VibratePicker$1;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/vibratecreation/VibratePicker$1;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$1$1;->this$1:Lcom/android/lgesettings/vibratecreation/VibratePicker$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method
