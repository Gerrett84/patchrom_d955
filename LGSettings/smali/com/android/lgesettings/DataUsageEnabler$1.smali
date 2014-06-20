.class Lcom/android/lgesettings/DataUsageEnabler$1;
.super Ljava/lang/Object;
.source "DataUsageEnabler.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/DataUsageEnabler;->resume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/DataUsageEnabler;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/DataUsageEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/lgesettings/DataUsageEnabler$1;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 7
    .parameter "o"
    .parameter "arg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 154
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageEnabler$1;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    #getter for: Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/lgesettings/DataUsageEnabler;->access$000(Lcom/android/lgesettings/DataUsageEnabler;)Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_0

    .line 172
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageEnabler$1;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    #getter for: Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/lgesettings/DataUsageEnabler;->access$000(Lcom/android/lgesettings/DataUsageEnabler;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mobile_data"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    move v0, v3

    .line 160
    .local v0, enabled:Z
    :goto_1
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageEnabler$1;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    #getter for: Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/lgesettings/DataUsageEnabler;->access$000(Lcom/android/lgesettings/DataUsageEnabler;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/lgesettings/DataUsageEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    .line 161
    .local v2, isAirplaneMode:Z
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageEnabler$1;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    #getter for: Lcom/android/lgesettings/DataUsageEnabler;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/lgesettings/DataUsageEnabler;->access$000(Lcom/android/lgesettings/DataUsageEnabler;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/lgesettings/DataUsageEnabler;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v1

    .line 163
    .local v1, hasReadyMobile:Z
    iget-object v5, p0, Lcom/android/lgesettings/DataUsageEnabler$1;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    iget-boolean v5, v5, Lcom/android/lgesettings/DataUsageEnabler;->fromTouch:Z

    if-nez v5, :cond_3

    if-nez v2, :cond_3

    if-ne v3, v1, :cond_3

    .line 164
    iget-object v3, p0, Lcom/android/lgesettings/DataUsageEnabler$1;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    #getter for: Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v3}, Lcom/android/lgesettings/DataUsageEnabler;->access$100(Lcom/android/lgesettings/DataUsageEnabler;)Landroid/widget/Switch;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 165
    iget-object v3, p0, Lcom/android/lgesettings/DataUsageEnabler$1;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    #getter for: Lcom/android/lgesettings/DataUsageEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v3}, Lcom/android/lgesettings/DataUsageEnabler;->access$100(Lcom/android/lgesettings/DataUsageEnabler;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 171
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/lgesettings/DataUsageEnabler$1;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    #calls: Lcom/android/lgesettings/DataUsageEnabler;->isDataRoamingDisableSwitch()V
    invoke-static {v3}, Lcom/android/lgesettings/DataUsageEnabler;->access$200(Lcom/android/lgesettings/DataUsageEnabler;)V

    goto :goto_0

    .end local v0           #enabled:Z
    .end local v1           #hasReadyMobile:Z
    .end local v2           #isAirplaneMode:Z
    :cond_2
    move v0, v4

    .line 158
    goto :goto_1

    .line 169
    .restart local v0       #enabled:Z
    .restart local v1       #hasReadyMobile:Z
    .restart local v2       #isAirplaneMode:Z
    :cond_3
    iget-object v3, p0, Lcom/android/lgesettings/DataUsageEnabler$1;->this$0:Lcom/android/lgesettings/DataUsageEnabler;

    iput-boolean v4, v3, Lcom/android/lgesettings/DataUsageEnabler;->fromTouch:Z

    goto :goto_2
.end method
