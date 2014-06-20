.class Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference$1;
.super Ljava/lang/Object;
.source "QuietModeSwitchForActivationNowPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeSwitchForActivationNowPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 75
    const-string v0, "QuietModeSwitchPreferenceForActivationNow"

    const-string v1, "setOnClickListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method
