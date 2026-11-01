.class final enum Lrx/internal/operators/abstract$for;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/abstract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrx/internal/operators/abstract$for;",
        ">;",
        "Lrx/Producer;"
    }
.end annotation


# static fields
.field public static final enum INSTANCE:Lrx/internal/operators/abstract$for;

.field private static final synthetic do:[Lrx/internal/operators/abstract$for;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lrx/internal/operators/abstract$for;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrx/internal/operators/abstract$for;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/internal/operators/abstract$for;->INSTANCE:Lrx/internal/operators/abstract$for;

    const/4 v1, 0x1

    new-array v1, v1, [Lrx/internal/operators/abstract$for;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lrx/internal/operators/abstract$for;->do:[Lrx/internal/operators/abstract$for;

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

.method public static valueOf(Ljava/lang/String;)Lrx/internal/operators/abstract$for;
    .locals 1

    .line 1
    const-class v0, Lrx/internal/operators/abstract$for;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrx/internal/operators/abstract$for;

    return-object p0
.end method

.method public static values()[Lrx/internal/operators/abstract$for;
    .locals 1

    .line 1
    sget-object v0, Lrx/internal/operators/abstract$for;->do:[Lrx/internal/operators/abstract$for;

    invoke-virtual {v0}, [Lrx/internal/operators/abstract$for;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/abstract$for;

    return-object v0
.end method


# virtual methods
.method public request(J)V
    .locals 0

    return-void
.end method
