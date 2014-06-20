.class Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter$3;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;->createDreamSummaryRow(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter$3;->this$1:Lcom/android/lgesettings/DreamSettings$DreamInfoAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 493
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 494
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 495
    return v1
.end method
