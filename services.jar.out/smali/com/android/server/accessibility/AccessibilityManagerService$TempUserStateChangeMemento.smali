.class Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TempUserStateChangeMemento"
.end annotation


# instance fields
.field public final mEnabledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public mIsAccessibilityEnabled:Z

.field public mIsDisplayMagnificationEnabled:Z

.field public mIsTouchExplorationEnabled:Z

.field public final mTouchExplorationGrantedServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public mUserId:I

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 1
    .parameter

    .prologue
    .line 2456
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2457
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mUserId:I

    .line 2461
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mEnabledServices:Ljava/util/Set;

    .line 2462
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mTouchExplorationGrantedServices:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2456
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    return-void
.end method


# virtual methods
.method public applyTo(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 2
    .parameter "userState"

    .prologue
    .line 2477
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mIsAccessibilityEnabled:Z

    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    .line 2478
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mIsTouchExplorationEnabled:Z

    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    .line 2479
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mIsDisplayMagnificationEnabled:Z

    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    .line 2480
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2481
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2482
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2483
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2484
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2487
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mUserId:I

    .line 2488
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mIsAccessibilityEnabled:Z

    .line 2489
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mIsTouchExplorationEnabled:Z

    .line 2490
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mIsDisplayMagnificationEnabled:Z

    .line 2491
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2492
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2493
    return-void
.end method

.method public initialize(ILcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 2
    .parameter "userId"
    .parameter "userState"

    .prologue
    .line 2466
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mUserId:I

    .line 2467
    iget-boolean v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAccessibilityEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mIsAccessibilityEnabled:Z

    .line 2468
    iget-boolean v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mIsTouchExplorationEnabled:Z

    .line 2469
    iget-boolean v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mIsDisplayMagnificationEnabled:Z

    .line 2470
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2471
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mEnabledServices:Ljava/util/Set;

    iget-object v1, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2472
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2473
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$TempUserStateChangeMemento;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v1, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2474
    return-void
.end method
