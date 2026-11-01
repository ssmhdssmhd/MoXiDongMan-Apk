.class final enum Lcom/google/common/hash/catch$for;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/hash/Funnel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/catch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/hash/catch$for;",
        ">;",
        "Lcom/google/common/hash/Funnel<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INSTANCE:Lcom/google/common/hash/catch$for;

.field private static final synthetic do:[Lcom/google/common/hash/catch$for;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/hash/catch$for;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/catch$for;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/hash/catch$for;->INSTANCE:Lcom/google/common/hash/catch$for;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/common/hash/catch$for;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lcom/google/common/hash/catch$for;->do:[Lcom/google/common/hash/catch$for;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/catch$for;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/hash/catch$for;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/hash/catch$for;

    return-object p0
.end method

.method public static values()[Lcom/google/common/hash/catch$for;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/hash/catch$for;->do:[Lcom/google/common/hash/catch$for;

    invoke-virtual {v0}, [Lcom/google/common/hash/catch$for;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/catch$for;

    return-object v0
.end method


# virtual methods
.method public funnel(Ljava/lang/Long;Lcom/google/common/hash/PrimitiveSink;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/google/common/hash/PrimitiveSink;->putLong(J)Lcom/google/common/hash/PrimitiveSink;

    return-void
.end method

.method public bridge synthetic funnel(Ljava/lang/Object;Lcom/google/common/hash/PrimitiveSink;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/catch$for;->funnel(Ljava/lang/Long;Lcom/google/common/hash/PrimitiveSink;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Funnels.longFunnel()"

    return-object v0
.end method
