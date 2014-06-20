.class Lcom/android/lgesettings/WrappingSwitchPreference$Listener;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/WrappingSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lgesettings/WrappingSwitchPreference;


# direct methods
.method private constructor <init>(Lcom/android/lgesettings/WrappingSwitchPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/android/lgesettings/WrappingSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/WrappingSwitchPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lgesettings/WrappingSwitchPreference;Lcom/android/lgesettings/WrappingSwitchPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1178
    invoke-direct {p0, p1}, Lcom/android/lgesettings/WrappingSwitchPreference$Listener;-><init>(Lcom/android/lgesettings/WrappingSwitchPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/android/lgesettings/WrappingSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/WrappingSwitchPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #calls: Lcom/android/lgesettings/WrappingSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v0, v1}, Lcom/android/lgesettings/WrappingSwitchPreference;->access$100(Lcom/android/lgesettings/WrappingSwitchPreference;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1182
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1186
    :goto_1
    return-void

    .line 1182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1185
    :cond_1
    iget-object v0, p0, Lcom/android/lgesettings/WrappingSwitchPreference$Listener;->this$0:Lcom/android/lgesettings/WrappingSwitchPreference;

    invoke-virtual {v0, p2}, Lcom/android/lgesettings/WrappingSwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method
