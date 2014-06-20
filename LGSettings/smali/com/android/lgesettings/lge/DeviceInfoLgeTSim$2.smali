.class Lcom/android/lgesettings/lge/DeviceInfoLgeTSim$2;
.super Ljava/lang/Object;
.source "DeviceInfoLgeTSim.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


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
    .line 193
    iput-object p1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim$2;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "tabId"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim$2;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;

    #calls: Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->updateBody()V
    invoke-static {v0}, Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;->access$100(Lcom/android/lgesettings/lge/DeviceInfoLgeTSim;)V

    .line 196
    return-void
.end method
