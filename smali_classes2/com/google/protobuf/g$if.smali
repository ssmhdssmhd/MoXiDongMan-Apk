.class final enum Lcom/google/protobuf/g$if;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/g$if;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MAP:Lcom/google/protobuf/g$if;

.field public static final enum PACKED_VECTOR:Lcom/google/protobuf/g$if;

.field public static final enum SCALAR:Lcom/google/protobuf/g$if;

.field public static final enum VECTOR:Lcom/google/protobuf/g$if;

.field private static final synthetic do:[Lcom/google/protobuf/g$if;


# instance fields
.field private final isList:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/protobuf/g$if;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/protobuf/g$if;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/protobuf/g$if;->SCALAR:Lcom/google/protobuf/g$if;

    .line 2
    new-instance v1, Lcom/google/protobuf/g$if;

    const-string v3, "VECTOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/protobuf/g$if;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/google/protobuf/g$if;->VECTOR:Lcom/google/protobuf/g$if;

    .line 3
    new-instance v3, Lcom/google/protobuf/g$if;

    const-string v5, "PACKED_VECTOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/google/protobuf/g$if;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/google/protobuf/g$if;->PACKED_VECTOR:Lcom/google/protobuf/g$if;

    .line 4
    new-instance v5, Lcom/google/protobuf/g$if;

    const-string v7, "MAP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lcom/google/protobuf/g$if;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/google/protobuf/g$if;->MAP:Lcom/google/protobuf/g$if;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/protobuf/g$if;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/google/protobuf/g$if;->do:[Lcom/google/protobuf/g$if;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Lcom/google/protobuf/g$if;->isList:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/g$if;
    .locals 1

    .line 1
    const-class v0, Lcom/google/protobuf/g$if;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/g$if;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/g$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/g$if;->do:[Lcom/google/protobuf/g$if;

    invoke-virtual {v0}, [Lcom/google/protobuf/g$if;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/g$if;

    return-object v0
.end method


# virtual methods
.method public isList()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/g$if;->isList:Z

    return v0
.end method
