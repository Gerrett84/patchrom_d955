.class Lcom/android/lgesettings/lge/DeviceInfoLgeDSim$2;
.super Ljava/lang/Object;
.source "DeviceInfoLgeDSim.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


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
    .line 177
    iput-object p1, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim$2;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "tabId"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim$2;->this$0:Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;

    #calls: Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->updateBody()V
    invoke-static {v0}, Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;->access$100(Lcom/android/lgesettings/lge/DeviceInfoLgeDSim;)V

    .line 180
    return-void
.end method
