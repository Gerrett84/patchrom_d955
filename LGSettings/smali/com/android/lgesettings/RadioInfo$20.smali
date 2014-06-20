.class Lcom/android/lgesettings/RadioInfo$20;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 1063
    iput-object p1, p0, Lcom/android/lgesettings/RadioInfo$20;->this$0:Lcom/android/lgesettings/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/android/lgesettings/RadioInfo$20;->this$0:Lcom/android/lgesettings/RadioInfo;

    #calls: Lcom/android/lgesettings/RadioInfo;->updatePingState()V
    invoke-static {v0}, Lcom/android/lgesettings/RadioInfo;->access$4100(Lcom/android/lgesettings/RadioInfo;)V

    .line 1066
    return-void
.end method
