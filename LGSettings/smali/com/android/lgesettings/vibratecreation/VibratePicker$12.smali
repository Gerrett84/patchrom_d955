.class Lcom/android/lgesettings/vibratecreation/VibratePicker$12;
.super Ljava/lang/Object;
.source "VibratePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/vibratecreation/VibratePicker;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/vibratecreation/VibratePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 871
    iput-object p1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$12;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 876
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$12;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mPatternName:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$100(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$12;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$300(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 878
    .local v0, vibrateTitle:Ljava/lang/String;
    const-string v1, "empty"

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$12;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;
    invoke-static {v2}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$200(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 879
    iget-object v1, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$12;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    iget-object v2, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$12;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;
    invoke-static {v2}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$200(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/vibratecreation/VibratePicker$12;->this$0:Lcom/android/lgesettings/vibratecreation/VibratePicker;

    #getter for: Lcom/android/lgesettings/vibratecreation/VibratePicker;->mVibratePatternInfo:Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;
    invoke-static {v3}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$200(Lcom/android/lgesettings/vibratecreation/VibratePicker;)Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/lgesettings/vibratecreation/VibratePatternInfo;->patternTokenizer(Ljava/lang/String;)[J

    move-result-object v2

    #calls: Lcom/android/lgesettings/vibratecreation/VibratePicker;->playVibrate([J)V
    invoke-static {v1, v2}, Lcom/android/lgesettings/vibratecreation/VibratePicker;->access$1500(Lcom/android/lgesettings/vibratecreation/VibratePicker;[J)V

    .line 880
    const-string v1, "VibratePicker"

    const-string v2, "playVibrate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_0
    return-void
.end method
