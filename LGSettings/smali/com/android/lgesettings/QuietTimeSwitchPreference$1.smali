.class Lcom/android/lgesettings/QuietTimeSwitchPreference$1;
.super Ljava/lang/Object;
.source "QuietTimeSwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lgesettings/QuietTimeSwitchPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/QuietTimeSwitchPreference;


# direct methods
.method constructor <init>(Lcom/android/lgesettings/QuietTimeSwitchPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/lgesettings/QuietTimeSwitchPreference$1;->this$0:Lcom/android/lgesettings/QuietTimeSwitchPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 95
    const-string v0, "QuietTimeSwitchPreference"

    const-string v1, "setOnClickListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method
