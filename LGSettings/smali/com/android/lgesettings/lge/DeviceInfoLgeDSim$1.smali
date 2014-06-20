.class Lcom/android/lgesettings/lge/DeviceInfoLgeDSim$1;
.super Ljava/lang/Object;
.source "DeviceInfoLgeDSim.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim$1;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .parameter "tag"

    .prologue
    .line 169
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim$1;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;

    #getter for: Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->access$000(Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
