.class Lcom/android/lgesettings/RadioInfo$18;
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
    .line 1043
    iput-object p1, p0, Lcom/android/lgesettings/RadioInfo$18;->this$0:Lcom/android/lgesettings/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/android/lgesettings/RadioInfo$18;->this$0:Lcom/android/lgesettings/RadioInfo;

    #getter for: Lcom/android/lgesettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/lgesettings/RadioInfo;->access$1800(Lcom/android/lgesettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v0, p0, Lcom/android/lgesettings/RadioInfo$18;->this$0:Lcom/android/lgesettings/RadioInfo;

    #getter for: Lcom/android/lgesettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/lgesettings/RadioInfo;->access$1800(Lcom/android/lgesettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    .line 1046
    iget-object v0, p0, Lcom/android/lgesettings/RadioInfo$18;->this$0:Lcom/android/lgesettings/RadioInfo;

    #calls: Lcom/android/lgesettings/RadioInfo;->updateDnsCheckState()V
    invoke-static {v0}, Lcom/android/lgesettings/RadioInfo;->access$4000(Lcom/android/lgesettings/RadioInfo;)V

    .line 1047
    return-void

    .line 1045
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
