.class final Lcom/android/lgesettings/LocationSettings$SettingsObserver;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/LocationSettings;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/LocationSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/lgesettings/LocationSettings$SettingsObserver;->this$0:Lcom/android/lgesettings/LocationSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/LocationSettings;Lcom/android/lgesettings/LocationSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/lgesettings/LocationSettings$SettingsObserver;-><init>(Lcom/android/lgesettings/LocationSettings;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/lgesettings/LocationSettings$SettingsObserver;->this$0:Lcom/android/lgesettings/LocationSettings;

    #calls: Lcom/android/lgesettings/LocationSettings;->updateLocationToggles()V
    invoke-static {v0}, Lcom/android/lgesettings/LocationSettings;->access$000(Lcom/android/lgesettings/LocationSettings;)V

    .line 148
    return-void
.end method
