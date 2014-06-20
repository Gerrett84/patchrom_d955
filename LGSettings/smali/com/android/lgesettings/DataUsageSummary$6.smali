.class Lcom/android/lgesettings/DataUsageSummary$6;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/android/lgesettings/DataUsageSummary$6;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "tabId"

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/android/lgesettings/DataUsageSummary$6;->this$0:Lcom/android/lgesettings/DataUsageSummary;

    #calls: Lcom/android/lgesettings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/lgesettings/DataUsageSummary;->access$400(Lcom/android/lgesettings/DataUsageSummary;)V

    .line 1041
    return-void
.end method
