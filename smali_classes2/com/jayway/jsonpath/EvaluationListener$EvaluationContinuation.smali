.class public final enum Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/jsonpath/EvaluationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EvaluationContinuation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;

.field public static final enum ABORT:Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;

.field public static final enum CONTINUE:Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;

    const-string v1, "CONTINUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;->CONTINUE:Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;

    .line 2
    new-instance v1, Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;

    const-string v3, "ABORT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;->ABORT:Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;->$VALUES:[Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;
    .locals 1

    .line 1
    const-class v0, Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;

    return-object p0
.end method

.method public static values()[Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;
    .locals 1

    .line 1
    sget-object v0, Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;->$VALUES:[Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;

    invoke-virtual {v0}, [Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jayway/jsonpath/EvaluationListener$EvaluationContinuation;

    return-object v0
.end method
