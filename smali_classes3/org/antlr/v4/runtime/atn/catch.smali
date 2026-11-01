.class public abstract Lorg/antlr/v4/runtime/atn/catch;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final break:I = 0x9

.field public static final case:I = 0x5

.field public static final catch:I = 0xa

.field public static final class:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final const:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/antlr/v4/runtime/atn/catch;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final else:I = 0x6

.field public static final for:I = 0x2

.field public static final goto:I = 0x7

.field public static final if:I = 0x1

.field public static final new:I = 0x3

.field public static final this:I = 0x8

.field public static final try:I = 0x4


# instance fields
.field public do:Landroid/support/v4/finally;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const-string v0, "INVALID"

    const-string v1, "EPSILON"

    const-string v2, "RANGE"

    const-string v3, "RULE"

    const-string v4, "PREDICATE"

    const-string v5, "ATOM"

    const-string v6, "ACTION"

    const-string v7, "SET"

    const-string v8, "NOT_SET"

    const-string v9, "WILDCARD"

    const-string v10, "PRECEDENCE"

    .line 1
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/antlr/v4/runtime/atn/catch;->class:Ljava/util/List;

    .line 2
    new-instance v0, Lorg/antlr/v4/runtime/atn/catch$do;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/atn/catch$do;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/antlr/v4/runtime/atn/catch;->const:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/finally;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "target cannot be null."

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/catch;->do:Landroid/support/v4/finally;

    return-void
.end method


# virtual methods
.method public abstract do()I
.end method

.method public for()Landroid/support/v4/sn0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public if()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract new(III)Z
.end method
