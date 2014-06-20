.class Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$1;
.super Ljava/lang/Object;
.source "QuietModeScheduledSwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference$1;->this$0:Lcom/android/lgesettings/quietmode/QuietModeScheduledSwitchPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 128
    const-string v0, "QuietModeScheduledSwitchPreference"

    const-string v1, "scheduled switch preference : setOnClickListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method
