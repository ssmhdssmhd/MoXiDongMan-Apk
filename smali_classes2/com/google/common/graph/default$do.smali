.class final enum Lcom/google/common/graph/default$do;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/graph/default$do;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COMPLETE:Lcom/google/common/graph/default$do;

.field public static final enum PENDING:Lcom/google/common/graph/default$do;

.field private static final synthetic do:[Lcom/google/common/graph/default$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/common/graph/default$do;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/graph/default$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/graph/default$do;->PENDING:Lcom/google/common/graph/default$do;

    .line 2
    new-instance v1, Lcom/google/common/graph/default$do;

    const-string v3, "COMPLETE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/common/graph/default$do;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/graph/default$do;->COMPLETE:Lcom/google/common/graph/default$do;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/common/graph/default$do;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/google/common/graph/default$do;->do:[Lcom/google/common/graph/default$do;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/graph/default$do;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/graph/default$do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/graph/default$do;

    return-object p0
.end method

.method public static values()[Lcom/google/common/graph/default$do;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/graph/default$do;->do:[Lcom/google/common/graph/default$do;

    invoke-virtual {v0}, [Lcom/google/common/graph/default$do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/graph/default$do;

    return-object v0
.end method
