.class Lcom/android/lgesettings/lge/DeviceInfoLgeTSim$1;
.super Ljava/lang/Object;
.source "DeviceInfoLgeTSim.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim$1;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .parameter "tag"

    .prologue
    .line 185
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim$1;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;

    #getter for: Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->access$000(Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
