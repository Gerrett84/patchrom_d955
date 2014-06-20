.class Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity$1;
.super Ljava/lang/Object;
.source "HandsFreeModePreferenceActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->do_Init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity$1;->this$0:Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity$1;->this$0:Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;

    #calls: Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->do_setMenuStatus(Z)V
    invoke-static {v0, p2}, Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;->access$000(Lcom/android/lgesettings/handsfreemode/HandsFreeModePreferenceActivity;Z)V

    .line 151
    return-void
.end method
