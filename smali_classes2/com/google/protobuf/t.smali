.class abstract Lcom/google/protobuf/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/t$for;,
        Lcom/google/protobuf/t$if;
    }
.end annotation


# static fields
.field private static final do:Lcom/google/protobuf/t;

.field private static final if:Lcom/google/protobuf/t;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/t$if;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/t$if;-><init>(Lcom/google/protobuf/t$do;)V

    sput-object v0, Lcom/google/protobuf/t;->do:Lcom/google/protobuf/t;

    .line 2
    new-instance v0, Lcom/google/protobuf/t$for;

    invoke-direct {v0, v1}, Lcom/google/protobuf/t$for;-><init>(Lcom/google/protobuf/t$do;)V

    sput-object v0, Lcom/google/protobuf/t;->if:Lcom/google/protobuf/t;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/t$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/t;-><init>()V

    return-void
.end method

.method public static do()Lcom/google/protobuf/t;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/t;->do:Lcom/google/protobuf/t;

    return-object v0
.end method

.method public static if()Lcom/google/protobuf/t;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/t;->if:Lcom/google/protobuf/t;

    return-object v0
.end method


# virtual methods
.method public abstract for(Ljava/lang/Object;J)V
.end method

.method public abstract new(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method

.method public abstract try(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end method
