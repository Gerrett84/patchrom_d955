.class Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$1;
.super Ljava/lang/Object;
.source "QuietModeRadioPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;

    invoke-virtual {v0}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->onCheckBoxClicked()V

    .line 74
    iget-object v0, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;

    #getter for: Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->mTreeClickListener:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$OnTreeClickListener;
    invoke-static {v0}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;->access$300(Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;)Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$OnTreeClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeRadioPreference;

    invoke-interface {v0, v1}, Lcom/android/lgesettings/quietmode/QuietModeRadioPreference$OnTreeClickListener;->onTreeClick(Landroid/preference/Preference;)V

    .line 75
    return-void
.end method
