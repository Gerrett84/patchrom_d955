.class public final enum Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum Introduction:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;


# instance fields
.field public final alphaHint:I

.field public final buttonText:I

.field public final numericHint:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const v8, 0x7f080186

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 221
    new-instance v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string v1, "Introduction"

    const v3, 0x7f080b8e

    const v4, 0x7f080b8f

    const v5, 0x7f08017c

    invoke-direct/range {v0 .. v5}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 225
    new-instance v3, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string v4, "NeedToConfirm"

    const v6, 0x7f080b90

    const v7, 0x7f080b91

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 229
    new-instance v3, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string v4, "ConfirmWrong"

    const v6, 0x7f080b95

    const v7, 0x7f080b96

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 219
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    aput-object v1, v0, v10

    sput-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->$VALUES:[Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter "hintInAlpha"
    .parameter "hintInNumeric"
    .parameter "nextButtonText"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 237
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 238
    iput p3, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    .line 239
    iput p4, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    .line 240
    iput p5, p0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    .line 241
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1
    .parameter

    .prologue
    .line 219
    const-class v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->$VALUES:[Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/lgesettings/lockscreen/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object v0
.end method
