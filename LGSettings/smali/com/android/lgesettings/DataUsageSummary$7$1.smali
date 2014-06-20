.class Lcom/android/lgesettings/DataUsageSummary$7$1;
.super Ljava/util/TimerTask;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/DataUsageSummary$7;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lgesettings/DataUsageSummary$7;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DataUsageSummary$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1574
    iput-object p1, p0, Lcom/android/lgesettings/DataUsageSummary$7$1;->this$1:Lcom/android/lgesettings/DataUsageSummary$7;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1576
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/lgesettings/DataUsageSummary;->aboidBlink:Z

    .line 1577
    return-void
.end method
