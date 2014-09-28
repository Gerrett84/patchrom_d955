.class Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView$2;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->showNavCueView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;)V
    .locals 0
    .parameter

    .prologue
    .line 5604
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView$2;->this$2:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 5607
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView$2;->this$2:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView$2;->this$2:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    if-ge v2, v3, :cond_0

    move v0, v1

    .line 5608
    .local v0, isPortrait:Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView$2;->this$2:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->mNavShowingCueView:Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;->access$3900(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager;)Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;

    move-result-object v2

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->setEnvViaRotation(ZI)V
    invoke-static {v2, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;->access$4000(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManager$NavShowingCueView;ZI)V

    .line 5609
    return-void

    .line 5607
    .end local v0           #isPortrait:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
