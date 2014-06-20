.class Litectokyo/wiflus/SsbEnabler$17;
.super Ljava/lang/Object;
.source "SsbEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Litectokyo/wiflus/SsbEnabler;->setSwitchByState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Litectokyo/wiflus/SsbEnabler;


# direct methods
.method constructor <init>(Litectokyo/wiflus/SsbEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Litectokyo/wiflus/SsbEnabler$17;->this$0:Litectokyo/wiflus/SsbEnabler;

    .line 1139
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1143
    iget-object v0, p0, Litectokyo/wiflus/SsbEnabler$17;->this$0:Litectokyo/wiflus/SsbEnabler;

    #getter for: Litectokyo/wiflus/SsbEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Litectokyo/wiflus/SsbEnabler;->access$3(Litectokyo/wiflus/SsbEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1144
    return-void
.end method
