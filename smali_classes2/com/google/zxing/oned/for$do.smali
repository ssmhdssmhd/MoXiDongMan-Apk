.class final enum Lcom/google/zxing/oned/for$do;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/oned/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/oned/for$do;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FNC_1:Lcom/google/zxing/oned/for$do;

.field public static final enum ONE_DIGIT:Lcom/google/zxing/oned/for$do;

.field public static final enum TWO_DIGITS:Lcom/google/zxing/oned/for$do;

.field public static final enum UNCODABLE:Lcom/google/zxing/oned/for$do;

.field private static final synthetic do:[Lcom/google/zxing/oned/for$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/zxing/oned/for$do;

    const-string v1, "UNCODABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/oned/for$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/oned/for$do;->UNCODABLE:Lcom/google/zxing/oned/for$do;

    .line 2
    new-instance v1, Lcom/google/zxing/oned/for$do;

    const-string v3, "ONE_DIGIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/oned/for$do;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/zxing/oned/for$do;->ONE_DIGIT:Lcom/google/zxing/oned/for$do;

    .line 3
    new-instance v3, Lcom/google/zxing/oned/for$do;

    const-string v5, "TWO_DIGITS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/zxing/oned/for$do;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/zxing/oned/for$do;->TWO_DIGITS:Lcom/google/zxing/oned/for$do;

    .line 4
    new-instance v5, Lcom/google/zxing/oned/for$do;

    const-string v7, "FNC_1"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/zxing/oned/for$do;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/zxing/oned/for$do;->FNC_1:Lcom/google/zxing/oned/for$do;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/zxing/oned/for$do;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/google/zxing/oned/for$do;->do:[Lcom/google/zxing/oned/for$do;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/oned/for$do;
    .locals 1

    .line 1
    const-class v0, Lcom/google/zxing/oned/for$do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/oned/for$do;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/oned/for$do;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/oned/for$do;->do:[Lcom/google/zxing/oned/for$do;

    invoke-virtual {v0}, [Lcom/google/zxing/oned/for$do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/oned/for$do;

    return-object v0
.end method
