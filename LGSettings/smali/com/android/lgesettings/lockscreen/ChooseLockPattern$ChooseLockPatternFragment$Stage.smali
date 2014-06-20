.class public final enum Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum AlreadyExisting:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ChoiceConfirmed:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ChoiceTooShort:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum FirstChoiceValid:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum HelpScreen:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum Introduction:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;


# instance fields
.field final footerMessage:I

.field final headerMessage:I

.field final leftMode:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field final patternEnabled:Z

.field final rightMode:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 343
    new-instance v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "Introduction"

    const/4 v2, 0x0

    const v3, 0x7f08053e

    sget-object v4, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 347
    new-instance v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "HelpScreen"

    const/4 v2, 0x1

    const v3, 0x7f080551

    sget-object v4, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 350
    new-instance v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "ChoiceTooShort"

    const/4 v2, 0x2

    const v3, 0x7f080541

    sget-object v4, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 355
    new-instance v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "AlreadyExisting"

    const/4 v2, 0x3

    const v3, 0x7f080f97

    sget-object v4, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->AlreadyExisting:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 360
    new-instance v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "FirstChoiceValid"

    const/4 v2, 0x4

    const v3, 0x7f080542

    sget-object v4, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 363
    new-instance v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "NeedToConfirm"

    const/4 v2, 0x5

    const v3, 0x7f080543

    sget-object v4, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 367
    new-instance v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "ConfirmWrong"

    const/4 v2, 0x6

    const v3, 0x7f08053c

    sget-object v4, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 371
    new-instance v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "ChoiceConfirmed"

    const/4 v2, 0x7

    const v3, 0x7f080544

    sget-object v4, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 341
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->AlreadyExisting:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->$VALUES:[Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "headerMessage"
    .parameter "leftMode"
    .parameter "rightMode"
    .parameter "footerMessage"
    .parameter "patternEnabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;",
            "Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 386
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 387
    iput p3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    .line 388
    iput-object p4, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 389
    iput-object p5, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 390
    iput p6, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    .line 391
    iput-boolean p7, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    .line 392
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1
    .parameter

    .prologue
    .line 341
    const-class v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    .prologue
    .line 341
    sget-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->$VALUES:[Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/lgesettings/lockscreen/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method
